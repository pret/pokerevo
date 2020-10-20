#include "types.h"
#include "unkStruct.h"
#include "Runtime/__mem.h"
#include "code_801DAAE0.h"

extern "C" {

typedef u32 (*FuncPtr)(void*, u32, u32);

// TODO: func_801DBD00 might need this definition
// TODO: doubly linked list
struct unkClass
{
    u8 unk0; // u8, u32, or union?
    u8 unk1;
    u8 unk2[0x2];
    u32 unk4;
    MEMHeapHandle unk8;
    void* unkC; // or, a more specific pointer. ptr to heap allocated mem
    u32 unk10;
    u32 unk14;
    FuncPtr unk18;
    unkClass* unk1C; //next?
    unkClass* unk20; //prev?
};

// TODO: free store for linked list nodes
struct unkClass2
{
    u8 pad[0x24];
};


// TODO: move to other headers
unkClass* func_801DBC58(unkClass2* p1);
void func_801DBD00(unkClass2* p1, unkClass* p2);
unkClass2* func_801DBD74(u32 p1, u32 p2);



namespace
{
    unkStruct gUnk8063F2E0(1, 4, 0);
}

// head of doubly linked list?
extern unkClass* lbl_8063F2E8; //TODO: rename/define/internalize

// TODO: pointer to some class, a free pool?
extern unkClass2* lbl_8063F2EC; //TODO: rename/define/internalize






// TODO: interface for this module

//static
unkClass* func_801DB040(u32 p1, u32 p2);
unkClass* func_801DB07C(unkClass* p1, BOOL p2);
void func_801DB15C(u32 p1);
void* func_801DB184(MEMHeapHandle heap, u32 size, u32 p3, u32 p4, FuncPtr p5);
void* func_801DB270(MEMHeapHandle heap, u32 size, int align, u32 p4, u32 p5, FuncPtr p6);
void* func_801DB360(u32 size, int align, u32 p3, u32 p4, FuncPtr p5);
void func_801DB3BC(void* p1, u32 p2, u32 p3, FuncPtr p4);
void* func_801DB4BC(u32 p1, u32 p2);
u32 func_801DB4FC(u32 p1, u32 p2);
u32 func_801DB548(u32 p1, u32 p2);
u32 func_801DB5E4(u32 p1, u32 p2);
void func_801DB644(u32 p1, u32 p2);
void func_801DB674(u32 p1);
BOOL func_801DB6D0(u32 p1, u32 p2, MEMHeapHandle p3, u32 p4, u32 p5, FuncPtr p6);
void func_801DB79C(u32 p1, u32 p2);
void func_801DB7CC(u32 p1, u32 p2);

//static
unkClass* func_801DB040(u32 p1, u32 p2)
{
    for (unkClass* r5 = lbl_8063F2E8; r5; r5 = r5->unk1C)
        if (r5->unk10 == p1 && r5->unk14 == p2)
            return r5;
    return NULL;
}

// free node's buffer, and optionally remove node from linked list,
// returning new head?
unkClass* func_801DB07C(unkClass* p1, BOOL p2)
{
    unkClass* r31;
    if (p1->unk18 && p1->unk18(p1->unkC, p1->unk10, p1->unk14) == 0)
        return p1->unk1C;
    if (p1->unk0) {
        if (p1->unkC) {
            // free
            // void func_801DAD48(MEMHeapHandle heap, void* memBlock);
            func_801DAD48(p1->unk8, p1->unkC);
            p1->unkC = NULL;
        }
        p1->unk0 = 0;
    }
    p1->unkC = NULL;
    r31 = p1->unk1C;
    // TODO: remove p1 from doubly linked list?
    if (p2) {
        unkClass* r3 = p1->unk20;
        if (r3)
            r3->unk1C = r31;
        else
            lbl_8063F2E8 = r31; // set new head
        
        if (r31)
            r31->unk20 = p1->unk20;
        
        // TODO: free p1?
        func_801DBD00(lbl_8063F2EC, p1);
    }
    return r31;
}

void func_801DB15C(u32 p1)
{
    // TODO: magic number
    lbl_8063F2EC = func_801DBD74(p1, 36);
}

// Add node to start of linked list, and return pointer to its data payload
//static
void* func_801DB184(MEMHeapHandle heap, u32 size, u32 p3, u32 p4, FuncPtr p5)
{
    // check if node already exists?
    if (func_801DB040(p3, p4))
        return NULL;
    // allocate linked list node from free store?
    unkClass* r31 = func_801DBC58(lbl_8063F2EC);
    if (!r31)
        return NULL;
    // alloc
    // void* func_801DAC94(MEMHeapHandle heap, u32 size)
    if ((r31->unkC = func_801DAC94(heap, size)) == NULL) {
        // return node to free store?
        func_801DBD00(lbl_8063F2EC, r31);
        return NULL;
    }
    if (lbl_8063F2E8)
        lbl_8063F2E8->unk20 = r31;
    
    r31->unk1C = lbl_8063F2E8;
    r31->unk20 = NULL;
    lbl_8063F2E8 = r31;
    
    r31->unk0 = 1;
    r31->unk8 = heap;
    r31->unk1 = 0;
    r31->unk10 = p3;
    r31->unk14 = p4;
    r31->unk18 = p5;
    r31->unk4 = 0;
    return r31->unkC;
}

// similar to func_801DB184, but use alignment allocator function
// and do not clear unk4 of the unkClass structure
void* func_801DB270(MEMHeapHandle heap, u32 size, int align, u32 p4, u32 p5, FuncPtr p6)
{
    if (func_801DB040(p4, p5))
        return NULL;
    unkClass* r31 = func_801DBC58(lbl_8063F2EC);
    if (!r31)
        return NULL;
    // void* func_801DAD08(MEMHeapHandle heap, u32 size, int alignment);
    if ((r31->unkC = func_801DAD08(heap, size, align)) == NULL) {
        func_801DBD00(lbl_8063F2EC, r31);
        return NULL;
    }
    if (lbl_8063F2E8)
        lbl_8063F2E8->unk20 = r31;
    
    r31->unk1C = lbl_8063F2E8;
    r31->unk20 = NULL;
    lbl_8063F2E8 = r31;
    
    r31->unk0 = 1;
    r31->unk8 = heap;
    r31->unk1 = 0;
    r31->unk10 = p4;
    r31->unk14 = p5;
    r31->unk18 = p6;
    return r31->unkC;
}

void* func_801DB360(u32 size, int align, u32 p3, u32 p4, FuncPtr p5)
{
    return func_801DB270(func_801DAC0C(), size, align, p3, p4, p5);
}

// replace node in linked list?
void func_801DB3BC(void* p1, u32 p2, u32 p3, FuncPtr p4)
{
    unkClass* r31 = func_801DB040(p2, p3);
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
        unkClass* r3 = func_801DBC58(lbl_8063F2EC);
        if (r3) {
            if (lbl_8063F2E8)
                lbl_8063F2E8->unk20 = r3;
            r3->unk1C = lbl_8063F2E8;
            r3->unk20 = NULL;
            lbl_8063F2E8 = r3;
            r3->unk0 = 0;
            r3->unk1 = 0;
            r3->unkC = p1;
            r3->unk10 = p2;
            r3->unk14 = p3;
            r3->unk18 = p4;
        }
    }
}

