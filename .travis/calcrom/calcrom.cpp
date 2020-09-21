/*
 * CALCROM.CPP
 * © PikalaxALT 2020
 * © red031000 2020
 * © mparisi20 2020
 *
 * Simple C++ executable to measure the completion rate of Pokémon Battle Revolution
 * reverse engineering (decompilation).
 *
 * Requirements:
 *  - Must have C++11 compliant compiler.
 *  - MacOS X: Must provide elf.h on the include (-I) path.
 *  - Must be placed in ".travis/calcrom/".
 *
 * Changelog:
 *  - 0.1.0 (26 May 2020):
 *      Initial implementation
 *  - 0.1.1 (26 May 2020):
 *      Allow program to be run from wherever
 *  - 0.1.2 (27 May 2020):
 *      Extra security on ELF header
 *  - 0.1.3 (30 Jun 2020):
 *      Account for diamond/pearl split
 *  - 0.1.4 (19 Sep 2020):
 *      Modify for PowerPC development
 */

#include <iostream>
#include <fstream>
#include <sstream>
#include <regex>
#include <elf.h>
#include <glob.h>
#include <ftw.h>
#include <string.h>
#include <vector>
#include <string>

using namespace std;

struct Glob : public vector<char const *> {
    glob_t glob_result;
public:
    Glob(string const & pattern) {
        int result = glob(pattern.c_str(), GLOB_TILDE | GLOB_BRACE, NULL, &glob_result);
        if (result) {
            stringstream ss;
            ss << "Glob(" << pattern << ") failed with error " << result << endl;
            throw runtime_error(ss.str());
        }
        assign(glob_result.gl_pathv, glob_result.gl_pathv + glob_result.gl_pathc);
    };
    void operator~() {
        globfree(&glob_result);
    }
};

static vector<string> files;

static int
get_files(const char *fpath, const struct stat *sb,
            int tflag, struct FTW *ftwbuf)
{
    if (tflag == FTW_F) {
        string fpath_s(fpath);
        string ext = fpath_s.substr(fpath_s.rfind('.'), 4);
        if (ext == ".c" || ext == ".cpp" || ".s")
            files.push_back(fpath_s);
    }
    return 0;
}

static inline Elf32_Half ElfHalfEndianAdjust(Elf32_Half val)
{
    return (Elf32_Half)__builtin_bswap16((uint16_t)val);
}

static inline Elf32_Word ElfWordEndianAdjust(Elf32_Word val)
{
    return (Elf32_Word)__builtin_bswap32((uint32_t)val);
}

static inline Elf32_Addr ElfAddrEndianAdjust(Elf32_Addr val)
{
    return (Elf32_Word)__builtin_bswap32((uint32_t)val);
}

static inline Elf32_Off ElfOffEndianAdjust(Elf32_Off val)
{
    return (Elf32_Word)__builtin_bswap32((uint32_t)val);
}

void endianAdjustEhdr(Elf32_Ehdr &ehdr)
{
    ehdr.e_ehsize = ElfHalfEndianAdjust(ehdr.e_ehsize);
    ehdr.e_shentsize = ElfHalfEndianAdjust(ehdr.e_shentsize);
    ehdr.e_shoff = ElfOffEndianAdjust(ehdr.e_shoff);
    ehdr.e_shnum = ElfHalfEndianAdjust(ehdr.e_shnum);
    ehdr.e_shstrndx = ElfHalfEndianAdjust(ehdr.e_shstrndx);
}

void endianAdjustShdr(Elf32_Shdr &shdr)
{
    shdr.sh_name = ElfWordEndianAdjust(shdr.sh_name);
    shdr.sh_size = ElfWordEndianAdjust(shdr.sh_size);
    shdr.sh_offset = ElfOffEndianAdjust(shdr.sh_offset);
}

