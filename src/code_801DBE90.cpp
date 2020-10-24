#include "types.h"
#include "ctorStruct.h"
#include "SDK/mem.h"
#include "code_801DAAE0.h"


namespace
{
    //TODO: header/source
    struct unkClass
    {
        u8 unk0;
        u8 unk1[0x4F];
    };
}


extern MEMHeapHandle lbl_8063E8EC;


//TODO: internal linkage
extern u32 lbl_8063F320;
extern unkClass* lbl_8063F324;


extern "C"
{

// TODO: return type
//static
void* func_801DBE90(u32 size)
{
//  void* func_801DAD08(MEMHeapHandle heap, u32 size, int alignment)
    return func_801DAD08(lbl_8063E8EC, size, 0x20);
}

//static
void func_801DBEA0(void)
{
    for (size_t i = 0; i < lbl_8063F320; i++)
        lbl_8063F324[i].unk0 = 0;
}

//static
func_801DBED0()
{
    
}






} //extern "C"
