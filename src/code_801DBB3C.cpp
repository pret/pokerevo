#include "types.h"
#include "ctorStruct.h"
#include "Runtime/__mem.h"
#include "code_801DAAE0.h"
#include "code_801DB040.h"
#include "code_801DBB3C.h"

// array of free stores
static gUnkClass2 gUnk80491470[32];
static ctorStruct gUnk8063F310(1, 4, 0);
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
void func_801DBB48(gUnkClass2 *p1, size_t nodes, size_t size)
{
  size_t r31;
  size_t r30;
  gUnkClass2 *r29;
  unsigned int new_var;
  int new_var2;
  u8 **new_var3;
  size += 7;
  r30 = size & (~0x3);
  new_var = r30;
  r31 = new_var;
  r30 = nodes;
  r29 = p1;
  p1->unk8 = nodes;
  new_var2 = nodes + 1;
  p1->unkC = r31;
  u8 *data = (u8 *) func_801DAD98(new_var2 * r31);
  r29->unk10 = data;
  r29->unk18 = (gUnkClass3 *) data;
  r29->unk14 = data + (r30 * r31);
  u8 *curr = data;
  u8 *next;
  size_t i;
  new_var3 = &next;
  gUnkClass3 *r8 = 0;
  for (i = 0; i < r30; i++)
  {
    next = curr + r31;
    r8 = (gUnkClass3 *) curr;
    ((gUnkClass3 *) curr)->unk0 = (gUnkClass3 *) (*new_var3);
    curr = *new_var3;
  }

  r8->unk0 = 0;
}

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

// return node p2 to free store p1, making it the new head of the 
// free node linked list
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

// allocate the free store given number of elements and size of each?
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
