#include <SDK/mem.h>
#include "code_801DAAE0.h"
#include "code_801DD5C8.h"

// TODO: C++

extern "C" {

// TODO: determine file that defines this
extern MEMHeapHandle lbl_8063E8F8;

struct gUnkClass10
{
    gUnkClass8* unk0; // TODO: check type
    gUnkClass7* unk4;
};

// TODO: gUnkClass10 constructor?
gUnkClass10* func_801DD8C0(gUnkClass10* p1, gUnkClass8* p2)
{
    p1->unk0 = p2;
    p1->unk4 = 0;
    if (p2) {
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
        p1->unk4 = r3;
    }
    return p1;
}

// TODO: Destructor. Get mwcc to generate parts of this function implicitly
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

// NONMATCHING
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
                BOOL flag3 = FALSE; //r3
                if (p1->unk4->unk0 && (p1->unk4->unk6 & 0x1)) {
                    flag3 = TRUE;
                }
                if (flag3)
                    flag2 = FALSE;
                if (flag2 && !(p1->unk4->unk6 & 0x10)) {
                    p1->unk4->unk6 &= ~0x1;
                }
            }
        }
    }
}

// TODO: assuming gUnkClass8* member here
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

func_801DDABC
{
    
}




























} //extern "C"
