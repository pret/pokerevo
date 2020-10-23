#include "types.h"
#include "ctorStruct.h"
#include "Runtime/__mem.h"
#include "code_801DAAE0.h"
#include "code_801DB040.h"
#include "code_801DBB3C.h"

namespace
{
    
        // might be same as above
    struct unkClass2
    {
        unkClass2* unk0;
        gUnkClass1* unk4;
        u8 unk8[4];
        size_t unkC;
        
        
    };
    
    // gUnkClass2?
    struct unkClass
    {
        u8 pad[0x8];
        u32 unk8;
        u32 unkC;
        void* unk10;
        u32 unk14;
        unkClass2* unk18;
    };
    

    
}


extern "C" {

//static
u32 func_801DBB3C(void)
{
    return 0;
}

//static
void func_801DBB44(u32)
{
    
}

//static
#ifdef NONMATCHING
void func_801DBB48(unkClass *p1, u32 p2, u32 p3)
{
    //p2 = r30
    u32 r31 = (p3+7) & ~0x3; // element size
    p1->unk8 = p2; // number of elements
    p1->unkC = r31;
    // void* func_801DAD98(u32 size); allocate and 0 fill
    void* data = func_801DAD98((p2+1) * r31); //r3
    p1->unk10 = data;
    p1->unk18 = data;
    p1->unk14 = (u8*)data + p2 * r31;
    if (p2) {
        if (p2 > 8) {
            u32 r4 = p2 - 8;
            if (r4 > 0) {
                for (size_t i = (r4+7)/8; i != 0; i--) {
                    // 8 stores per iteration
                    
                    ...
                }
            }
        }
    }
}
#else
asm void func_801DBB48(unkClass *p1, u32 p2, u32 p3)
{
    /* 801DBB48 001D77A8  94 21 FF E0 */	stwu r1, -0x20(r1)
    /* 801DBB4C 001D77AC  7C 08 02 A6 */	mflr r0
    /* 801DBB50 001D77B0  38 A5 00 07 */	addi r5, r5, 7
    /* 801DBB54 001D77B4  90 01 00 24 */	stw r0, 0x24(r1)
    /* 801DBB58 001D77B8  38 04 00 01 */	addi r0, r4, 1
    /* 801DBB5C 001D77BC  93 E1 00 1C */	stw r31, 0x1c(r1)
    /* 801DBB60 001D77C0  54 BF 00 3A */	rlwinm r31, r5, 0, 0, 0x1d
    /* 801DBB64 001D77C4  93 C1 00 18 */	stw r30, 0x18(r1)
    /* 801DBB68 001D77C8  7C 9E 23 78 */	mr r30, r4
    /* 801DBB6C 001D77CC  93 A1 00 14 */	stw r29, 0x14(r1)
    /* 801DBB70 001D77D0  7C 7D 1B 78 */	mr r29, r3
    /* 801DBB74 001D77D4  90 83 00 08 */	stw r4, 8(r3)
    /* 801DBB78 001D77D8  93 E3 00 0C */	stw r31, 0xc(r3)
    /* 801DBB7C 001D77DC  7C 60 F9 D6 */	mullw r3, r0, r31
    /* 801DBB80 001D77E0  4B FF F2 19 */	bl func_801DAD98
    /* 801DBB84 001D77E4  7C 1E F9 D6 */	mullw r0, r30, r31
    /* 801DBB88 001D77E8  2C 1E 00 00 */	cmpwi r30, 0
    /* 801DBB8C 001D77EC  90 7D 00 10 */	stw r3, 0x10(r29)
    /* 801DBB90 001D77F0  39 00 00 00 */	li r8, 0
    /* 801DBB94 001D77F4  38 E0 00 00 */	li r7, 0
    /* 801DBB98 001D77F8  90 7D 00 18 */	stw r3, 0x18(r29)
    /* 801DBB9C 001D77FC  7C 03 02 14 */	add r0, r3, r0
    /* 801DBBA0 001D7800  90 1D 00 14 */	stw r0, 0x14(r29)
    /* 801DBBA4 001D7804  41 82 00 90 */	beq lbl_801DBC34
    /* 801DBBA8 001D7808  28 1E 00 08 */	cmplwi r30, 8
    /* 801DBBAC 001D780C  38 9E FF F8 */	addi r4, r30, -8
    /* 801DBBB0 001D7810  40 81 00 60 */	ble lbl_801DBC10
    /* 801DBBB4 001D7814  38 04 00 07 */	addi r0, r4, 7
    /* 801DBBB8 001D7818  54 00 E8 FE */	srwi r0, r0, 3
    /* 801DBBBC 001D781C  7C 09 03 A6 */	mtctr r0
    /* 801DBBC0 001D7820  28 04 00 00 */	cmplwi r4, 0
    /* 801DBBC4 001D7824  40 81 00 4C */	ble lbl_801DBC10
    lbl_801DBBC8:
    /* 801DBBC8 001D7828  7C A3 FA 14 */	add r5, r3, r31
    /* 801DBBCC 001D782C  38 E7 00 08 */	addi r7, r7, 8
    /* 801DBBD0 001D7830  90 A3 00 00 */	stw r5, 0(r3)
    /* 801DBBD4 001D7834  7C 85 FA 14 */	add r4, r5, r31
    /* 801DBBD8 001D7838  7C 64 FA 14 */	add r3, r4, r31
    /* 801DBBDC 001D783C  90 85 00 00 */	stw r4, 0(r5)
    /* 801DBBE0 001D7840  7C C3 FA 14 */	add r6, r3, r31
    /* 801DBBE4 001D7844  7C A6 FA 14 */	add r5, r6, r31
    /* 801DBBE8 001D7848  90 64 00 00 */	stw r3, 0(r4)
    /* 801DBBEC 001D784C  7C 85 FA 14 */	add r4, r5, r31
    /* 801DBBF0 001D7850  7D 04 FA 14 */	add r8, r4, r31
    /* 801DBBF4 001D7854  90 C3 00 00 */	stw r6, 0(r3)
    /* 801DBBF8 001D7858  7C 68 FA 14 */	add r3, r8, r31
    /* 801DBBFC 001D785C  90 A6 00 00 */	stw r5, 0(r6)
    /* 801DBC00 001D7860  7C 86 F9 2E */	stwx r4, r6, r31
    /* 801DBC04 001D7864  7D 05 F9 2E */	stwx r8, r5, r31
    /* 801DBC08 001D7868  7C 64 F9 2E */	stwx r3, r4, r31
    /* 801DBC0C 001D786C  42 00 FF BC */	bdnz lbl_801DBBC8
    lbl_801DBC10:
    /* 801DBC10 001D7870  7C 07 F0 50 */	subf r0, r7, r30
    /* 801DBC14 001D7874  7C 09 03 A6 */	mtctr r0
    /* 801DBC18 001D7878  7C 07 F0 40 */	cmplw r7, r30
    /* 801DBC1C 001D787C  40 80 00 18 */	bge lbl_801DBC34
    lbl_801DBC20:
    /* 801DBC20 001D7880  7C 03 FA 14 */	add r0, r3, r31
    /* 801DBC24 001D7884  7C 68 1B 78 */	mr r8, r3
    /* 801DBC28 001D7888  90 03 00 00 */	stw r0, 0(r3)
    /* 801DBC2C 001D788C  7C 03 03 78 */	mr r3, r0
    /* 801DBC30 001D7890  42 00 FF F0 */	bdnz lbl_801DBC20
    lbl_801DBC34:
    /* 801DBC34 001D7894  38 00 00 00 */	li r0, 0
    /* 801DBC38 001D7898  90 08 00 00 */	stw r0, 0(r8)
    /* 801DBC3C 001D789C  83 E1 00 1C */	lwz r31, 0x1c(r1)
    /* 801DBC40 001D78A0  83 C1 00 18 */	lwz r30, 0x18(r1)
    /* 801DBC44 001D78A4  83 A1 00 14 */	lwz r29, 0x14(r1)
    /* 801DBC48 001D78A8  80 01 00 24 */	lwz r0, 0x24(r1)
    /* 801DBC4C 001D78AC  7C 08 03 A6 */	mtlr r0
    /* 801DBC50 001D78B0  38 21 00 20 */	addi r1, r1, 0x20
    /* 801DBC54 001D78B4  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

// allocate a linked list node from the free store
gUnkClass1* func_801DBC58(gUnkClass2* p1)
{
    gUnkClass3* r31 = p1->unk18;
    u32 r30 = func_801DBB3C();
    func_801DBB44(0);
    if (r31) {
        p1->unk18 = r31->unk0; // point unk18 to possible next free block?
        goto passCheck;
    }
    func_801DBB44(r30);
    return NULL;
passCheck:
    func_801DBB44(r30);
    memset(r31, 0, p1->unkC);
    if (++p1->unk0 > p1->unk4)
        p1->unk4 = p1->unk0;
    return &r31->unk4;
}

// return node p2 to free store p1
void func_801DBD00(gUnkClass2* p1, gUnkClass1* p2)
{
    u32 r31;
    if (p2) {
        gUnkClass3* r30 = (gUnkClass3*)((u8*)p2 - 4);
        r30->unk0 = p1->unk18;
        p1->unk0--;
        r31 = func_801DBB3C();
        func_801DBB44(0);
        p1->unk18 = r30;
        func_801DBB44(r31);
    }
}



}
