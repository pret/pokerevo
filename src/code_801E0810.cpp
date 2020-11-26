#include "ctorStruct.h"
#include <string.h>
#include <SDK/os.h>

static ctorStruct gUnk8063F370(1, 4, 0);

// size == 0x4
struct unkClass3
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
};

// size == 0x8
struct unkClass2
{
    u8 unk0; // index into unkClass3 array
    u8 unk1; // func_801FB80C returns first instance when this is 0
    u8 unk2;
    u8 unk3;
    u32 unk4;
};

struct GSfilterModule
{
    u8 unk0[0x10]; // pad
    u32 unk10;
    u8 unk14[0x3D8]; // pad
    unkClass2* unk3EC; // pointer to array
    unkClass3* unk3F0;
    u8 unk3F4[0x18]; // pad
    u8 unk40C; // counter
};

extern "C"
{

extern GSfilterModule* lbl_8063F410;
unkClass2* func_801FB80C(GSfilterModule*);

void* func_8023B058(u8);
void func_8023B3B8(void*, u32);
void func_8023B420(void*, u32);

// NONMATCHING: r29/r30 regswaps

// TODO: type of p1?

unkClass2* func_801E0810(unkClass2* p1, u32 p2, u8 p3, u8 p4)
{
    u32 r30;
    
    if (!lbl_8063F410)
        return NULL;
    unkClass2* r29 = func_801FB80C(lbl_8063F410);
    if (!r29)
        return NULL;
    r29->unk1 = 1;
    r29->unk2 = p3;
    r29->unk3 = p4;
    r29->unk4 = p2;
    if (r29->unk3) {
        r30 = lbl_8063F410->unk10;
        void* r3 = func_8023B058(static_cast<u8>(r30 >> 16));
        if (r3)
            func_8023B3B8(r3, r30);
    }
    
    unkClass* r3 = lbl_8063F410;
    unkClass3* r4 = (r29->unk1) ? &r3->unk3F0[r29->unk0] : NULL;
    
    r4->unk0 = p1->unk0;
    r4->unk1 = p1->unk1;
    r4->unk2 = p1->unk2;
    r4->unk3 = p1->unk3;
    return r29;
}

// TODO: p1 type?

void func_801E0904(unkClass2* p1)
{
    if (p1->unk1) {
        if (p1->unk3) {
            u32 r31 = lbl_8063F410->unk10;
            void* r3 = func_8023B058(static_cast<u8>(r31 >> 16));
            if (r3)
                func_8023B420(r3, r31);
        }
        p1->unk1 = 0;
        p1->unk4 = NULL;
    }
}

// TODO: p1 type?

void func_801E0978(const unkClass2* p1, unkClass3* p2)
{
    if (p1->unk1) {
        unkClass3* r3;
        unkClass* r5 = lbl_8063F410;
        if (p1->unk1) {
            r3 = &r5->unk3F0[p1->unk0];
        } else {
            r3 = NULL;
        }
        p2->unk0 = r3->unk0;
        p2->unk1 = r3->unk1;
        p2->unk2 = r3->unk2;
        p2->unk3 = r3->unk3;
        return;
    }
    memset(p2, 0, sizeof(unkClass3));
}

void func_801E09DC(const unkClass2* p1, unkClass3* p2)
{
    if (!p1->unk1)
        return;
    unkClass* r5 = lbl_8063F410;
    unkClass3* r3 = (p1->unk1) ? &r5->unk3F0[p1->unk0] : NULL;
    r3->unk0 = p2->unk0;
    r3->unk1 = p2->unk1;
    r3->unk2 = p2->unk2;
    r3->unk3 = p2->unk3;
    DCFlushRange(r3, sizeof(unkClass3));
}

} //extern "C"
