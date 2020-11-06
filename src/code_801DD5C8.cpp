#include "ctorStruct.h"
#include "code_801DD5C8.h"

static ctorStruct gUnk8063F348(1, 4, 0);

// gUnkClass7.cpp
// TODO: convert to C++ member functions?

extern "C" {

void func_801DD5C8(gUnkClass7* p1, float p2)
{
    if (!p1->unk0 || !(p1->unk6 & 0x1) || (p1->unk6 & 0x8))
        return;
    p1->unkC += p2 * p1->unk8;
    if (p1->unkC < 0.0f) {
        p1->unk6 |= 0x4;
        switch (p1->unk4) {
            case 1:
                while (p1->unkC < 0.0f)
                    p1->unkC += p1->unk0->unk8;
                break;
            case 2:
                p1->unkC = -p1->unkC;
                float f2 = p1->unk0->unk8;
                if ((float)p1->unkC > f2) {
                    float f4 = p1->unkC / f2;
                    s32 r5 = (s32)f4;
                    f4 -= r5; // get fractional part
                    if (((r5 & 0x1) ^ ((u32)r5 >> 31 & 0x1)) - ((u32)r5 >> 31 & 0x1) != 0) {
                        p1->unkC = f2 * (1.0f - f4);
                    } else {
                        p1->unkC = f2 * f4;
                        p1->unk8 = -p1->unk8;
                    }
                } else {
                    p1->unk8 = -p1->unk8;
                }
                break;
            default:
                p1->unk6 |= 0x8;
                p1->unkC = 0.0f;
                break;
        }
    } else if (p1->unkC > p1->unk0->unk8) {
        p1->unk6 |= 0x4;
        switch (p1->unk4) {
            case 1:
                while (p1->unkC > p1->unk0->unk8)
                    p1->unkC -= p1->unk0->unk8;
                break;
            case 2:
                float f2 = p1->unk0->unk8;
                float f4 = p1->unkC / f2;
                s32 r5 = (s32)f4;
                f4 -= r5;
                if (((r5 & 0x1) ^ ((u32)r5 >> 31 & 0x1)) - ((u32)r5 >> 31 & 0x1) != 0) {
                    float temp = f2 * (1.0f - f4);
                    p1->unk8 = -p1->unk8;
                    p1->unkC = temp;
                } else {
                    p1->unkC = f2 * f4;
                }
                break;
            default:
                p1->unk6 |= 0x8;
                p1->unkC = p1->unk0->unk8;
                break;
        }
    }
    p1->unk6 |= 0x2;
}

void func_801DD7FC(gUnkClass7* p1, void* p2, u32 p3)
{
    if (!p1->unk0 || !(p1->unk6 & 0x2))
        return;
    gUnkClass9* ptr = p1->unk0->unk4;
    s32 count = p1->unk0->unk2;
    for (s32 i = 0; i < count; i++, ptr++)
        if (ptr->unkC)
            ptr->unkC(p2, ptr, p3, p1->unkC);

    p1->unk6 &= ~0x2;
}

} //extern "C"
