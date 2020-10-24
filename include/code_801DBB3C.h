#ifndef POKEREVO_CODE_801DBB3C_H
#define POKEREVO_CODE_801DBB3C_H

#ifdef __cplusplus
extern "C" {
#endif

#include "code_801DB040.h"

struct gUnkClass3
{
    gUnkClass3* unk0;
    gUnkClass1 unk4;
};

struct gUnkClass2
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    size_t unkC;
    u8* unk10;
    u8* unk14;
    gUnkClass3* unk18;
};

gUnkClass1* func_801DBC58(gUnkClass2* p1);
void func_801DBD00(gUnkClass2* p1, gUnkClass1* p2);
gUnkClass2* func_801DBD74(u32 p1, u32 p2);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DBB3C_H
