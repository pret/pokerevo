#include "ctorStruct.h"
#include "code_801DCE6C.h"
#include <string.h>

// NAND wrapper class


extern "C" {
    
// TODO: convert to class member functions

//static
char* func_801DCE6C(gUnkClass6* p1)
{
    return p1->unk7;
}

//static
char* func_801DCE74(gUnkClass6* p1)
{
    return p1->unk2;
}

gUnkClass4::gUnkClass4(void)
{
    memset(this, 0, sizeof(gUnkClass4));
}

// search the array
//static
gUnkClass6* func_801DCEB4(gUnkClass4* p1, const char* p2)
{
    char sp8[13]; // 0xD ~ 0x10 byte struct
    memcpy(&sp8, p2, 12);
    sp8[12] = '\0';
    
    gUnkClass6* p = p1->arr;
    for (s32 i = 0; i < 8; p++, i++)
        if (p->unk0 && !p->unk1 && !strcmp(func_801DCE6C(p), sp8))
            return p;

    return NULL;
}

// just indicate if search succeeded
BOOL func_801DCF48(gUnkClass4* p1, const char* p2)
{
    return func_801DCEB4(p1, p2) != NULL;
}

BOOL func_801DCF74(gUnkClass4* p1, const char* fileName, gUnkClass5* fp)
{
    gUnkClass6* r31 = func_801DCEB4(p1, fileName);
    if (r31 && NANDOpen(func_801DCE74(r31), &r31->unk48, 1) == 0) {
        fp->unk4.unk3C = r31;
        fp->unk1 = 1;
        return TRUE;
    }
    return FALSE;
}






} //extern "C"
