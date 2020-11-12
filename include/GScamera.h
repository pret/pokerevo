#ifndef POKEREVO_GSCAMERA_H
#define POKEREVO_GSCAMERA_H

#include "GSnull.h"
#include "code_801DD5C8.h"

class GScamera : public GSnull
{
    u32 unk104; // flags
    gUnkClass10* unk108;
    Mtx44 unk10C; // orthographic projection matrix. TODO: this could be a C++ wrapper for Mtx44
    
    // TODO: Is unk14C~unk164 an array of floats initialized to 0s with an initializer list?
    // NOTE: This hack is only needed because GScamera's constructors write 0 to unk14C~unk164 
    // as if they were s32's, yet other functions treat them as floats
    union s32float
    { 
        s32 i;
        float f;
    };
    
    s32float unk14C;
    s32float unk150;
    s32float unk154;
    s32float unk158;
    s32float unk15C;
    s32float unk160;
    s32float unk164;
    
    // view volume coordinates for the orthographic projection matrix
    float unk168; // top
    float unk16C; // bottom
    float unk170; // left
    float unk174; // right
    
    float unk178;
    
    Vec unk17C;
    Vec unk188;
    Vec unk194;
    Vec unk1A0;
    Point3d unk1AC; // camera position
    Vec unk1B8; // camera up vector
    Point3d unk1C4; // target posiiton
    GScamera* unk1D0;
    Mtx unk1D4; // viewing matrix
    Mtx unk204; // inverse of the viewing matrix
    Mtx unk234; // inverse-transpose of the viewing matrix
public:
    GScamera(); // 801DDF78
    GScamera(void* p1, gUnkClass10* p2); // 801DE084
    void func_801DE1F8();
    void func_801DE524();
    friend void func_801DEA3C(Mtx p1, GScamera* p2, Mtx p3, BOOL p4);
    void lbl_801DEEF8(gUnkClass12* p1, u32 p2, float p3);
    virtual ~GScamera();  // 801DE19C
    virtual void func1(float p1); // 801DECBC
    virtual void func2(BOOL p1); // 801DED3C
    virtual void func3(); // 801DE5F8
};

#endif //POKEREVO_GSCAMERA_H
