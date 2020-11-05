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

// TODO: gUnkClass10 constructor?
gUnkClass10* func_801DD8C0(gUnkClass10* p1, gUnkClass8* p2)
{
    p1->unk0 = p2;
    p1->unk4 = NULL;
    if (p2) {
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
// NONMATCHING
void func_801DD9C8(gUnkClass10* p1, float p2)
{
    if (p1->unk4) {
        if (helper_1(p1->unk4)) {
            func_801DD5C8(p1->unk4, p2);
            func_801DD7FC(p1->unk4, p1, 0);
            BOOL flag2 = TRUE; //r4
            if (!(p1->unk4->unk6 & 0x8)) {
                if (helper_1(p1->unk4))
                    flag2 = FALSE;
                if (flag2 && !(p1->unk4->unk6 & 0x10)) {
                    p1->unk4->unk6 &= ~0x1;
                }
            }
        }
    }
}

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

// allocate gUnkClass8 from heap, set unk4 member of p1
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


















} //extern "C"
