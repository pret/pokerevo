#include "ctorStruct.h"
#include "GSanimationObject.h"
#include "GSblendObject.h"

// GSanimationObject and GSblendObject implementations

static ctorStruct gUnk8063F350(1, 4, 0);

GSanimationObject::GSanimationObject(gUnkClass8* list) : unk0(list), unk4(NULL)
{
    if (list)
        unk4 = new gUnkClass7;
}

#ifdef NONMATCHING
// Can't get this to match with an operator delete 
// because mwcc adds an extra beq instruction
GSanimationObject::~GSanimationObject()
{
    if (unk4) {
        delete unk4;
        unk4 = NULL;
    }
}
#else
GSanimationObject::~GSanimationObject()
{
    if (unk4) {
        func_801DAD48(lbl_8063E8F8, unk4);
        unk4 = NULL;
    }
}
#endif

// Note: inferred static inline functions
static inline BOOL inline_TestFunction(gUnkClass7* ptr)
{
    return ptr->unk0 && ptr->unk6 & 0x1;
}

static inline void inline_ClearFunction(gUnkClass7* ptr)
{
    if (!(ptr->unk6 & 0x10))
        ptr->unk6 &= ~0x1;
}

#ifndef NONMATCHING
#pragma regswap 801DDA28 801DDA80 r4 r6 801DD8C0
#endif
void GSanimationObject::func_801DD9C8(float p2)
{
    if (unk4) {
        if (inline_TestFunction(unk4)) {
            func_801DD5C8(unk4, p2);
            func_801DD7FC(unk4, this, 0);
            BOOL flag2 = TRUE;
            u16* new_var = &unk4->unk6;
            if (!(unk4->unk6 & 0x8)) {
                BOOL flag = FALSE;
                if (unk4->unk0 && (*new_var & 0x1))
                    flag = TRUE;
                if (flag)
                    flag2 = FALSE;
            }
            if (flag2) {
                gUnkClass7* r3 = unk4;
                if (!(r3->unk6 & 0x10)) {
                    r3->unk6 &= ~0x1;
                }
            }
        }
    }
}

// Search the linked list referenced by unk0 for a node with the specified id
gUnkClass8* GSanimationObject::func_801DDA94(u16 id)
{
    gUnkClass8* p = unk0;
    while (p) {
        if (p->unk0 == id)
            return p;
        p = p->next;
    }
    return NULL;
}

// Populate unk4 member
void GSanimationObject::func_801DDABC(u16 id, u16 p3, float p4, float p5)
{
    gUnkClass7* r6 = unk4;
    if (r6) {
        if (!(r6->unk6 & 0x10))
            r6->unk6 &= ~0x1;
        gUnkClass8* r3 = func_801DDA94(id);
        if (r3) {
            gUnkClass7* r4 = unk4;
            if (!(r4->unk6 & 0x10)) {
                r4->unk0 = r3;
                r4->unkC = p4;
                r4->unk8 = p5;
                r4->unk4 = (u16)(p3 & 0xFF);
                r4->unk6 = 0x3;
            }
        }
    }
}

// 801DDB64
GSblendObject::GSblendObject(gUnkClass8* list) : GSanimationObject(list), unk8(NULL), unkC(0.0f)
{
    if (unk4)
        unk8 = new gUnkClass7;
}

#ifdef NONMATCHING
// Same issue as ~GSanimationObject()... extra beq instruction
GSblendObject::~GSblendObject()
{
    if (unk8) {
        delete unk8;
        unk8 = NULL;
    }
}
#else
GSblendObject::~GSblendObject()
{
    if (unk8) {
        func_801DAD48(lbl_8063E8F8, unk8);
        unk8 = NULL;
    }
}
#endif

