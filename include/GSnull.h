#ifndef POKEREVO_GSNULL_H
#define POKEREVO_GSNULL_H

#ifdef __cplusplus
extern "C" {
#endif

#include "GSblendObject.h"

// TODO: namespace?
struct gUnkClass11
{
    Vec unk0;
    Vec unkC;
    Vec unk18;
};

struct gUnkClass10
{
    u8 unk0[0x20]; // pad
    gUnkClass8* unk20;
    
    u8 unk24[0xC]; // pad
    
    u32 unk30;
    float unk34;
    float unk38;
    Vec unk3C;
    gUnkClass11* unk48;
};

class GSnull : public GSblendObject
{
protected:
    u16 unk10;
    u8 unk12[0xBE];
    Mtx unkD0;
public:    
    // 801F1AE8
    GSnull(u8 p1);
    // 801F1BC8
    GSnull(void* p1, gUnkClass10* p2); // TODO: p1 type
    virtual ~GSnull();    // 801F1F24
    virtual void func1(float p1); // 801F3960
    virtual void func2(BOOL p1); // 801F39E8
    virtual void func3(); // 801F3790
};

void func_801F3904(GSnull*, float); // TODO: member function
BOOL func_801F3C7C(GSnull* p1); // TODO: member function


#ifdef __cplusplus
}
#endif

#endif //POKEREVO_GSNULL_H
