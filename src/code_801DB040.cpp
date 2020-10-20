#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"

extern "C" {

typedef u32 (*FuncPtr)(void*, u32, u32);

// TODO: func_801DBD00 might need this definition
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
    

    
    //unkStruct gUnk8063F2E0(1, 4, 0);
}

// head of doubly linked list?
extern unkClass* lbl_8063F2E8; //TODO: rename/define/internalize

// TODO: pointer to some class, a free pool?
extern unkClass2* lbl_8063F2EC; //TODO: rename/define/internalize






//static
unkClass* func_801DB040(u32 p1, u32 p2);
unkClass* func_801DB07C(unkClass* p1, BOOL p2);
void func_801DB15C(u32 p1);
void* func_801DB184(MEMHeapHandle p1, u32 size, u32 p3, u32 p4, FuncPtr p5);


//static
unkClass* func_801DB040(u32 p1, u32 p2)
{
    for (unkClass* r5 = lbl_8063F2E8; r5; r5 = r5->unk1C)
        if (r5->unk10 == p1 && r5->unk14 == p2)
            return r5;
    return NULL;
}

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

// Add node to start of linked list
//static
void* func_801DB184(MEMHeapHandle p1, u32 size, u32 p3, u32 p4, FuncPtr p5)
{
    if (func_801DB040(p3, p4))
        return NULL;
    // allocate linked list node from free store?
    unkClass* r31 = func_801DBC58(lbl_8063F2EC);
    if (!r31)
        return NULL;
    // alloc
    // void* func_801DAC94(MEMHeapHandle heap, u32 size)
    if ((r31->unkC = func_801DAC94(p1, size)) == NULL) {
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
    r31->unk8 = p1;
    r31->unk1 = 0;
    r31->unk10 = p3;
    r31->unk14 = p4;
    r31->unk18 = p5;
    r31->unk4 = 0;
    return r31->unkC;
}












} //extern "C"
