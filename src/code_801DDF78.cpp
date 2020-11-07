

// GScamera

#include <SDK/mtx.h>
#include "GSblendObject.h"

class GSnull : public GSblendObject
{
    u8 unk10[0xF0]; // padding
public:
    u32* vptr100; // TODO: replace
    
    GSnull(u8 p1);
    ~GSnull();
};

class GScamera : public GSnull
{
    u32 unk104;
    u32 unk108;
    
    u8 unk10C[0x40]; // pad
    
    
    u32 unk14C;
    u32 unk150;
    u32 unk154;
    u32 unk158;
    u32 unk15C;
    u32 unk160;
    u32 unk164;
    
    float unk168;
    float unk16C;
    
    u8 unk170[0x8]; // pad
    
    float unk178;
    float unk17C;
    float unk180;
    
    float unk184;
    
    float unk188;
    float unk18C;
    float unk190;
    float unk194;
    float unk198;
    float unk19C;
    float unk1A0;
    float unk1A4;
    float unk1A8;
    float unk1AC;
    float unk1B0;
    float unk1B4;
    float unk1B8;
    float unk1BC;
    float unk1C0;
    float unk1C4;
    float unk1C8;
    float unk1CC;
    u32 unk1D0;
    Mtx unk1D4;
    Mtx unk204;
    Mtx unk234;
    
public:
    GScamera();

};

extern "C" {

__declspec(section ".data") extern u32 lbl_80423358; // GScamera vtable

// 801DDF78
GScamera::GScamera() : GSnull(4)
{
    #if 0
    10.0f //f2
    0 // r0
    0.0f // f1
    lbl_80423358 //r5
    1.0f // f5
    -1.0f // f0
    0x109 // r4
    60.0f // f7
    1.28f //f6
    0.1 //f4
    100000.0f //f3
    #endif 
    
    unk184 = 10.0f;
    vptr100 = &lbl_80423358;
    unk104 = 0x109;
    unk108 = 0;
    
    unk14C = 0;
    unk150 = 0;
    unk154 = 0;
    unk158 = 0;
    unk15C = 0;
    unk160 = 0;
    unk164 = 0;
    
    unk168 = 60.0f;
    unk16C = 1.28f;
    unk178 = 1.0f;
    unk17C = 0.1f;
    unk180 = 100000.0f;
    unk188 = 0.0f;
    unk18C = 0.0f;
    unk190 = -1.0f;
    unk194 = 0.0f;
    unk198 = 1.0f;
    unk19C = 0.0f;
    unk1A0 = 0.0f;
    unk1A4 = 0.0f;
    unk1A8 = 0.0f;
    unk1AC = 0.0f;
    unk1B0 = 0.0f;
    unk1B4 = -1.0f;
    unk1B8 = 0.0f;
    unk1BC = 1.0f;
    unk1C0 = 0.0f;
    unk1C4 = 0.0f;
    unk1C8 = 0.0f;
    unk1CC = 0.0f;
    unk1D0 = 0;
    
    unk184 = 10.0f;
    
    MTXIdentity(unk1D4);
    MTXIdentity(unk204);
    MTXIdentity(unk234);
}



}
