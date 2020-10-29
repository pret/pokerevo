#include "ctorStruct.h"
#include <string.h>
#include <SDK/mem.h>
#include "code_801DAAE0.h"
#include "code_801DBB3C.h"
#include "code_801DB040.h"

static gUnkClass1* func_801DB040(u32 p1, u32 p2);

static ctorStruct gUnk8063F2E0(1, 4, 0);
static gUnkClass1* gUnk8063F2E8;
static gUnkClass2* gUnk8063F2EC;

extern "C" {

static gUnkClass1* func_801DB040(u32 p1, u32 p2)
{
    for (gUnkClass1* r5 = gUnk8063F2E8; r5; r5 = r5->unk1C)
        if (r5->unk10 == p1 && r5->unk14 == p2)
            return r5;
    return NULL;
}

gUnkClass1* func_801DB07C(gUnkClass1* p1, BOOL p2)
{
    gUnkClass1* r31;
    if (p1->unk18 && p1->unk18(p1->unkC, p1->unk10, p1->unk14) == 0)
        return p1->unk1C;
    if (p1->unk0) {
        if (p1->unkC) {
            func_801DAD48(p1->unk8, p1->unkC);
            p1->unkC = NULL;
        }
        p1->unk0 = 0;
    }
    p1->unkC = NULL;
    r31 = p1->unk1C;
    if (p2) {
        gUnkClass1* r3 = p1->unk20;
        if (r3)
            r3->unk1C = r31;
        else
            gUnk8063F2E8 = r31;
        
        if (r31)
            r31->unk20 = p1->unk20;
        
        func_801DBD00(gUnk8063F2EC, p1);
    }
    return r31;
}

void func_801DB15C(u32 p1)
{
    gUnk8063F2EC = func_801DBD74(p1, sizeof(gUnkClass1));
}

static void* func_801DB184(MEMHeapHandle heap, u32 size, u32 p3, u32 p4, gFuncPtr1 p5)
{
    if (func_801DB040(p3, p4))
        return NULL;
    gUnkClass1* r31 = func_801DBC58(gUnk8063F2EC);
    if (!r31)
        return NULL;
    if ((r31->unkC = func_801DAC94(heap, size)) == NULL) {
        func_801DBD00(gUnk8063F2EC, r31);
        return NULL;
    }
    if (gUnk8063F2E8)
        gUnk8063F2E8->unk20 = r31;
    
    r31->unk1C = gUnk8063F2E8;
    r31->unk20 = NULL;
    gUnk8063F2E8 = r31;
    
    r31->unk0 = 1;
    r31->unk8 = heap;
    r31->unk1 = 0;
    r31->unk10 = p3;
    r31->unk14 = p4;
    r31->unk18 = p5;
    r31->unk4 = 0;
    return r31->unkC;
}

void* func_801DB270(MEMHeapHandle heap, u32 size, int align, u32 p4, u32 p5, gFuncPtr1 p6)
{
    if (func_801DB040(p4, p5))
        return NULL;
    gUnkClass1* r31 = func_801DBC58(gUnk8063F2EC);
    if (!r31)
        return NULL;
    if ((r31->unkC = func_801DAD08(heap, size, align)) == NULL) {
        func_801DBD00(gUnk8063F2EC, r31);
        return NULL;
    }
    if (gUnk8063F2E8)
        gUnk8063F2E8->unk20 = r31;
    
    r31->unk1C = gUnk8063F2E8;
    r31->unk20 = NULL;
    gUnk8063F2E8 = r31;
    
    r31->unk0 = 1;
    r31->unk8 = heap;
    r31->unk1 = 0;
    r31->unk10 = p4;
    r31->unk14 = p5;
    r31->unk18 = p6;
    return r31->unkC;
}

void* func_801DB360(u32 size, int align, u32 p3, u32 p4, gFuncPtr1 p5)
{
    return func_801DB270(func_801DAC0C(), size, align, p3, p4, p5);
}

void func_801DB3BC(void* p1, u32 p2, u32 p3, gFuncPtr1 p4)
{
    gUnkClass1* r31 = func_801DB040(p2, p3);
    if (!p1) {
        if (r31)
            func_801DB07C(r31, TRUE);
        return;
    }
    
    if (r31) {
        if (!r31->unk0) {
            if (r31->unkC != p1) {
                if (r31->unk18)
                    r31->unk18(r31->unkC, p2, p3);
                r31->unkC = p1;
            }
            r31->unk18 = p4;
        }
    } else {
        gUnkClass1* r3 = func_801DBC58(gUnk8063F2EC);
        if (r3) {
            if (gUnk8063F2E8)
                gUnk8063F2E8->unk20 = r3;
            r3->unk1C = gUnk8063F2E8;
            r3->unk20 = NULL;
            gUnk8063F2E8 = r3;
            r3->unk0 = 0;
            r3->unk1 = 0;
            r3->unkC = p1;
            r3->unk10 = p2;
            r3->unk14 = p3;
            r3->unk18 = p4;
        }
    }
}

void* func_801DB4BC(u32 p1, u32 p2)
{
    gUnkClass1* r3 = func_801DB040(p1, p2);
    if (!r3 || r3->unk1)
        return NULL;
    return r3->unkC;
}

u32 func_801DB4FC(u32 p1, u32 p2)
{
    gUnkClass1* r3 = func_801DB040(p1, p2);
    if (!r3 || r3->unk1)
        return 0;
    return ++r3->unk4;
}

u32 func_801DB548(u32 p1, u32 p2)
{
    gUnkClass1* r31 = func_801DB040(p1, p2);
    if (!r31 || r31->unk1)
        return 0;
    if (r31->unk4 == 0) {
        func_801DB644(p1, p2);
        return 0;
    }
    if (--r31->unk4 == 0)
        func_801DB644(p1, p2);
    return r31->unk4;
}

u32 func_801DB5E4(u32 p1, u32 p2)
{
    gUnkClass1* r3 = func_801DB040(p1, p2);
    if (!r3)
        return 0;
    if (!r3->unkC)
        return 0;
    if (r3->unk0 == 0)
        return 0;
    return func_801DAEE0(r3->unkC);
}

void func_801DB644(u32 p1, u32 p2)
{
    gUnkClass1* r3 = func_801DB040(p1, p2);
    if (r3)
        func_801DB07C(r3, TRUE);
}

void func_801DB674(u32 p1)
{
    gUnkClass1* p = gUnk8063F2E8;
    while (p)
        p = (p->unk10 == p1) ? func_801DB07C(p, TRUE) : p->unk1C;
}

BOOL func_801DB6D0(u32 p1, u32 p2, MEMHeapHandle heap, u32 p4, u32 p5, gFuncPtr1 p6)
{
    gUnkClass1* r31 = func_801DB040(p1, p2);
    if (!r31 || r31->unk1 || !r31->unkC || !r31->unk0)
        return FALSE;
    u32 blockSize = func_801DAEE0(r31->unkC);
    if (blockSize == 0)
        return FALSE;
    void* data = func_801DB184(heap, blockSize, p4, p5, p6);
    if (!data)
        return FALSE;
    memcpy(data, r31->unkC, blockSize);
    return TRUE;
}

void func_801DB79C(u32 p1, u32 p2)
{
    gUnkClass1* r3 = func_801DB040(p1, p2);
    if (r3)
        r3->unk1 = 1;
}

void func_801DB7CC(u32 p1, u32 p2)
{
    gUnkClass1* r3 = func_801DB040(p1, p2);
    if (r3)
        r3->unk1 = 0;
}

} //extern "C"
