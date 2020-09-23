/*

README:

The program patches the .strtab section of an ELF relocatable module
by replacing certain escape sequences with the characters they represent.

CodeWarrior's C++ name mangling scheme may produce linkage names that
are not valid identifiers in the .s files provided to the 
assembler, so we cannot use the mangled names directly as labels in the .s file.
This interferes with our workflow because we would like
to be able to link with compiled C++ modules and add accurate symbols to them 
before they have been decompiled. To deal with this issue, for each .s file
we replace any illegal characters in the mangled name with valid escape sequences, 
assemble the .s file, then postprocess the .o object code with this program to restore
the correct symbol name.

*/

/*

Receive the .o filename in argv
Open (rb+), load, and validate the ELF file, then fix the endianness
  of the ELF header, section headers, and symbol tables
  
load the symbol table and the string table into separate buffers.
Use sh_size to get the sizes, and record the size of the .strtab 

For each symbol, follow the st_name offset into the .strtab section and read in the
string. Get the length of the string as well

replace each instance of the pre-defined escape sequences with their associated
characters. 

Write the string table back into the ELF .strtab at the same offset it was found.
Use fseek(fp, offset, SEEK_SET), then fwrite(strTab, 1, strTabSz, fp)

Since any transformation will always shorten the string, just fill in the 
gap created at the end of the buffer with NUL bytes.

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <inttypes.h>
#include "elf.h"
#include <ctype.h>

typedef uint64_t u64;
typedef int64_t s64;
typedef uint32_t u32;
typedef int32_t s32;
typedef uint16_t u16;
typedef int16_t s16;
typedef uint8_t u8;
typedef int8_t s8;

typedef struct elfstruct
{
	s32 id;				  	  // +0x0, module ID
	char *fileBuf;			  // +0x4, ptr to file contents buffer
	Elf32_Ehdr *ehdr;		  // +0x8, ptr to ELF header
	Elf32_Shdr *shStrTabShdr; // +0xC, ptr to shdr for .shstrtab
	Elf32_Shdr *symTabShdr;   // +0x10, ptr to shdr for .symtab
	Elf32_Shdr *strTabShdr;	  // +0x14, ptr to shdr for .strtab
	u32 *hashTable; 		  // +0x18, ptr to symbol hash table
} ElfStruct;

typedef struct escapemap
{
    const char *escapeSeq;
    const char *replaceChar;
} EscapeMap;

EscapeMap escapeMaps[] = 
{
    { "____esc_lt_", "<" },
    { "____esc_gt_", ">" },
    { "____esc_cm_", "," },
    { "____esc_bs_", "\\" },
    { "____esc_ds_", "$" },
    { "____esc_at_", "@" }
};

// Thanks to jmucchiello at https://stackoverflow.com/questions/779875/what-function-is-to-replace-a-substring-from-a-string-in-c
// You must free the result if result is non-NULL.
char *str_replace(const char *orig, const char *rep, const char *with) {
    char *result; // the return string
    const char *ins;    // the next insert point
    char *tmp;    // varies
    int len_rep;  // length of rep (the string to remove)
    int len_with; // length of with (the string to replace rep with)
    int len_front; // distance between rep and end of last rep
    int count;    // number of replacements

    // sanity checks and initialization
    if (!orig || !rep)
        return NULL;
    len_rep = strlen(rep);
    if (len_rep == 0)
        return NULL; // empty rep causes infinite loop during count
    if (!with)
        with = "";
    len_with = strlen(with);

    // count the number of replacements needed
    ins = orig;
    for (count = 0; (tmp = strstr(ins, rep)); ++count) {
        ins = tmp + len_rep;
    }

    tmp = result = malloc(strlen(orig) + (len_with - len_rep) * count + 1);

    if (!result)
        return NULL;

    // first time through the loop, all the variable are set correctly
    // from here on,
    //    tmp points to the end of the result string
    //    ins points to the next occurrence of rep in orig
    //    orig points to the remainder of orig after "end of rep"
    while (count--) {
        ins = strstr(orig, rep);
        len_front = ins - orig;
        tmp = strncpy(tmp, orig, len_front) + len_front; // copy the front, before replacement (or the substring between replacements)
        tmp = strcpy(tmp, with) + len_with; // copy in the replacement at the correct position
        orig += len_front + len_rep; // move to next "end of rep"
    }
    strcpy(tmp, orig);
    return result;
}

// switch endianness of 32-bit word
u32 Swap32(u32 word)
{
	return word >> 24 | 
        (word >> 8 & 0xff00) | 
		(word << 8 & 0xff0000) |
		word << 24; 
}

u16 Swap16(u16 hword)
{
	return hword >> 8 | hword << 8;
}

Elf32_Shdr *GetSection(const ElfStruct *elf, s32 shndx)
{
	return (Elf32_Shdr *)(elf->fileBuf + elf->ehdr->e_shoff + 
				elf->ehdr->e_shentsize * shndx);
}

// If this ELF has a .shstrtab section, get the ELF section
// name at the specified offset into the section header string table
char *GetSectionName(const ElfStruct *elf, u32 offset)
{
	if (offset && elf->shStrTabShdr) {
		return elf->fileBuf + elf->shStrTabShdr->sh_offset + offset;
	}
	return NULL;
}

// If this ELF has a .strtab section, get the ELF symbol name 
// at the specified offset into the string table
char *GetName(const ElfStruct *elf, u32 offset)
{
	if (offset && elf->strTabShdr) {
		return elf->fileBuf + elf->strTabShdr->sh_offset + offset;
	}
	return NULL;
}

// If this ELF has a .symtab section, get the ELF symbol at the
// specified index of the symbol table
Elf32_Sym *GetSymbol(const ElfStruct *elf, u32 symTabIndex)
{
	if (elf->symTabShdr) {
		return (Elf32_Sym *)(elf->fileBuf + 
					elf->symTabShdr->sh_offset) + symTabIndex;
	}
	return NULL;
}

u32 GetNumberOfSymbols(const ElfStruct *elf)
{
    return elf->symTabShdr->sh_size / sizeof(Elf32_Sym);
}

// Write padBytes 0s to fp
void Padding(FILE *fp, u32 padBytes)
{
	const u8 pad = 0;
	for (u32 i = 0; i < padBytes; i++) {
		if (fwrite(&pad, sizeof(u8), 1, fp) != 1) {
			fprintf(stderr, "ERROR: ins. disk space\n");
			exit(7);
		}
	}	
}

// Write bufSize bytes from the buffer referenced by bufPtr to fp.
void Write(FILE *fp, const void *bufPtr, size_t bufSize)
{
	if (bufSize) {
		if (fwrite(bufPtr, bufSize, 1, fp) != 1) {
			fprintf(stderr, "ERROR: ins. disk space\n");
			exit(7);
		}
	}
}

// Swap the endianness of every field of ehdr and return ehdr
Elf32_Ehdr *SwapEhdr(Elf32_Ehdr *ehdr)
{
	ehdr->e_type = Swap16(ehdr->e_type);
	ehdr->e_machine = Swap16(ehdr->e_machine);
	ehdr->e_version = Swap32(ehdr->e_version);
	ehdr->e_entry = Swap32(ehdr->e_entry);
	ehdr->e_phoff = Swap32(ehdr->e_phoff);
	ehdr->e_shoff = Swap32(ehdr->e_shoff);
	ehdr->e_flags = Swap32(ehdr->e_flags);
	ehdr->e_ehsize = Swap16(ehdr->e_ehsize);
	ehdr->e_phentsize = Swap16(ehdr->e_phentsize);
	ehdr->e_phnum = Swap16(ehdr->e_phnum);
	ehdr->e_shentsize = Swap16(ehdr->e_shentsize);
	ehdr->e_shnum = Swap16(ehdr->e_shnum);
	ehdr->e_shstrndx = Swap16(ehdr->e_shstrndx);
	
	return ehdr;
}


// Swap the endianness of every field in shdr and return shdr
Elf32_Shdr *SwapShdr(Elf32_Shdr *shdr)
{
	shdr->sh_name = Swap32(shdr->sh_name);
	shdr->sh_type = Swap32(shdr->sh_type);
	shdr->sh_flags = Swap32(shdr->sh_flags);
	shdr->sh_addr = Swap32(shdr->sh_addr);
	shdr->sh_offset = Swap32(shdr->sh_offset);
	shdr->sh_size = Swap32(shdr->sh_size);
	shdr->sh_link = Swap32(shdr->sh_link);
	shdr->sh_info = Swap32(shdr->sh_info);
	shdr->sh_addralign = Swap32(shdr->sh_addralign);
	shdr->sh_entsize = Swap32(shdr->sh_entsize);
	
	return shdr;
}

// Swap the endianness of all the 16-/32-bit fields of sym
// and return sym
Elf32_Sym *SwapSym(Elf32_Sym *sym)
{
	sym->st_name = Swap32(sym->st_name);
	sym->st_value = Swap32(sym->st_value);
	sym->st_size = Swap32(sym->st_size);
	sym->st_shndx = Swap16(sym->st_shndx);
	
	return sym;
}

// Swap the endianness of every symbol in the ELF's symbol table
void SwapSymbolTable(ElfStruct *elf)
{
	if (elf->symTabShdr) {
		const u32 numSyms = elf->symTabShdr->sh_size / sizeof(Elf32_Sym);
		for (u32 i = 0; i < numSyms; i++) {
			Elf32_Sym *sym = GetSymbol(elf, i);
			SwapSym(sym);
		}
	}
}

// Load the entire contents of the file at path into a newly malloc'd
// buffer. Write the file's size into *fileSz and return a pointer
// to the buffer. Return NULL if file open, malloc, or file read fails.
char *LoadFile(char *path)
{
    u32 fileSz;
	FILE *fp = fopen(path, "rb");
	if (!fp) {
		fprintf(stderr, "ERROR: cannot open file '%s'\n", path);
		return NULL;
	}
	
	fseek(fp, 0, SEEK_END);
	fileSz = ftell(fp);
	rewind(fp);
	
	char *buf = malloc(fileSz);
	if (!buf) {
		fprintf(stderr, "ERROR: ins. memory\n");
		return NULL;
	}
	
	if (fread(buf, fileSz, 1, fp) != 1) {
		fprintf(stderr, "ERROR: cannot read file '%s'\n", path);
		free(buf);
		return NULL;
	}
	
	fclose(fp);
	return buf;
}

// Load the ELF file located by path into a newly malloc'd 
// ElfStruct, then return the pointer to this ElfStruct. 

// Return NULL if an error occurs during malloc, file load, 
// or if path does not locate an ELF file. 

// The ELF header, section header, symbols, and relas will all have their endianness
// swapped correctly. 

// Record pointers to the .symtab, .strtab, 
// and .shstrtab section headers in the ElfStruct if they exist
ElfStruct *LoadElfFile(char *path)
{
	ElfStruct *elf = malloc(sizeof(ElfStruct));
	if (!elf) {
		fprintf(stderr, "LoadElfFile: ins. memory\n");
		return NULL;
	}
	memset(elf, 0, sizeof(ElfStruct));
	elf->fileBuf = LoadFile(path);
	if (!elf->fileBuf) {
		free(elf);
		return NULL;
	}
	
	if (memcmp(elf->fileBuf, "\177ELF", 4)) {
		fprintf(stderr, "LoadElfFile: %s is not an ELF file\n", path);
		free(elf);
		return NULL;
	}
	
	// Swap ELF file header
	elf->ehdr = SwapEhdr((Elf32_Ehdr *)elf->fileBuf);
	u32 i;
	Elf32_Shdr *shdr;
	char *sname;
	// Swap each ELF section header
	for (i = 0; i < elf->ehdr->e_shnum; i++) {
		shdr = GetSection(elf, i);
		SwapShdr(shdr);
	}
	
	// Record .shstrtab header if it exists
	if (elf->ehdr->e_shstrndx != SHN_UNDEF) {
		elf->shStrTabShdr = GetSection(elf, elf->ehdr->e_shstrndx);
	}
	
	// Search for .symtab and .strtab headers and record them if found
	for (i = 0; i < elf->ehdr->e_shnum; i++) {
		shdr = GetSection(elf, i);
		sname = GetSectionName(elf, shdr->sh_name);
		if (sname) {
			if (!strcmp(sname, ".symtab")) {
				elf->symTabShdr = shdr;
			} else if (!strcmp(sname, ".strtab")) {
				elf->strTabShdr = shdr;
			}
		}
	}
	return elf;
}

// perform all escape sequence replacements for the
// string in the .strtab referred to by strTabPtr, then
// pad the remaining space with NUL bytes
void ResolveEscapeSequences(char *strTabPtr, u32 symNameBufSz)
{
    // __ct__20Container____esc_lt_8MyStruct____esc_gt_FUi8MyStruct
    // __ct__20Container<8MyStruct>FUi8MyStruct

    // buffers to hold intermediate strings for each transformation performed
    char *firstReplaceStr = malloc(symNameBufSz);
    strncpy(firstReplaceStr, strTabPtr, symNameBufSz); // copy original name
    
    char *secondReplaceStr = NULL;
        
    // replace each escape sequence
    const u32 numEscSeqs = sizeof(escapeMaps) / sizeof(escapeMaps[0]); // always > 0
    u32 i;
    for (i = 0; i < numEscSeqs; i++) {
        if (i > 0) {
            free(firstReplaceStr);
            firstReplaceStr = secondReplaceStr;
            secondReplaceStr = NULL;
        }
        secondReplaceStr = str_replace(firstReplaceStr, escapeMaps[i].escapeSeq, escapeMaps[i].replaceChar);
        if (!secondReplaceStr) {
            fprintf(stderr, "ERROR: malloc failed in str_replace\n");
            free(firstReplaceStr);
            exit(EXIT_FAILURE);
        }
    }
    free(firstReplaceStr);

    // we should never be making the strtab bigger
    if (strlen(secondReplaceStr) > strlen(strTabPtr)) {
        fprintf(stderr, "ERROR: the replacement symbol name %s is larger than the original name %s\n", secondReplaceStr, strTabPtr);
        free(secondReplaceStr);
        exit(EXIT_FAILURE);
    }

    // write secondReplaceStr back to .strtab, padding any extra space with NUL
    strncpy(strTabPtr, secondReplaceStr, symNameBufSz);
}

int main(int argc, char *argv[])
{
    if (argc != 2) {
        fprintf(stderr, "usage: ./patch_strtab path/to/o_file.o\n");
        return EXIT_FAILURE;
    }
	ElfStruct *elf;
    elf = LoadElfFile(argv[1]);
    if (!elf) {
        fprintf(stderr, "ERROR: failed to load '%s' as an ELF\n", argv[1]);
        return EXIT_FAILURE;
    }
    u16 elfType = elf->ehdr->e_type;
    if (elfType != ET_REL) {
        fprintf(stderr, "ERROR: '%s' is not an ET_REL ELF\n", argv[1]);
        free(elf);
        return EXIT_FAILURE;
    }

    const u32 numSyms = GetNumberOfSymbols(elf);
    for (u32 i = 0; i < numSyms; i++) {
        Elf32_Sym *sym = GetSymbol(elf, i);
        if (!sym) {
            fprintf(stderr, "ERROR: couldn't get symbol\n");
            return EXIT_FAILURE;
        }
        char *symName = GetName(elf, sym->st_name); // this is a pointer into elf at its .strtab section
        u32 symNameBufSz;
        if (symName) {
            symNameBufSz = strlen(symName) + 1;
            ResolveEscapeSequences(symName, symNameBufSz);
        }
    }
    
    // Write the patched .strtab section back to the file
    FILE *fp = fopen(argv[1], "rb+");
    if (!fp) {
        fprintf(stderr, "ERROR: failed to open '%s' to perform the patch\n", argv[1]);
        free(elf);
        return EXIT_FAILURE;
    }
    
    const char *patchedStrTab = elf->fileBuf + elf->strTabShdr->sh_offset;    
    const u32 strTabSize = elf->strTabShdr->sh_size;
    fseek(fp, elf->strTabShdr->sh_offset, SEEK_SET);
    
    if (fwrite(patchedStrTab, 1, strTabSize, fp) != strTabSize) {
        fprintf(stderr, "ERROR: failed to fwrite the patched .strtab section to '%s'\n", argv[1]);
        free(elf);
        fclose(fp);
        return EXIT_FAILURE;
    }
    free(elf);
    fclose(fp);
	return EXIT_SUCCESS;
}
