#include "types.h"
#include "ctorStruct.h"
#include "SDK/os.h"
#include "code_801DB81C.h"

namespace
{
    typedef void (*funcPtr)(u32, u32, u8);

    struct unkClass
    {
        u8 unk0;
        u8 unk1;
        funcPtr unk4;
    };
}

static void func_801DB81C(u8 p1);
static void func_801DB92C(u8 start, u8 width, u32 setOrClear);

static const size_t ARR_SIZE = 32;
static unkClass gUnk80491370[ARR_SIZE];
static ctorStruct gUnk8063F2F0(1, 4, 0);
static u32 gUnk8063F2F8;
static u32 gUnk8063F2FC;
static u32 gUnk8063F300;
static u8 gUnk8063F304;
static u32 gUnk8063F308;

extern "C" {

static void func_801DB81C(u8 p1)
{
    gUnk8063F308 = 0;
    for (size_t i = 0; i < ARR_SIZE; i++)
        gUnk80491370[i].unk0 = 0xff;
    LCEnable();
    gUnk8063F2FC = (u32)LCGetBase();
    gUnk8063F2F8 = (u32)(p1 << 9);
    if (p1) {
        func_801DB92C(0, p1, 1);
        gUnk80491370[0].unk0 = 0;
        gUnk80491370[0].unk1 = p1;
    }
    gUnk8063F304 = 0;
}

static void func_801DB92C(u8 start, u8 width, u32 setOrClear)
{
    u32 bit = 0x80000000;
    while (start--)
        bit >>= 1;
    while (width--) {
        gUnk8063F308 = (setOrClear == 1) ? gUnk8063F308 | bit : gUnk8063F308 & ~bit;
        bit >>= 1;
    }
}

asm u32 func_801DB978(u8 p1)
{
    nofralloc
    /* 801DB978 001D75D8  94 21 FF F0 */	stwu r1, -0x10(r1)
    /* 801DB97C 001D75DC  7C 08 02 A6 */	mflr r0
    /* 801DB980 001D75E0  90 01 00 14 */	stw r0, 0x14(r1)
    /* 801DB984 001D75E4  93 E1 00 0C */	stw r31, 0xc(r1)
    /* 801DB988 001D75E8  7C 3F 0B 78 */	mr r31, r1
    /* 801DB98C 001D75EC  93 C1 00 08 */	stw r30, 8(r1)
    /* 801DB990 001D75F0  7C 7E 1B 78 */	mr r30, r3
    /* 801DB994 001D75F4  7C 68 02 A6 */	mflr r3
    /* 801DB998 001D75F8  90 6D A0 40 */	stw r3, gUnk8063F300
    /* 801DB99C 001D75FC  7F C3 F3 78 */	mr r3, r30
    /* 801DB9A0 001D7600  4B FF FE 7D */	bl func_801DB81C
    /* 801DB9A4 001D7604  2C 1E 00 00 */	cmpwi r30, 0
    /* 801DB9A8 001D7608  40 82 00 0C */	bne lbl_801DB9B4
    /* 801DB9AC 001D760C  38 60 00 01 */	li r3, 1
    /* 801DB9B0 001D7610  48 00 00 2C */	b lbl_801DB9DC
    lbl_801DB9B4:
    /* 801DB9B4 001D7614  80 6D A0 3C */	lwz r3, gUnk8063F2FC
    /* 801DB9B8 001D7618  80 AD A0 38 */	lwz r5, gUnk8063F2F8
    /* 801DB9BC 001D761C  7C 63 2A 14 */	add r3, r3, r5
    /* 801DB9C0 001D7620  38 23 FF F8 */	addi r1, r3, -8
    /* 801DB9C4 001D7624  38 60 FF FF */	li r3, -1
    /* 801DB9C8 001D7628  90 61 00 00 */	stw r3, 0(r1)
    /* 801DB9CC 001D762C  80 6D A0 40 */	lwz r3, gUnk8063F300
    /* 801DB9D0 001D7630  7C 68 03 A6 */	mtlr r3
    /* 801DB9D4 001D7634  4E 80 00 20 */	blr
    /* 801DB9D8 001D7638  38 60 00 01 */	li r3, 1
    lbl_801DB9DC:
    /* 801DB9DC 001D763C  7F EA FB 78 */	mr r10, r31
    /* 801DB9E0 001D7640  83 FF 00 0C */	lwz r31, 0xc(r31)
    /* 801DB9E4 001D7644  83 CA 00 08 */	lwz r30, 8(r10)
    /* 801DB9E8 001D7648  81 41 00 00 */	lwz r10, 0(r1)
    /* 801DB9EC 001D764C  80 0A 00 04 */	lwz r0, 4(r10)
    /* 801DB9F0 001D7650  7D 41 53 78 */	mr r1, r10
    /* 801DB9F4 001D7654  7C 08 03 A6 */	mtlr r0
    /* 801DB9F8 001D7658  4E 80 00 20 */	blr
}
#pragma peephole on

void func_801DB9FC(void)
{
    u32 i;
    short j;
    u32 *new_var3;
    u32 new_var4;
    u32 *new_var5;
    if (gUnk8063F304 != 1) {
        i = ARR_SIZE-1, j = 0;
        new_var3 = &i;
        new_var5 = &new_var4;
        do {
            unsigned char r0 = gUnk80491370[j].unk0;
            new_var4 = *new_var3;
            if ((((u32) r0) != 0xff) && gUnk80491370[j].unk4) {
                gUnk80491370[j].unk4(0, gUnk8063F2FC + (r0 << 9), gUnk80491370[j].unk1);
            }
            i = *new_var5;
            j++;
        } while ((i--) != 0);
        gUnk8063F304 = 1;
    }
}

void func_801DBA8C(void)
{
    u32 i;
    short j;
    u32 *new_var3;
    u32 new_var4;
    u32 *new_var5;
    if (gUnk8063F304 != 0) {
        i = ARR_SIZE-1, j = 0;
        new_var3 = &i;
        new_var5 = &new_var4;
        do {
            unsigned char r0 = gUnk80491370[j].unk0;
            new_var4 = *new_var3;
            if ((((u32) r0) != 0xff) && gUnk80491370[j].unk4) {
                gUnk80491370[j].unk4(1, gUnk8063F2FC + (r0 << 9), gUnk80491370[j].unk1);
            }
            i = *new_var5;
            j++;
        } while ((i--) != 0);
        gUnk8063F304 = 0;
    }
}

} //extern "C"
