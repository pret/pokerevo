#ifndef POKEREVO_CODE_801DCE6C_H
#define POKEREVO_CODE_801DCE6C_H

#ifdef __cplusplus
extern "C" {
#endif

#include <SDK/nand.h>
#include "code_801DBE90.h"

// array of 8 0x190 byte structs
struct gUnkClass4
{
    gUnkClass6 arr[0x8];

    gUnkClass4(void);
};

BOOL func_801DCF74(gUnkClass4*, const char*, gUnkClass5*);
BOOL func_801DCF48(gUnkClass4*, const char*);
s32 func_801DD084(gUnkClass4* p1, gUnkClass5* fp, void* addr, s32 length, s32 offset);
BOOL func_801DD220(gUnkClass4*, gUnkClass5*, void*, u32, s32);
BOOL func_801DCFE4(gUnkClass4*, gUnkClass5* fp);
BOOL func_801DD03C(gUnkClass4* p1, gUnkClass5* fp, u32* fileSz);
BOOL func_801DD294(gUnkClass4*, const char*, s32);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DCE6C_H
