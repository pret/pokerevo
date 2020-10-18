#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"
#include "Runtime/__mem.h"
#include "SDK/mem.h"

namespace
{
    struct unkClass
    {
        u8 unk0;
        MEMHeapHandle unk4;
        u32 unk8;
    };

    struct unkClass2
    {
        MEMHeapHandle heap;
        u16 groupID;
        u32 unk8;
    };
    
    const size_t ARR_SIZE = 16;
    unkClass gUnk804912B0[ARR_SIZE];

    unkStruct gUnk8063F2D0(1, 4, 0);
    u8 gUnk8063F2D6;
    u8 gUnk8063F2D7;
    MEMHeapHandle gUnk8063F2D8;
    u16 gUnk8063F2DC;
}

extern "C" {

static unkClass* func_801DAAE0(void)
{
    for (u32 i = 0; i < ARR_SIZE; i++)
        if (gUnk804912B0[i].unk0 == 0)
            return &gUnk804912B0[i];
    return NULL;
}

BOOL func_801DAB28(void)
{
    return gUnk8063F2D6;
}

void func_801DAB30(void)
{
    memset(gUnk804912B0, 0, sizeof(gUnk804912B0));
    gUnk8063F2D8 = 0;
    gUnk8063F2DC = 0;
    gUnk8063F2D6 = 1;
    gUnk8063F2D7 = 0;
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

MEMHeapHandle func_801DAC0C(void)
{
    return gUnk8063F2D8;
}

MEMHeapHandle func_801DAC14(MEMHeapHandle p1)
{
    MEMHeapHandle r3 = func_801DAC0C();
    gUnk8063F2D8 = p1;
    return r3;
}

u16 func_801DAC44(u16 p1)
{
    u16 r31 = gUnk8063F2DC;
    gUnk8063F2DC = p1;
    MEMSetGroupIDForExpHeap(lbl_8063E8E8, (u16)(p1 & 0xff));
    MEMSetGroupIDForExpHeap(lbl_8063E8EC, (u16)(gUnk8063F2DC & 0xff));
    return r31;
}

u16 func_801DAC90(MEMHeapHandle heap, u16 groupID)
{
    return MEMSetGroupIDForExpHeap(heap, groupID);
}

void* func_801DAC94(MEMHeapHandle heap, u32 size)
{
    return MEMAllocFromExpHeapEx(heap, size, 32);
}

static void* lbl_801DAC9C(MEMHeapHandle heap, u32 size, int fill)
{
    void* r31 = func_801DAC94(heap, size);
    if (!r31)
        return NULL;
    memset(r31, fill, size);
    return r31;
}

void* func_801DAD00(MEMHeapHandle heap, u32 size)
{
    return lbl_801DAC9C(heap, size, 0);
}

void* func_801DAD08(MEMHeapHandle heap, u32 size, int alignment)
{
    return MEMAllocFromExpHeapEx(heap, size, alignment);
}

void* func_801DAD0C(MEMHeapHandle heap, u32 size, int alignment)
{
    return MEMAllocFromExpHeapEx(heap, size, (alignment > 0) ? -alignment : alignment);
}

static BOOL func_801DAD1C(MEMHeapHandle heap, void* memBlock, u32 size)
{
    return MEMResizeForMBlockExpHeap(heap, memBlock, size) != 0;
}

void func_801DAD48(MEMHeapHandle heap, void* memBlock)
{
    if (memBlock)
        MEMFreeToExpHeap(heap, memBlock);
}

u32 func_801DAD58(u32, const void* memBlock)
{
    return MEMGetSizeForMBlockExpHeap(memBlock);
}

static u32 func_801DAD60(MEMHeapHandle heap)
{
    return MEMGetTotalFreeSizeForExpHeap(heap);
}

void* func_801DAD64(size_t size)
{
    return func_801DAC94(func_801DAC0C(), size);
}

void* func_801DAD98(u32 size)
{
    return func_801DAD00(func_801DAC0C(), size);
}

void* func_801DADCC(u32 size, int alignment)
{
    return func_801DAD08(func_801DAC0C(), size, alignment);
}

void* func_801DAE10(u32 size, int alignment)
{
    return func_801DAD08(func_801DAC0C(), size, (alignment > 0) ? -alignment : alignment);
}

BOOL func_801DAE60(void* memBlock, u32 size)
{
    return func_801DAD1C(func_801DAC0C(), memBlock, size);
}

void func_801DAEA4(void* memBlock)
{
    if (memBlock)
        func_801DAD48(func_801DAC0C(), memBlock);
}

u32 func_801DAEE0(const void* memBlock)
{
    if (memBlock == NULL)
        return 0;
    return MEMGetSizeForMBlockExpHeap(memBlock);
}

u32 func_801DAEF8(void)
{
    return func_801DAD60(func_801DAC0C());
}

static void lbl_801DAF1C(void* memBlock, MEMHeapHandle, u32 p3)
{
    if (MEMGetGroupIDForMBlockExpHeap(memBlock) == ((unkClass2 *)p3)->groupID)
        MEMFreeToExpHeap(((unkClass2 *)p3)->heap, memBlock);
}

void func_801DAF70(MEMHeapHandle heap, u16 groupID)
{
    unkClass2 param;
    param.heap = heap;
    param.groupID = groupID;
    param.unk8 = 0;
    MEMVisitAllocatedForExpHeap(heap, lbl_801DAF1C, (u32)&param);
}

#ifdef USES_INLINE_ASM
void func_801DAFAC(register void* dest, register const void* src, register size_t n)
{
    if ((u32)dest & 0x1f || (u32)src & 0x1f || n & 0x1f) {
        memcpy(dest, src, n);
    } else {
        n /= 32;
        // Note: reg0 prevents the previous if condition from using 
        // r12 as its scratch register instead of r0
        register u32 reg0;
        asm
        {
            mtctr n
            addi r3, dest, -4
            addi r4, src, -4
        lbl_801DAFD8:
            lwzu reg0, 4(r4)
            lwzu r5, 4(r4)
            lwzu r6, 4(r4)
            lwzu r7, 4(r4)
            lwzu r8, 4(r4)
            lwzu r9, 4(r4)
            lwzu r10, 4(r4)
            lwzu r11, 4(r4)
            stwu reg0, 4(r3)
            stwu r5, 4(r3)
            stwu r6, 4(r3)
            stwu r7, 4(r3)
            stwu r8, 4(r3)
            stwu r9, 4(r3)
            stwu r10, 4(r3)
            stwu r11, 4(r3)
            bdnz lbl_801DAFD8
        }
    }
}
#else
asm void func_801DAFAC(register void* dest, register const void* src, register size_t n)
{
    nofralloc
    /* 801DAFAC 001D6C0C  54 60 06 FF */	clrlwi. r0, r3, 0x1b
    /* 801DAFB0 001D6C10  40 82 00 14 */	bne lbl_801DAFC4
    /* 801DAFB4 001D6C14  54 80 06 FF */	clrlwi. r0, r4, 0x1b
    /* 801DAFB8 001D6C18  40 82 00 0C */	bne lbl_801DAFC4
    /* 801DAFBC 001D6C1C  54 A0 06 FF */	clrlwi. r0, r5, 0x1b
    /* 801DAFC0 001D6C20  41 82 00 08 */	beq lbl_801DAFC8
    lbl_801DAFC4:
    /* 801DAFC4 001D6C24  4B E2 90 3C */	b memcpy
    lbl_801DAFC8:
    /* 801DAFC8 001D6C28  54 A5 D9 7E */	srwi r5, r5, 5
    /* 801DAFCC 001D6C2C  7C A9 03 A6 */	mtctr r5
    /* 801DAFD0 001D6C30  38 63 FF FC */	addi r3, r3, -4
    /* 801DAFD4 001D6C34  38 84 FF FC */	addi r4, r4, -4
    lbl_801DAFD8:
    /* 801DAFD8 001D6C38  84 04 00 04 */	lwzu r0, 4(r4)
    /* 801DAFDC 001D6C3C  84 A4 00 04 */	lwzu r5, 4(r4)
    /* 801DAFE0 001D6C40  84 C4 00 04 */	lwzu r6, 4(r4)
    /* 801DAFE4 001D6C44  84 E4 00 04 */	lwzu r7, 4(r4)
    /* 801DAFE8 001D6C48  85 04 00 04 */	lwzu r8, 4(r4)
    /* 801DAFEC 001D6C4C  85 24 00 04 */	lwzu r9, 4(r4)
    /* 801DAFF0 001D6C50  85 44 00 04 */	lwzu r10, 4(r4)
    /* 801DAFF4 001D6C54  85 64 00 04 */	lwzu r11, 4(r4)
    /* 801DAFF8 001D6C58  94 03 00 04 */	stwu r0, 4(r3)
    /* 801DAFFC 001D6C5C  94 A3 00 04 */	stwu r5, 4(r3)
    /* 801DB000 001D6C60  94 C3 00 04 */	stwu r6, 4(r3)
    /* 801DB004 001D6C64  94 E3 00 04 */	stwu r7, 4(r3)
    /* 801DB008 001D6C68  95 03 00 04 */	stwu r8, 4(r3)
    /* 801DB00C 001D6C6C  95 23 00 04 */	stwu r9, 4(r3)
    /* 801DB010 001D6C70  95 43 00 04 */	stwu r10, 4(r3)
    /* 801DB014 001D6C74  95 63 00 04 */	stwu r11, 4(r3)
    /* 801DB018 001D6C78  42 00 FF C0 */	bdnz lbl_801DAFD8
    /* 801DB01C 001D6C7C  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

} //extern "C"
