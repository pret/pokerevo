#ifndef POKEREVO_CODE_801DBB3C_H
#define POKEREVO_CODE_801DBB3C_H

#ifdef __cplusplus
extern "C" {
#endif

#include "code_801DB040.h"

// free store block?
struct gUnkClass3
{
    gUnkClass3* unk0; // pointer to the next free block
    gUnkClass1 unk4; // flexible array member to make this generic?
};

// linked list node free store?
struct gUnkClass2
{
    u32 unk0; // counter for blocks currently allocated?
    u32 unk4; // maximum number of blocks allocated so far?
    u32 unk8; // number of linked list nodes initially requested
    size_t unkC; // block size
    u8* unk10; // TODO: change to gUnkClass3* for unk10 and unk14?
    u8* unk14; // pointer to "end" block?
    gUnkClass3* unk18; // head of the linked list of free nodes
};

gUnkClass1* func_801DBC58(gUnkClass2* p1);
void func_801DBD00(gUnkClass2* p1, gUnkClass1* p2);
gUnkClass2* func_801DBD74(u32 p1, u32 p2);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DBB3C_H
