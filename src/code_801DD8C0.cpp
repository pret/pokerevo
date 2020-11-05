#include "ctorStruct.h"
#include <SDK/mem.h>
#include "code_801DAAE0.h"
#include "code_801DD5C8.h"

// TODO: C++

static ctorStruct gUnk8063F350(1, 4, 0);

extern "C" {

// TODO: determine file that defines this
extern MEMHeapHandle lbl_8063E8F8;

struct gUnkClass10
{
    gUnkClass8* unk0; // TODO: check type
    gUnkClass7* unk4;
    
    // TODO: begin derived class?
    gUnkClass7* unk8;
    float unkC;
};


#if 1

// TODO: gUnkClass10 constructor?
gUnkClass10* func_801DD8C0(gUnkClass10* p1, gUnkClass8* p2)
{
    p1->unk0 = p2;
    p1->unk4 = NULL;
    if (p2) {
        // TODO: inlined call to an overloaded new?
        gUnkClass7* r3;
        if (func_801DAB28())
            r3 = (gUnkClass7*)func_801DAC94(lbl_8063E8F8, sizeof(gUnkClass7));
        else
            r3 = NULL;
        
        // TODO: inlined gUnkClass7 constructor?
        if (r3) {
            r3->unk0 = NULL;
            r3->unk4 = 0;
            r3->unk6 = 0xC;
            r3->unk8 = 1.0f;
            r3->unkC = 0.0f;
        }
        p1->unk4 = r3;
    }
    return p1;
}

// TODO: gUnkClass10 destructor? Get mwcc to generate parts of this function implicitly
gUnkClass10* func_801DD958(gUnkClass10* p1, s32 p2)
{
    if (p1) {
        if (p1->unk4) {
            func_801DAD48(lbl_8063E8F8, p1->unk4);
            p1->unk4 = NULL;
        }
        if (p2 > 0)
            func_801DAD48(lbl_8063E8F8, p1);
    }
    return p1;
}

#endif


// Note: inferred static inline functions
static inline BOOL helper_1(gUnkClass7* p1)
{
    return p1->unk0 && (p1->unk6 & 0x1);
}

static inline BOOL helper_2(gUnkClass7* p1)
{
    return !helper_1(p1) && !(p1->unk6 & 0x10);
}

// TODO: "flag"s are the results of inline functions?
#define NONMATCHING
#ifdef NONMATCHING
void func_801DD9C8(gUnkClass10* p1, float p2)
{
    if (p1->unk4) {
        BOOL flag = FALSE;
        if (p1->unk4->unk0 && (p1->unk4->unk6 & 0x1))
            flag = TRUE;
        if (flag) {
            func_801DD5C8(p1->unk4, p2);
            func_801DD7FC(p1->unk4, p1, 0);
            BOOL flag2 = TRUE; //r4
            if (!(p1->unk4->unk6 & 0x8)) {
                flag = FALSE;
                if (p1->unk4->unk0 && (p1->unk4->unk6 & 0x1))
                    flag = TRUE;
                if (flag)
                    flag2 = FALSE;
            }
            if (flag2) {
                gUnkClass7* r3 = p1->unk4;
                if (!(r3->unk6 & 0x10)) {
                    r3->unk6 &= ~0x1;
                }
            }
        }
    }
}
#else
asm void func_801DD9C8(gUnkClass10* p1, float p2)
{
    nofralloc
/* 801DD9C8 001D9628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DD9CC 001D962C  7C 08 02 A6 */	mflr r0
/* 801DD9D0 001D9630  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DD9D4 001D9634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DD9D8 001D9638  7C 7F 1B 78 */	mr r31, r3
/* 801DD9DC 001D963C  80 83 00 04 */	lwz r4, 4(r3)
/* 801DD9E0 001D9640  2C 04 00 00 */	cmpwi r4, 0
/* 801DD9E4 001D9644  41 82 00 9C */	beq lbl_801DDA80
/* 801DD9E8 001D9648  80 04 00 00 */	lwz r0, 0(r4)
/* 801DD9EC 001D964C  38 60 00 00 */	li r3, 0
/* 801DD9F0 001D9650  2C 00 00 00 */	cmpwi r0, 0
/* 801DD9F4 001D9654  41 82 00 14 */	beq lbl_801DDA08
/* 801DD9F8 001D9658  A0 04 00 06 */	lhz r0, 6(r4)
/* 801DD9FC 001D965C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801DDA00 001D9660  41 82 00 08 */	beq lbl_801DDA08
/* 801DDA04 001D9664  38 60 00 01 */	li r3, 1
lbl_801DDA08:
/* 801DDA08 001D9668  2C 03 00 00 */	cmpwi r3, 0
/* 801DDA0C 001D966C  41 82 00 74 */	beq lbl_801DDA80
/* 801DDA10 001D9670  7C 83 23 78 */	mr r3, r4
/* 801DDA14 001D9674  4B FF FB B5 */	bl func_801DD5C8
/* 801DDA18 001D9678  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DDA1C 001D967C  7F E4 FB 78 */	mr r4, r31
/* 801DDA20 001D9680  38 A0 00 00 */	li r5, 0
/* 801DDA24 001D9684  4B FF FD D9 */	bl func_801DD7FC
/* 801DDA28 001D9688  80 DF 00 04 */	lwz r6, 4(r31)
/* 801DDA2C 001D968C  38 80 00 01 */	li r4, 1
/* 801DDA30 001D9690  A0 A6 00 06 */	lhz r5, 6(r6)
/* 801DDA34 001D9694  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 801DDA38 001D9698  40 82 00 2C */	bne lbl_801DDA64
/* 801DDA3C 001D969C  80 06 00 00 */	lwz r0, 0(r6)
/* 801DDA40 001D96A0  38 60 00 00 */	li r3, 0
/* 801DDA44 001D96A4  2C 00 00 00 */	cmpwi r0, 0
/* 801DDA48 001D96A8  41 82 00 10 */	beq lbl_801DDA58
/* 801DDA4C 001D96AC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 801DDA50 001D96B0  41 82 00 08 */	beq lbl_801DDA58
/* 801DDA54 001D96B4  38 60 00 01 */	li r3, 1
lbl_801DDA58:
/* 801DDA58 001D96B8  2C 03 00 00 */	cmpwi r3, 0
/* 801DDA5C 001D96BC  41 82 00 08 */	beq lbl_801DDA64
/* 801DDA60 001D96C0  38 80 00 00 */	li r4, 0
lbl_801DDA64:
/* 801DDA64 001D96C4  2C 04 00 00 */	cmpwi r4, 0
/* 801DDA68 001D96C8  41 82 00 18 */	beq lbl_801DDA80
/* 801DDA6C 001D96CC  A0 66 00 06 */	lhz r3, 6(r6)
/* 801DDA70 001D96D0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 801DDA74 001D96D4  40 82 00 0C */	bne lbl_801DDA80
/* 801DDA78 001D96D8  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 801DDA7C 001D96DC  B0 06 00 06 */	sth r0, 6(r6)
lbl_801DDA80:
/* 801DDA80 001D96E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DDA84 001D96E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DDA88 001D96E8  7C 08 03 A6 */	mtlr r0
/* 801DDA8C 001D96EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801DDA90 001D96F0  4E 80 00 20 */	blr
}
#pragma peephole on
#endif


#if 1

// TODO: assuming gUnkClass8* member here
// search linked list
//static
gUnkClass8* func_801DDA94(gUnkClass10* p1, u16 p2)
{
    gUnkClass8* p = p1->unk0;
    while (p) {
        if (p->unk0 == p2)
            return p;
        p = p->next;
    }
    return NULL;
}

// set unk4 member of p1
// TODO: parameterized base class constructor?
void func_801DDABC(gUnkClass10* p1, u16 p2, u16 p3, float p4, float p5)
{
    gUnkClass7* r6 = p1->unk4;
    if (r6) {
        if (!(r6->unk6 & 0x10))
            r6->unk6 &= ~0x1;
        gUnkClass8* r3 = func_801DDA94(p1, p2);
        if (r3) {
            gUnkClass7* r4 = p1->unk4;
            if (!(r4->unk6 & 0x10)) {
                r4->unk0 = r3;
                r4->unkC = p4;
                r4->unk8 = p5;
                r4->unk4 = p3 & 0xFF;
                r4->unk6 = 3;
            }
        }
    }
}

// TODO: derived class constructor?
gUnkClass10* func_801DDB64(gUnkClass10* p1, gUnkClass8* p2)
{
    func_801DD8C0(p1, p2);
    p1->unk8 = NULL;
    p1->unkC = 0.0f;
    if (p1->unk4) {
        gUnkClass7* r3;
        if (func_801DAB28())
            r3 = (gUnkClass7*)func_801DAC94(lbl_8063E8F8, sizeof(gUnkClass7));
        else
            r3 = NULL;

        if (r3) {
            r3->unk0 = NULL;
            r3->unk4 = 0;
            r3->unk6 = 0xC;
            r3->unk8 = 1.0f;
            r3->unkC = 0.0f;
        }
        p1->unk8 = r3;
    }
    return p1;
}

// TODO: derived class destructor?
gUnkClass10* func_801DDC08(gUnkClass10* p1, s32 p2)
{
    if (p1) {
        if (p1->unk8) {
            func_801DAD48(lbl_8063E8F8, p1->unk8);
            p1->unk8 = NULL;
        }
        func_801DD958(p1, 0);
        if (p2 > 0)
            func_801DAD48(lbl_8063E8F8, p1);
    }
    return p1;
}


// derived class method calling base class method?
// NONMATCHING
void func_801DDC84(gUnkClass10* p1, float p2)
{
    if (p1->unk4) {
        BOOL r29 = helper_1(p1->unk4);
        
        BOOL r30 = FALSE;
        if (p1->unk8) {
            BOOL r3 = helper_1(p1->unk8);
            if (r3)
                r30 = TRUE;
            if (r29)
                func_801DD5C8(p1->unk4, p2);
            if (r30) {
                func_801DD5C8(p1->unk8, p2);
                r29 = TRUE;
                p1->unk4->unk6 |= 0x2;
            }
            // inlined function call?
            if (r29) {
                func_801DD7FC(p1->unk4, p1, 0);
                BOOL r4 = TRUE;
                if (!(p1->unk4->unk6 & 0x8)) {
                    BOOL r3 = helper_1(p1->unk4);
                    if (r3)
                        r4 = FALSE;
                }
                if (r4 && !(p1->unk4->unk6 & 0x10)) {
                    p1->unk4->unk6 &= ~0x1;
                }
            }
            if (r30) {
                func_801DD7FC(p1->unk8, p1, 0);
                BOOL r4 = TRUE;
                if (!(p1->unk8->unk6 & 0x8)) {
                    BOOL r3 = helper_1(p1->unk8);
                    if (r3)
                        r4 = FALSE;
                }
                if (r4 && !(p1->unk8->unk6 & 0x10)) {
                    p1->unk8->unk6 &= ~0x1;
                }
            }
        }
    }
}

// TODO: inlining
// TODO: parameterized derived class constructor?
// This matches
void func_801DDE4C(gUnkClass10* p1, u16 p2, u16 p3, float p4, float p5)
{
    if (p1->unk8) {
        BOOL r6 = FALSE;
        p1->unkC = 0.0f;
        if (p1->unk8->unk0 && (p1->unk8->unk6 & 0x1)) {
            r6 = TRUE;
        }
        if (r6 && !(p1->unk8->unk6 & 0x10)) {
            p1->unk8->unk6 &= ~0x1;
        }
    }
    func_801DDABC(p1, p2, p3, p4, p5);
}

// derived class method?
// matches
void func_801DDEA0(gUnkClass10* p1, u16 p2, u16 p3, float p4, float p5, float p6)
{
    if (p1->unk8) {
        if (!(p1->unk8->unk6 & 0x10)) {
            p1->unk8->unk6 &= ~0x1;
        }
        gUnkClass8* r3 = func_801DDA94(p1, p2);
        
        if (r3) {
            gUnkClass7* r4 = p1->unk8;
            if (!(r4->unk6 & 0x10)) {
                r4->unk0 = r3;
                r4->unkC = p4;
                r4->unk8 = p5;
                r4->unk4 = p3 & 0xFF;
                r4->unk6 = 3;
            }
        }
        p1->unkC = p6;
    }
}


#endif

} //extern "C"
