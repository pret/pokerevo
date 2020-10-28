#ifndef POKEREVO_CODE_801DCE6C_H
#define POKEREVO_CODE_801DCE6C_H

#ifdef __cplusplus
extern "C" {
#endif

#include "code_801DBE90.h"

struct gUnkClass4
{
    u8 unk0[0x2];
    char unk2[0x5];
    char unk7[0xC79];
    
    gUnkClass4(void);
};

u32 func_801DCF74(gUnkClass4*, const char*, gUnkClass5*);
u32 func_801DCF48(gUnkClass4*, const char*);
s32 func_801DD084(gUnkClass4* p1, gUnkClass5* p2, void* addr, s32 length, s32 offset);
void* func_801DD220(gUnkClass4*, gUnkClass5*, void*, u32, s32);
u32 func_801DCFE4(gUnkClass4*, gUnkClass5*);
u32 func_801DD03C(gUnkClass4*, gUnkClass5*, u32*);
BOOL func_801DD294(gUnkClass4*, const char*, s32);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DCE6C_H
