#ifndef POKEREVO_CODE_801DBE90_H
#define POKEREVO_CODE_801DBE90_H

#ifdef __cplusplus
extern "C" {
#endif

#include "SDK/dvd.h"
#include "SDK/mem.h"

struct gUnkClass5
{
    u8 unk0;
    u8 unk1;
    u8 unk2[0x2];
    DVDFileInfo unk4;
};

BOOL func_801DC0C8(size_t p1, u32 p2);
gUnkClass5* func_801DC2D0(const char* fileName);
BOOL func_801DC380(const char* fileName);
s32 func_801DC3FC(gUnkClass5* p1, void* addr, s32 length, s32 offset);
BOOL func_801DC4F0(gUnkClass5* p1, void* p2, u32 p3, s32 p4, void (*p5)(s32, void*));
s32 func_801DC5FC(gUnkClass5* p1, void* addr, s32 length, s32 offset, s32 prio);
BOOL func_801DC6C4(gUnkClass5* p1);
size_t func_801DC760(gUnkClass5* p1);
BOOL func_801DC7F8(gUnkClass5* p1, s32 offset, void (*p3)(s32, void*));
u8* func_801DCBC0(const char* fileName, u32* fileSz);
void* func_801DCCAC(const char* fileName, MEMHeapHandle heap, u32* fileSz);
BOOL func_801DCD94(const char* fileName);
void func_801DCDB8(void (*p1)(u32), void (*p2)(void));
u32 func_801DCDC4(void);
void func_801DCE38(void);
u8 func_801DCE44(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DBE90_H