void analyze(string basedir, string version) {
    fstream elf;
    Elf32_Ehdr ehdr;
    vector<Elf32_Shdr> shdr;
    stringstream pattern;

    // Accumulate sizes
    //        src   asm
    // data  _____|_____
    // text       |
    unsigned sizes[2][2] = {{0, 0}, {0, 0}};
    // Accumulate asm sizes
    //       split  unsplit
    // data  _____|________
    // text       |
    unsigned split_sizes[2][2] = {{0, 0}, {0, 0}};
    unsigned incbins = 0;
    unsigned incbin_size = 0;
    char * shstrtab = NULL;
    size_t shstrsz = 0;
    stringstream builddir;
    
    builddir << "/build/" << version;
    stringstream basebuilddir;
    basebuilddir << basedir << builddir.str();
    pattern << basedir << "/{src,asm}/**/*.{c,s,cpp}";
    
    // Recursively search the src/ and asm/ directories for
    // .c, .cpp, and .s files, accumulating them all into files
    string srcdir = basedir + "/src";
    string asmdir = basedir + "/asm";
    if (nftw(srcdir.c_str(), get_files, 20, 0) == -1) {
        perror("nftw");
        exit(EXIT_FAILURE);
    }
    if (nftw(asmdir.c_str(), get_files, 20, 0) == -1) {
        perror("nftw");
        exit(EXIT_FAILURE);
    }

    for (auto fname_s : files)
    {
        string ext = fname_s.substr(fname_s.rfind('.'), 4);
        bool is_asm = ext == ".s";
        string fileroot = fname_s.substr(fname_s.rfind('/') + 1);
        string unsplit_regex("(init|extab|extabindex|text|ctors|dtors|rodata|data|sdata|sdata2)(_[^.]*)?[.]s");
        bool is_unsplit = is_asm && regex_match(fileroot, regex(unsplit_regex));
        
        // open the .s file and count incbins
        if (is_asm && fileroot != "extab.s" && fileroot != "extabindex.s") {
            fstream sfile;
            sfile.open(fname_s, ios_base::in);
            if (!elf.good()) {
                cerr << "Error: file not found: " << fname_s << endl;
                return;
            }
            string line;
            while (getline(sfile, line)) {
                if (line.find(".incbin") != string::npos) {
                    incbins++;
                    istringstream line_ss(line);
                    string discard;
                    unsigned size = 0;
                    line_ss >> discard >> discard >> discard >> hex >> size;
                    incbin_size += size;
                }
            }
            sfile.close();
        }

        fname_s = fname_s.replace(fname_s.find(basedir), basedir.length(), basebuilddir.str());
        fname_s = fname_s.replace(fname_s.rfind('.'), 4, ".o");
        elf.open(fname_s, ios_base::in | ios_base::binary);
        if (!elf.good()) {
            cerr << "Error: file not found: " << fname_s << endl;
            return;
        }
        elf.read((char *)&ehdr, sizeof(ehdr));
        endianAdjustEhdr(ehdr);
        if (memcmp(ehdr.e_ident, ELFMAG, SELFMAG) != 0
            || ehdr.e_ehsize != sizeof(Elf32_Ehdr)
            || ehdr.e_shentsize != sizeof(Elf32_Shdr))
        {
            elf.close();
            stringstream ss;
            ss << "Error validating " << fname_s << " as an ELF file" << endl;
            throw runtime_error(ss.str());
        }
        // Read ELF sections
        elf.seekg(ehdr.e_shoff);
        shdr.resize(ehdr.e_shnum);
        elf.read((char *)shdr.data(), ehdr.e_shnum * ehdr.e_shentsize);

        for (Elf32_Shdr &shdr_entry : shdr)
        {
            endianAdjustShdr(shdr_entry);
        }
        // Read .shstrtab
        if (shstrsz < shdr[ehdr.e_shstrndx].sh_size) {
            shstrtab = (char *)realloc(shstrtab, shdr[ehdr.e_shstrndx].sh_size);
            shstrsz = shdr[ehdr.e_shstrndx].sh_size;
        }
        elf.seekg(shdr[ehdr.e_shstrndx].sh_offset);
        elf.read(shstrtab, shdr[ehdr.e_shstrndx].sh_size);
        elf.close();

        // Analyze sections
        for (Elf32_Shdr & hdr : shdr) {
            string shname = shstrtab + hdr.sh_name;
            bool is_text = (shname == ".text" || shname == ".init");
            bool is_data = (shname == ".data" || shname == ".dtors" || shname == ".ctors" || 
                            shname == ".sdata" || shname == ".sdata2" || shname == ".rodata");
            size_t size = hdr.sh_size + (hdr.sh_size & 3 ? 4 - (hdr.sh_size & 3) : 0);
            if (is_text || is_data)
            {
                sizes[is_text][is_asm] += size;
                if (is_asm)
                {
                    split_sizes[is_text][is_unsplit] += size;
                }
            }
        }
    }
    free(shstrtab);

    cout << "Analysis of " << version << " binary:" << endl;
    // Report code
    unsigned total_text = sizes[1][0] + sizes[1][1];
    double total_text_d = total_text;
    double src_text_d = sizes[1][0];
    double asm_text_d = sizes[1][1];
    double split_asm_text_d = split_sizes[1][0];
    double unsplit_asm_text_d = split_sizes[1][1];
    
    cout << "  " << total_text << " total bytes of code" << endl;
    cout << "    " << sizes[1][0] << " bytes of code in src (" << (src_text_d / total_text_d * 100.0) << "%)" << endl;
    cout << "    " << sizes[1][1] << " bytes of code in asm (" << (asm_text_d / total_text_d * 100.0) << "%)" << endl;
    if (sizes[1][1] > 0) {
        cout << "      " << split_sizes[1][0] << " bytes of asm code in split files (" << (split_asm_text_d / asm_text_d * 100.0) << "%)" << endl;
        cout << "      " << split_sizes[1][1] << " bytes of asm code in unsplit files (" << (unsplit_asm_text_d / asm_text_d * 100.0) << "%)" << endl;
    }
    cout << endl;
    // Report data
    unsigned total_data = sizes[0][0] + sizes[0][1];
    double total_data_d = total_data;
    double src_data_d = sizes[0][0];
    double asm_data_d = sizes[0][1];
    double split_asm_data_d = split_sizes[0][0];
    double unsplit_asm_data_d = split_sizes[0][1];
    cout << "  " << total_data << " total bytes of data" << endl;
    cout << "    " << sizes[0][0] << " bytes of data in src (" << (src_data_d / total_data_d * 100.0) << "%)" << endl;
    cout << "    " << sizes[0][1] << " bytes of data in asm (" << (asm_data_d / total_data_d * 100.0) << "%)" << endl;
    if (sizes[0][1] > 0) {
        cout << "      " << split_sizes[0][0] << " bytes of asm data in split files (" << (split_asm_data_d / asm_data_d * 100.0) << "%)" << endl;
        cout << "      " << split_sizes[0][1] << " bytes of asm data in unsplit files (" << (unsplit_asm_data_d / asm_data_d * 100.0) << "%)" << endl;
    }
    cout << endl;
    // Report incbins
    cout << "  " << incbins << " incbins remain totaling " << incbin_size << " bytes ("
         << (incbin_size / static_cast<double>(total_data)) * 100.0 << "%)" <<  endl;

    // Let vectors fall to gc
}

int main(int argc, char ** argv)
{
    if (argc < 2) {
        cout << "usage: calcrom PROJECT_DIR" << endl;
        throw invalid_argument("missing required argument: PROJECT_DIR\n");
    }

    analyze(argv[1], "pbr_pal");
    cout << endl;

    return 0;
}
