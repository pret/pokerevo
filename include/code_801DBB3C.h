#ifndef POKEREVO_CODE_801DBB3C_H
#define POKEREVO_CODE_801DBB3C_H

#ifdef __cplusplus
extern "C" {
#endif

#include "code_801DB040.h"

// free store block?
struct gUnkClass3
{
    gUnkClass3* unk0;
    gUnkClass1 unk4;
};

// linked list node free store?
struct gUnkClass2
{
    u32 unk0; // counter?
    u32 unk4;
    u8 pad[0x4];
    size_t unkC; // block size
    u8 pad2[0x8];
    gUnkClass3* unk18; // next block?
};

gUnkClass1* func_801DBC58(gUnkClass2* p1);
void func_801DBD00(gUnkClass2* p1, gUnkClass1* p2);
gUnkClass2* func_801DBD74(u32 p1, u32 p2);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DBB3C_H
