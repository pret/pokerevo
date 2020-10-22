#ifndef POKEREVO_CODE_801DB040_H
#define POKEREVO_CODE_801DB040_H

#ifdef __cplusplus
extern "C" {
#endif

#include "SDK/mem.h"

typedef u32 (*gFuncPtr1)(void*, u32, u32);

struct gUnkClass1
{
    u8 unk0;
    u8 unk1;
    u8 unk2[0x2];
    u32 unk4;
    MEMHeapHandle unk8;
    void* unkC;
    u32 unk10;
    u32 unk14;
    gFuncPtr1 unk18;
    gUnkClass1* unk1C;
    gUnkClass1* unk20;
};


gUnkClass1* func_801DB07C(gUnkClass1* p1, BOOL p2);
void func_801DB15C(u32 p1);
void* func_801DB270(MEMHeapHandle heap, u32 size, int align, u32 p4, u32 p5, gFuncPtr1 p6);
void* func_801DB360(u32 size, int align, u32 p3, u32 p4, gFuncPtr1 p5);
void func_801DB3BC(void* p1, u32 p2, u32 p3, gFuncPtr1 p4);
void* func_801DB4BC(u32 p1, u32 p2);
u32 func_801DB4FC(u32 p1, u32 p2);
u32 func_801DB548(u32 p1, u32 p2);
u32 func_801DB5E4(u32 p1, u32 p2);
void func_801DB644(u32 p1, u32 p2);
void func_801DB674(u32 p1);
BOOL func_801DB6D0(u32 p1, u32 p2, MEMHeapHandle p3, u32 p4, u32 p5, gFuncPtr1 p6);
void func_801DB79C(u32 p1, u32 p2);
void func_801DB7CC(u32 p1, u32 p2);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DB040_H
