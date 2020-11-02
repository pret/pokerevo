#include "ctorStruct.h"
#include <string.h>
#include "code_801DAAE0.h"
#include "code_801DB040.h"
#include "code_801DBB3C.h"

static u32 func_801DBB3C(void);
static void func_801DBB44(u32);
static void func_801DBB48(gUnkClass2 *p1, size_t nodes, size_t size);

static gUnkClass2 gUnk80491470[32];
static ctorStruct gUnk8063F310(1, 4, 0);

extern "C" {

static u32 func_801DBB3C(void)
{
    return 0;
}

static void func_801DBB44(u32)
{
    
}
static void func_801DBB48(gUnkClass2 *p1, size_t nodes, size_t size)
{
    size_t blockSize = (size+7) & ~0x3;
    p1->unk8 = nodes;
    p1->unkC = blockSize;
    u8* data = (u8*)func_801DAD98((nodes + 1) * blockSize);
    p1->unk10 = data;
    p1->unk18 = (gUnkClass3*)data;
    p1->unk14 = data + (nodes * blockSize);
    u8* next;
    u8** pnext = &next;
    size_t i;
    gUnkClass3* r8 = NULL;
    for (i = 0; i < nodes; i++) {
        *pnext = data + blockSize;
        r8 = (gUnkClass3*)data;
        ((gUnkClass3*)data)->unk0 = (gUnkClass3*)(*pnext);
        data = *pnext;
    }
    r8->unk0 = 0;
}

// Allocate linked list node from free store
gUnkClass1* func_801DBC58(gUnkClass2* p1)
{
    gUnkClass3* r31 = p1->unk18;
    u32 r30 = func_801DBB3C();
    func_801DBB44(0);
    if (r31) {
        p1->unk18 = r31->unk0;
        goto passCheck;
    }

failCheck:
    func_801DBB44(r30);
    return NULL;
passCheck:
    func_801DBB44(r30);
    memset(r31, 0, p1->unkC);
    if (++p1->unk0 > p1->unk4)
        p1->unk4 = p1->unk0;
    return &r31->unk4;
}

// Return linked list node to free store
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

gUnkClass2* func_801DBD74(u32 nodes, u32 size)
{
    size_t i;
    for (i = 0; i < 32; i++)
        if (gUnk80491470[i].unk8 == 0)
            break;
    gUnkClass2* r31 = &gUnk80491470[i];
    if (r31->unk8)
        return NULL;
    func_801DBB48(r31, nodes, size);
    return r31;
}

}