#ifdef NONMATCHING
// regswaps and instruction ordering issue near if (r4 && !(unk4->unk6 & 0x10))
void GSblendObject::func_801DDC84(float p2)
{
    if (unk4) {
        BOOL r29 = inline_TestFunction(unk4);
        
        BOOL r30 = FALSE;
        if (unk8) {
            BOOL r3 = inline_TestFunction(unk8);
            if (r3)
                r30 = TRUE;
            if (r29)
                func_801DD5C8(unk4, p2);
            if (r30) {
                func_801DD5C8(unk8, p2);
                r29 = TRUE;
                unk4->unk6 |= 0x2;
            }
            // Note: inlined function call?
            if (r29) {
                func_801DD7FC(unk4, this, 0);
                BOOL r4 = TRUE;
                if (!(unk4->unk6 & 0x8)) {
                    BOOL r3 = unk4->unk0 && (unk4->unk6 & 0x1);
                    if (r3)
                        r4 = FALSE;
                }
                if (r4 && !(unk4->unk6 & 0x10)) {
                    unk4->unk6 &= ~0x1;
                }
            }
            if (r30) {
                func_801DD7FC(unk8, this, 0);
                BOOL r4 = TRUE;
                if (!(unk8->unk6 & 0x8)) {
                    BOOL r3 = unk8->unk0 && (unk8->unk6 & 0x1);
                    if (r3)
                        r4 = FALSE;
                }
                if (r4 && !(unk8->unk6 & 0x10)) {
                    unk8->unk6 &= ~0x1;
                }
            }
        }
    }
}
#else
asm void GSblendObject::func_801DDC84(float p2)
{
    nofralloc
/* 801DDC84 001D98E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DDC88 001D98E8  7C 08 02 A6 */	mflr r0
/* 801DDC8C 001D98EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DDC90 001D98F0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801DDC94 001D98F4  FF E0 08 90 */	fmr f31, f1
/* 801DDC98 001D98F8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801DDC9C 001D98FC  7C 7F 1B 78 */	mr r31, r3
/* 801DDCA0 001D9900  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801DDCA4 001D9904  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801DDCA8 001D9908  80 83 00 04 */	lwz r4, 4(r3)
/* 801DDCAC 001D990C  2C 04 00 00 */	cmpwi r4, 0
/* 801DDCB0 001D9910  41 82 01 7C */	beq lbl_801DDE2C
/* 801DDCB4 001D9914  80 04 00 00 */	lwz r0, 0(r4)
/* 801DDCB8 001D9918  3B A0 00 00 */	li r29, 0
/* 801DDCBC 001D991C  2C 00 00 00 */	cmpwi r0, 0
/* 801DDCC0 001D9920  41 82 00 14 */	beq lbl_801DDCD4
/* 801DDCC4 001D9924  A0 04 00 06 */	lhz r0, 6(r4)
/* 801DDCC8 001D9928  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801DDCCC 001D992C  41 82 00 08 */	beq lbl_801DDCD4
/* 801DDCD0 001D9930  3B A0 00 01 */	li r29, 1
lbl_801DDCD4:
/* 801DDCD4 001D9934  80 A3 00 08 */	lwz r5, 8(r3)
/* 801DDCD8 001D9938  3B C0 00 00 */	li r30, 0
/* 801DDCDC 001D993C  2C 05 00 00 */	cmpwi r5, 0
/* 801DDCE0 001D9940  41 82 00 30 */	beq lbl_801DDD10
/* 801DDCE4 001D9944  80 05 00 00 */	lwz r0, 0(r5)
/* 801DDCE8 001D9948  38 60 00 00 */	li r3, 0
/* 801DDCEC 001D994C  2C 00 00 00 */	cmpwi r0, 0
/* 801DDCF0 001D9950  41 82 00 14 */	beq lbl_801DDD04
/* 801DDCF4 001D9954  A0 05 00 06 */	lhz r0, 6(r5)
/* 801DDCF8 001D9958  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801DDCFC 001D995C  41 82 00 08 */	beq lbl_801DDD04
/* 801DDD00 001D9960  38 60 00 01 */	li r3, 1
lbl_801DDD04:
/* 801DDD04 001D9964  2C 03 00 00 */	cmpwi r3, 0
/* 801DDD08 001D9968  41 82 00 08 */	beq lbl_801DDD10
/* 801DDD0C 001D996C  3B C0 00 01 */	li r30, 1
lbl_801DDD10:
/* 801DDD10 001D9970  2C 1D 00 00 */	cmpwi r29, 0
/* 801DDD14 001D9974  41 82 00 10 */	beq lbl_801DDD24
/* 801DDD18 001D9978  FC 20 F8 90 */	fmr f1, f31
/* 801DDD1C 001D997C  7C 83 23 78 */	mr r3, r4
/* 801DDD20 001D9980  4B FF F8 A9 */	bl func_801DD5C8
lbl_801DDD24:
/* 801DDD24 001D9984  2C 1E 00 00 */	cmpwi r30, 0
/* 801DDD28 001D9988  41 82 00 24 */	beq lbl_801DDD4C
/* 801DDD2C 001D998C  FC 20 F8 90 */	fmr f1, f31
/* 801DDD30 001D9990  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DDD34 001D9994  4B FF F8 95 */	bl func_801DD5C8
/* 801DDD38 001D9998  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DDD3C 001D999C  3B A0 00 01 */	li r29, 1
/* 801DDD40 001D99A0  A0 03 00 06 */	lhz r0, 6(r3)
/* 801DDD44 001D99A4  60 00 00 02 */	ori r0, r0, 2
/* 801DDD48 001D99A8  B0 03 00 06 */	sth r0, 6(r3)
lbl_801DDD4C:
/* 801DDD4C 001D99AC  2C 1D 00 00 */	cmpwi r29, 0
/* 801DDD50 001D99B0  41 82 00 6C */	beq lbl_801DDDBC
/* 801DDD54 001D99B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DDD58 001D99B8  7F E4 FB 78 */	mr r4, r31
/* 801DDD5C 001D99BC  38 A0 00 00 */	li r5, 0
/* 801DDD60 001D99C0  4B FF FA 9D */	bl func_801DD7FC
/* 801DDD64 001D99C4  80 DF 00 04 */	lwz r6, 4(r31)
/* 801DDD68 001D99C8  38 80 00 01 */	li r4, 1
/* 801DDD6C 001D99CC  A0 A6 00 06 */	lhz r5, 6(r6)
/* 801DDD70 001D99D0  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 801DDD74 001D99D4  40 82 00 2C */	bne lbl_801DDDA0
/* 801DDD78 001D99D8  80 06 00 00 */	lwz r0, 0(r6)
/* 801DDD7C 001D99DC  38 60 00 00 */	li r3, 0
/* 801DDD80 001D99E0  2C 00 00 00 */	cmpwi r0, 0
/* 801DDD84 001D99E4  41 82 00 10 */	beq lbl_801DDD94
/* 801DDD88 001D99E8  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 801DDD8C 001D99EC  41 82 00 08 */	beq lbl_801DDD94
/* 801DDD90 001D99F0  38 60 00 01 */	li r3, 1
lbl_801DDD94:
/* 801DDD94 001D99F4  2C 03 00 00 */	cmpwi r3, 0
/* 801DDD98 001D99F8  41 82 00 08 */	beq lbl_801DDDA0
/* 801DDD9C 001D99FC  38 80 00 00 */	li r4, 0
lbl_801DDDA0:
/* 801DDDA0 001D9A00  2C 04 00 00 */	cmpwi r4, 0
/* 801DDDA4 001D9A04  41 82 00 18 */	beq lbl_801DDDBC
/* 801DDDA8 001D9A08  A0 66 00 06 */	lhz r3, 6(r6)
/* 801DDDAC 001D9A0C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 801DDDB0 001D9A10  40 82 00 0C */	bne lbl_801DDDBC
/* 801DDDB4 001D9A14  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 801DDDB8 001D9A18  B0 06 00 06 */	sth r0, 6(r6)
lbl_801DDDBC:
/* 801DDDBC 001D9A1C  2C 1E 00 00 */	cmpwi r30, 0
/* 801DDDC0 001D9A20  41 82 00 6C */	beq lbl_801DDE2C
/* 801DDDC4 001D9A24  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DDDC8 001D9A28  7F E4 FB 78 */	mr r4, r31
/* 801DDDCC 001D9A2C  38 A0 00 01 */	li r5, 1
/* 801DDDD0 001D9A30  4B FF FA 2D */	bl func_801DD7FC
/* 801DDDD4 001D9A34  80 DF 00 08 */	lwz r6, 8(r31)
/* 801DDDD8 001D9A38  38 80 00 01 */	li r4, 1
/* 801DDDDC 001D9A3C  A0 A6 00 06 */	lhz r5, 6(r6)
/* 801DDDE0 001D9A40  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 801DDDE4 001D9A44  40 82 00 2C */	bne lbl_801DDE10
/* 801DDDE8 001D9A48  80 06 00 00 */	lwz r0, 0(r6)
/* 801DDDEC 001D9A4C  38 60 00 00 */	li r3, 0
/* 801DDDF0 001D9A50  2C 00 00 00 */	cmpwi r0, 0
/* 801DDDF4 001D9A54  41 82 00 10 */	beq lbl_801DDE04
/* 801DDDF8 001D9A58  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 801DDDFC 001D9A5C  41 82 00 08 */	beq lbl_801DDE04
/* 801DDE00 001D9A60  38 60 00 01 */	li r3, 1
lbl_801DDE04:
/* 801DDE04 001D9A64  2C 03 00 00 */	cmpwi r3, 0
/* 801DDE08 001D9A68  41 82 00 08 */	beq lbl_801DDE10
/* 801DDE0C 001D9A6C  38 80 00 00 */	li r4, 0
lbl_801DDE10:
/* 801DDE10 001D9A70  2C 04 00 00 */	cmpwi r4, 0
/* 801DDE14 001D9A74  41 82 00 18 */	beq lbl_801DDE2C
/* 801DDE18 001D9A78  A0 66 00 06 */	lhz r3, 6(r6)
/* 801DDE1C 001D9A7C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 801DDE20 001D9A80  40 82 00 0C */	bne lbl_801DDE2C
/* 801DDE24 001D9A84  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 801DDE28 001D9A88  B0 06 00 06 */	sth r0, 6(r6)
lbl_801DDE2C:
/* 801DDE2C 001D9A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DDE30 001D9A90  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801DDE34 001D9A94  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801DDE38 001D9A98  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801DDE3C 001D9A9C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801DDE40 001D9AA0  7C 08 03 A6 */	mtlr r0
/* 801DDE44 001D9AA4  38 21 00 20 */	addi r1, r1, 0x20
/* 801DDE48 001D9AA8  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

void GSblendObject::func_801DDE4C(u16 id, u16 p3, float p4, float p5)
{
    if (unk8) {
        unkC = 0.0f;
        if (inline_TestFunction(unk8))
            inline_ClearFunction(unk8);
    }
    func_801DDABC(id, p3, p4, p5);
}

// NOTE: nearly identical to func_801DDABC. Modifies unk8 instead of unk4, and initializes unkC
// Populate structure referenced by unk8, attaching it to a gUnkClass8 with the matching id
void GSblendObject::func_801DDEA0(u16 id, u16 p3, float p4, float p5, float p6)
{
    if (unk8) {
        inline_ClearFunction(unk8);
        gUnkClass8* r3 = func_801DDA94(id);
        if (r3) {
            gUnkClass7* r4 = unk8;
            if (!(r4->unk6 & 0x10)) {
                r4->unk0 = r3;
                r4->unkC = p4;
                r4->unk8 = p5;
                r4->unk4 = (u16)(p3 & 0xFF);
                r4->unk6 = 3;
            }
        }
        unkC = p6;
    }
}

