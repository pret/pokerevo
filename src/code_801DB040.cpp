#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"

extern "C" {

typedef u32 (*FuncPtr)(void*, u32, u32);

// TODO: func_801DBD00 might need this definition
struct unkClass
{
    u8 unk0;
    u8 unk1[0x7];
    MEMHeapHandle unk8;
    void* unkC; // or, a more specific pointer
    u32 unk10;
    u32 unk14;
    FuncPtr unk18;
    unkClass* unk1C;
    unkClass* unk20;
};

extern void func_801DBD00(u32 p1, unkClass* p2);

namespace
{
    

    
    //unkStruct gUnk8063F2E0(1, 4, 0);
}

extern unkClass* lbl_8063F2E8; //TODO: rename/define/internalize
extern u32 lbl_8063F2EC; //TODO: rename/define/internalize






//static
unkClass* func_801DB040(u32 p1, u32 p2);
unkClass* func_801DB07C(unkClass* p1, u32 p2);

//static
unkClass* func_801DB040(u32 p1, u32 p2)
{
    for (unkClass* r5 = lbl_8063F2E8; r5; r5 = r5->unk1C)
        if (r5->unk10 == p1 && r5->unk14 == p2)
            return r5;
    return NULL;
}

unkClass* func_801DB07C(unkClass* p1, u32 p2)
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
    if (p2) {
        unkClass* r3 = p1->unk20;
        if (r3)
            r3->unk1C = r31;
        else
            lbl_8063F2E8 = r31;
        
        if (r31)
            r31->unk20 = p1->unk20;
        
        func_801DBD00(lbl_8063F2EC, p1);
    }
    return r31;
}















} //extern "C"