// get data payload from the specified node?
void* func_801DB4BC(u32 p1, u32 p2)
{
    unkClass* r3 = func_801DB040(p1, p2);
    if (!r3 || r3->unk1)
        return NULL;
    return r3->unkC;
}

// increment specified node's unk4 counter and return its new value
u32 func_801DB4FC(u32 p1, u32 p2)
{
    unkClass* r3 = func_801DB040(p1, p2);
    if (!r3 || r3->unk1)
        return 0;
    return ++r3->unk4;
}

// decrement specified node's unk4 counter and return its new value, and
// free that node if its counter is already / will become 0
u32 func_801DB548(u32 p1, u32 p2)
{
    unkClass* r31 = func_801DB040(p1, p2);
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

// get size of specified node's data payload
u32 func_801DB5E4(u32 p1, u32 p2)
{
    unkClass* r3 = func_801DB040(p1, p2);
    if (!r3)
        return 0;
    if (!r3->unkC)
        return 0;
    if (r3->unk0 == 0)
        return 0;
    return func_801DAEE0(r3->unkC);
}

// free specified node
void func_801DB644(u32 p1, u32 p2)
{
    unkClass* r3 = func_801DB040(p1, p2);
    if (r3)
        func_801DB07C(r3, TRUE);
}

// search linked list for all nodes whose unk10 field matches p1, 
// and remove those nodes from the list
void func_801DB674(u32 p1)
{
    unkClass* p = lbl_8063F2E8;
    while (p)
        p = (p->unk10 == p1) ? func_801DB07C(p, TRUE) : p->unk1C;
}

// append a new node to the start of the linked list,
// making its data payload a copy of the specified node's payload. Indicate success
BOOL func_801DB6D0(u32 p1, u32 p2, MEMHeapHandle heap, u32 p4, u32 p5, FuncPtr p6)
{
    unkClass* r31 = func_801DB040(p1, p2);
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

// Set the unk1 flag of the specified node
void func_801DB79C(u32 p1, u32 p2)
{
    unkClass* r3 = func_801DB040(p1, p2);
    if (r3)
        r3->unk1 = 1;
}

// Clear the unk1 flag of the specified node
void func_801DB7CC(u32 p1, u32 p2)
{
    unkClass* r3 = func_801DB040(p1, p2);
    if (r3)
        r3->unk1 = 0;
}

} //extern "C"
