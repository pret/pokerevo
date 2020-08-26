# Pokemon Battle Revolution

This repo contains a WIP decompilation of Pokemon Battle Revolution (PAL).

It builds the following DOL:

main.dol: `sha1: ffcd539d239722b8bb27e45c9ad4aacc818c8933`

## Build Instructions

1. Obtain a clean DOL of PBR PAL 1.0 and place it in the build folder and name it `baserom.dol`.
2. Obtain a copy of the MWCC PowerPC (from GC CW 3.0) and place it in tools/mwcc_compiler/3.0/ folder in tools/. (NOTE: This compiler's executables [mwcceppc.exe mwasmeppc.exe and mwldeppc.exe] can be installed with Codewarrior 1.1 for Gamecube, but no license or crack is provided with this project. Please obtain access to the compiler on your own.) If you are in the Gamecube/Wii Decompilation discord (not public at this time, but if you are interested and have the skillset to contribute, please DM Revo#7090 on Discord for access), download GC_COMPILERS.zip and extract it to tools/mwcc_compiler/.
3. Build tools and `make`.

## Contributions

Contributions and PRs are welcome.
