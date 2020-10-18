#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"

// TODO: C or C++

extern "C" {

// unkStruct gUnk8063F2D0(1, 4, 0);
// TODO: move
extern u32 lbl_8063E8E8;
extern u32 lbl_8063E8EC;
extern u8 lbl_8063F2D6;
extern u8 lbl_8063F2D7;
extern u32 lbl_8063F2D8;
extern u16 lbl_8063F2DC;

void *memset(void *s, int c, size_t n);
MEMHeapHandle MEMCreateExpHeapEx(void* p1, u32 p2, u16 p3);
u16 MEMSetGroupIDForExpHeap(MEMHeapHandle heap, u16 groupID);

unkClass gUnk804912B0[16];

unkClass* func_801DAAE0(void)
{
    for (u32 i = 0; i < 16; i++)
        if (gUnk804912B0[i].unk0 == 0)
            return &gUnk804912B0[i];
    return NULL;
}

BOOL func_801DAB28(void)
{
    return lbl_8063F2D6;
}

void func_801DAB30(void)
{
    memset(gUnk804912B0, 0, sizeof(gUnk804912B0));
    lbl_8063F2D8 = 0;
    lbl_8063F2DC = 0;
    lbl_8063F2D6 = 1;
    lbl_8063F2D7 = 0;
}

MEMHeapHandle func_801DAB78(void* p1, u32 p2, u16 p3)
{
    if (!func_801DAB28())
        return 0;
    unkClass* r31 = func_801DAAE0();
    if (!r31)
        return 0;
    MEMHeapHandle r3 = MEMCreateExpHeapEx(p1, p2, p3);
    r31->unk0 = 1;
    r31->unk4 = r3;
    r31->unk8 = p2;
    return r3;
}

u32 func_801DAC0C(void)
{
    return lbl_8063F2D8;
}

u32 func_801DAC14(u32 p1)
{
    u32 r3 = func_801DAC0C();
    lbl_8063F2D8 = p1;
    return r3;
}

u16 func_801DAC44(u16 p1)
{
    u16 r31 = lbl_8063F2DC;
    lbl_8063F2DC = p1;
    MEMSetGroupIDForExpHeap(lbl_8063E8E8, (u16)(p1 & 0xff));
    MEMSetGroupIDForExpHeap(lbl_8063E8EC, (u16)(lbl_8063F2DC & 0xff));
    return r31;
}




}
