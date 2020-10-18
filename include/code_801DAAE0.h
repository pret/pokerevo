#ifndef POKEREVO_CODE_801DAAE0_H
#define POKEREVO_CODE_801DAAE0_H

#ifdef __cplusplus
extern "C" {
#endif

#include "SDK/mem.h"

BOOL func_801DAB28(void);
void func_801DAB30(void);
MEMHeapHandle func_801DAB78(void* p1, u32 p2, u16 p3);
MEMHeapHandle func_801DAC0C(void);
MEMHeapHandle func_801DAC14(MEMHeapHandle p1);
u16 func_801DAC44(u16 p1);
u16 func_801DAC90(MEMHeapHandle heap, u16 groupID);
void* func_801DAC94(MEMHeapHandle heap, u32 size);
void* func_801DAD00(MEMHeapHandle heap, u32 size);
void* func_801DAD08(MEMHeapHandle heap, u32 size, int alignment);
void* func_801DAD0C(MEMHeapHandle heap, u32 size, int alignment);
void func_801DAD48(MEMHeapHandle heap, void* memBlock);
u32 func_801DAD58(u32, const void* memBlock);
void* func_801DAD64(size_t size);
void* func_801DAD98(u32 size);
void* func_801DADCC(u32 size, int alignment);
void* func_801DAE10(u32 size, int alignment);
BOOL func_801DAE60(void* memBlock, u32 size);
void func_801DAEA4(void* memBlock);
u32 func_801DAEE0(const void* memBlock);
u32 func_801DAEF8(void);
void func_801DAF70(MEMHeapHandle heap, u16 groupID);
void func_801DAFAC(void* dest, const void* src, size_t n);
void func_801DAEA4(void*);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DAAE0_H
