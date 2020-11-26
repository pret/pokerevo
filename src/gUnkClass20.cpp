#include "ctorStruct.h"
#include <string.h>
#include <SDK/os.h>
#include "GSfilterModule.h"
#include "gUnkClass20.h"

static ctorStruct gUnk8063F370(1, 4, 0);

extern "C"
{
// TODO: move to proper header
void* func_8023B058(u8);
void func_8023B3B8(void*, u32);
void func_8023B420(void*, u32);
}

// "constructor" ?
gUnkClass20* gUnkClass20::func_801E0810(u32 p2, u8 p3, u8 p4)
{
    u32 r30;
    
    if (!lbl_8063F410)
        return NULL;
    gUnkClass20* r29 = func_801FB80C(lbl_8063F410);
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
    
    const GSfilterModule* r3 = lbl_8063F410;
    gUnkClass21* r4 = (r29->unk1) ? &r3->unk3F0[r29->unk0] : NULL;
    
    r4->unk0 = unk0;
    r4->unk1 = unk1;
    r4->unk2 = unk2;
    r4->unk3 = unk3;
    return r29;
}

// "destructor" ?
void gUnkClass20::func_801E0904()
{
    if (unk1) {
        if (unk3) {
            u32 r31 = lbl_8063F410->unk10;
            void* r3 = func_8023B058(static_cast<u8>(r31 >> 16));
            if (r3)
                func_8023B420(r3, r31);
        }
        unk1 = 0;
        unk4 = NULL;
    }
}

// read into p2
void gUnkClass20::func_801E0978(gUnkClass21* p2) const
{
    if (unk1) {
        const GSfilterModule* r5 = lbl_8063F410;
        const gUnkClass21* r3 = (unk1) ? &r5->unk3F0[unk0] : NULL;
        *p2 = *r3;
        return;
    }
    memset(p2, 0, sizeof(gUnkClass21));
}

// write from p2
void gUnkClass20::func_801E09DC(gUnkClass21* p2) const
{
    if (!unk1)
        return;
    const GSfilterModule* r5 = lbl_8063F410;
    gUnkClass21* r3 = (unk1) ? &r5->unk3F0[unk0] : NULL;
    *r3 = *p2;
    DCFlushRange(r3, sizeof(gUnkClass21));
}
