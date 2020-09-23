README:

The program patches the .strtab section of an ELF relocatable module
by replacing certain escape sequences with the characters they represent.

CodeWarrior's C++ name mangling scheme may produce linkage names that
are not valid identifiers in the .s files provided to the 
assembler, so we cannot use the mangled names directly as labels in the .s file.
Still, we would like to be able to link with compiled C++ modules and add accurate symbols to them 
before they have been decompiled. To deal with this issue, for each .s file
we replace any illegal characters in the mangled name with valid escape sequences, 
assemble the .s file, then use this program to postprocess the .o object code, which restores
the correct symbol name.
