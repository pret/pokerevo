#ifndef POKEREVO_NANDOPENCLOSE_H
#define POKEREVO_NANDOPENCLOSE_H

#ifdef __cplusplus
extern "C" {
#endif

#include <SDK/NAND/nand.h>

s32 NANDOpen(const char* path, NANDFileInfo* info, u8 accType);
s32 NANDClose(NANDFileInfo* info);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NANDOPENCLOSE_H
