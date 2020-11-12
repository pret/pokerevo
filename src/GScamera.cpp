#include "ctorStruct.h"
#include <SDK/mtx.h>
#include "GSblendObject.h"
#include "code_801DD5C8.h"

static ctorStruct gUnk8063F358(1, 4, 0);

extern "C" {
    
// TODO: move to VEC header
typedef struct
{
    float x;
    float y;
    float z;
} Vec, Point3d;

void PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb);
void PSVECNormalize(const Vec* src, Vec* unit);
void PSVECSubtract(const Vec* a, const Vec* b, Vec* a_b);

#define VECSubtract PSVECSubtract
#define VECCrossProduct PSVECCrossProduct
#define VECNormalize PSVECNormalize

// TODO: same as gUnkClass9?
// TODO: use RTTI data to find actual class name
struct gUnkClass12
{
    u8 unk0; // pad
    u8 unk1;
};
    
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
    //u32* vptr100; // TODO: replace
    
    // 801F1AE8
    GSnull(u8 p1);
    // 801F1BC8
    GSnull(void* p1, gUnkClass10* p2); // TODO: p1 type
    virtual ~GSnull();    // 801F1F24
    virtual void func1(float p1); // 801F3960
    virtual void func2(BOOL p1); // 801F39E8
    virtual void func3(); // 801F3790
};

class GScamera : public GSnull
{
    u32 unk104; // flags
    gUnkClass10* unk108;
    Mtx44 unk10C; // orthographic projection matrix. TODO: this could be a C++ wrapper for Mtx44
    
    // TODO: Is unk14C an array of floats initialized to 0s with an initializer list?
    // GScamera's constructors write 0 to unk14C as if it's an s32, yet other functions treat
    // it as a float
    typedef union hack
    { 
        s32 i;
        float f;
    } Hack;
    
    Hack unk14C;
    Hack unk150;
    Hack unk154;
    Hack unk158;
    Hack unk15C;
    Hack unk160;
    Hack unk164;
    
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
    GScamera();
    GScamera(void* p1, gUnkClass10* p2);
    void func_801DE1F8();
    void func_801DE524();
    friend void func_801DEA3C(Mtx p1, GScamera* p2, Mtx p3, BOOL p4);
    void lbl_801DEEF8(gUnkClass12* p1, u32 p2, float p3);
    virtual ~GScamera();  // 801DE19C
    virtual void func1(float p1); // 801DECBC
    virtual void func2(BOOL p1); // 801DED3C
    virtual void func3(); // 801DE5F8
};

// 801DDF78
GScamera::GScamera() : GSnull(4)
{
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    float f7;
    
    f7 = 60.0f;
    f6 = 1.28f;
    f5 = 1.0f;
    f4 = 0.1f;
    f3 = 100000.0f;
    f2 = 10.0f;
    
    unk17C.z = f2;
    unk104 = 0x109;
    unk108 = NULL;
    
    unk14C.i = 0;
    unk150.i = 0;
    unk154.i = 0;
    unk158.i = 0;
    unk15C.i = 0;
    unk160.i = 0;
    unk164.i = 0;
    
    unk168 = f7;
    unk16C = f6;
    unk178 = f5;
    unk17C.x = f4;
    unk17C.y = f3;
    unk188.x = 0.0f;
    unk188.y = 0.0f;
    unk188.z = -1.0f;
    unk194.x = 0.0f;
    unk194.y = f5;
    unk194.z = 0.0f;
    unk1A0.x = 0.0f;
    unk1A0.y = 0.0f;
    unk1A0.z = 0.0f;
    unk1AC.x = 0.0f;
    unk1AC.y = 0.0f;
    unk1AC.z = -1.0f;
    unk1B8.x = 0.0f;
    unk1B8.y = f5;
    unk1B8.z = 0.0f;
    unk1C4.x = 0.0f;
    unk1C4.y = 0.0f;
    unk1C4.z = 0.0f;
    unk1D0 = NULL;
    
    unk17C.z = f2;
    
    MTXIdentity(unk1D4);
    MTXIdentity(unk204);
    MTXIdentity(unk234);
}

// 801DE084
GScamera::GScamera(void* p1, gUnkClass10* p2) : GSnull(p1, p2)
{
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    float f7;
    
    f7 = 60.0f;
    f6 = 1.28f;
    f5 = 1.0f;
    f4 = 0.1f;
    f3 = 100000.0f;
    f2 = 10.0f;
    
    unk16C = f6;
    unk17C.z = f2;
    
    unk104 = 0x109;
    unk108 = p2;
    
    unk14C.i = 0;
    unk150.i = 0;
    unk154.i = 0;
    unk158.i = 0;
    unk15C.i = 0;
    unk160.i = 0;
    unk164.i = 0;
    
    unk168 = f7;
    unk178 = f5;
    unk17C.x = f4;
    unk17C.y = f3;
    unk188.x = 0.0f;
    unk188.y = 0.0f;
    unk188.z = -1.0f;
    unk194.x = 0.0f;
    unk194.y = f5;
    unk194.z = 0.0f;
    unk1A0.x = 0.0f;
    unk1A0.y = 0.0f;
    unk1A0.z = 0.0f;
    unk1AC.x = 0.0f;
    unk1AC.y = 0.0f;
    unk1AC.z = 0.0f;
    unk1B8.x = 0.0f;
    unk1B8.y = f5;
    unk1B8.z = 0.0f;
    unk1C4.x = 0.0f;
    unk1C4.y = 0.0f;
    unk1C4.z = -1.0f;
    unk1D0 = NULL;
    
    unk16C = f6;
    unk17C.z = f2;

    MTXIdentity(unk1D4);
    MTXIdentity(unk204);
    MTXIdentity(unk234);
}

// 801DE19C
GScamera::~GScamera()
{
    
}

// TODO: what is this? compare with gUnkClass 9, 10, 11, 12...
struct gUnkClass13
{
    u8 unk0[0x7A]; //pad
    u8 unk7A;
};

extern gUnkClass13* lbl_8063F788; // TODO: pointer to some class
extern float lbl_80641C18;
extern float lbl_80641C1C;
extern float lbl_80641C20;
extern double lbl_80641C28;
extern float lbl_80641C30;
extern float lbl_80641C34;
double atan2(double y, double x);
double tan(double x);

// C_MTXFrustum
void func_80223694(Mtx44 m, float t, float b, float l, float r, float n, float f);
// C_MTXOrtho
void func_80223698(Mtx44 m, float t, float b, float l, float r, float n, float f);
// C_MTXPerspective
void func_8022369C(Mtx44 m, float fovy, float aspect, float n, float f);

void GScamera::func_801DE1F8()
{
    float f31;
    float f30;
    if (lbl_8063F788->unk7A && (unk104 & 0x100)) {
        if (!(unk104 & 0x4))
            unk104 |= 0xC;
        f30 = 1.334375f;
    } else {
        if (unk104 & 0x4)
            unk104 = (unk104 | 0x8) & ~0x4;
        f30 = 1.0f;
    }
    
    float f8;
    if (unk104 & 0x8) {
        f31 = unk178;
        switch (unk104 & 0x3) {
            case 2:
                // TODO: inline function?
                f8 = 0.5f * ((1.0f - f30) * (unk174 - unk170));
                if (f31 > 1.0f) {
                    f31 = (1.0f / f31);
                    // func_80223698 is a thunk to C_MTXOrtho
                    func_80223698(unk10C, unk168*f31, unk16C*f31, f8 + unk170*f30, f8 + unk174*f30, unk17C.x, unk17C.y);
                } else {
                    f31 *= f30;
                    func_80223698(unk10C, unk168, unk16C, f8 + unk170*f31, f8 + unk174*f31, unk17C.x, unk17C.y);
                }
                unk14C.f = 1.0f;
                unk150.f = unk10C[0][0];
                unk154.f = unk10C[0][3];
                unk158.f = unk10C[1][1];
                unk15C.f = unk10C[1][3];
                unk160.f = unk10C[2][2];
                unk164.f = unk10C[2][3];
                break;
            case 3:
                f8 = 0.5f * ((1.0f - f30) * (unk174 - unk170));
                if (f31 > 1.0f) {
                    f31 = 1.0f / f31;
                    // func_80223694 is a thunk to C_MTXFrustum
                    func_80223694(unk10C, unk168*f31, unk16C*f31, f8 + unk170*f30, f8 + unk174*f30, unk17C.x, unk17C.y);
                } else {
                    f31 *= f30;
                    func_80223694(unk10C, unk168, unk16C, f8 + unk170*f31, f8 + unk174*f31, unk17C.x, unk17C.y);
                }
                unk14C.f = 0.0f;
                unk150.f = unk10C[0][0];
                unk154.f = unk10C[0][2];
                unk158.f = unk10C[1][1];
                unk15C.f = unk10C[1][2];
                unk160.f = unk10C[2][2];
                unk164.f = unk10C[2][3];
                break;
            case 0: case 1: default:
                if (unk104 & 0x80 && f31 > 1.0f) {
                    // TODO: degree->radian conversion? 0.017453292f is pi/180
                    float f0 = static_cast<float>(tan(0.017453292f*(0.5f*unk168)));
                    float f3 = static_cast<float>(atan2(f0/f31, 1.0));
                    float f5 = f3*2.0f;
                    f31 *= f30;
                    // TODO: radian->degree conversion? 57.29578f is 180/pi
                    // func_8022369C is a thunk to C_MTXPerspective
                    float rad2deg = f5*57.29578f;
                    func_8022369C(unk10C, rad2deg, unk16C*f31, unk17C.x, unk17C.y);
                } else {
                    f31 *= f30;
                    func_8022369C(unk10C, unk168, unk16C*f31, unk17C.x, unk17C.y);
                }
                unk14C.f = 0.0f;
                unk150.f = unk10C[0][0];
                unk154.f = unk10C[0][2];
                unk158.f = unk10C[1][1];
                unk15C.f = unk10C[1][2];
                unk160.f = unk10C[2][2];
                unk164.f = unk10C[2][3];
                break;
        }
        unk104 &= ~0x8;
    }
}

void GScamera::func_801DE524()
{
    Vec sp38;
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    Vec sp8;
    if (unk104 & 0x10) {
        VECSubtract(&unk1C4, &unk1AC, &sp20);
        sp38 = sp20;
        VECNormalize(&sp38, &sp38);
        VECCrossProduct(&sp38, &unk1B8, &sp14);
        sp2C = sp14;
        VECNormalize(&sp2C, &sp2C);
        VECCrossProduct(&sp2C, &sp38, &sp8);
        unk1B8 = sp8;
        unk104 = (unk104 & ~0x10) | 0x20;
    }
}

extern Vec lbl_80493614;
extern Vec lbl_80493620;

void PSMTXTranspose(const Mtx src, Mtx xPose);
#define MTXTranspose PSMTXTranspose

void PSMTXCopy(const Mtx src, Mtx dest);
#define MTXCopy PSMTXCopy



void C_MTXLookAt(Mtx m, const Point3d* camPos, const Vec* camUp, const Point3d* target);
#define MTXLookAt C_MTXLookAt

void PSVECAdd(const Vec* a, const Vec* b, Vec* ab);
#define VECAdd PSVECAdd

void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dest);
#define MTXMultVecSR PSMTXMultVecSR

void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dest);
#define MTXMultVec PSMTXMultVec

u32 PSMTXInverse(const Mtx src, Mtx inv);
#define MTXInverse PSMTXInverse

void GScamera::func3()
{
    Mtx sp110;
    Mtx spE0;
    Mtx spB0;
    Vec spA4;
    Vec sp98;
    Vec sp8C;
    Vec sp80;
    Vec sp74;
    Vec sp68;
    Vec sp5C;
    Vec sp50;
    Vec sp44;
    Vec sp38;
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    Vec sp8;
    
    u16 r30 = unk10 & 0x1;
    if (unk1D0) {
        if ((unk1D0->unk10 & 0x1) == 0x1)
            unk1D0->func3();
        
        sp8C.x = unk1D0->unkD0[0][3];
        sp8C.y = unk1D0->unkD0[1][3];
        sp8C.z = unk1D0->unkD0[2][3];
                
        unk1C4.x = sp8C.x;
        unk1C4.y = sp8C.y;
        unk1C4.z = sp8C.z;
        
        VECSubtract(&unk1C4, &unk1AC, &sp80);
        spA4 = sp80;
        VECNormalize(&spA4, &spA4);
        VECCrossProduct(&spA4, &lbl_80493614, &sp74);
        sp98 = sp74;
        
        // TODO: possibly an inline function
        BOOL flag;
        if (!(sp98.x < 0.00001f && sp98.x > -0.00001f &&
              sp98.y < 0.00001f && sp98.y > -0.00001f &&
              sp98.z < 0.00001f && sp98.z > -0.00001f))
        {
            flag = FALSE;
        } else {
            flag = TRUE;
        }
        
        if (flag) {
            VECCrossProduct(&spA4, &lbl_80493620, &sp68);
            sp98 = sp68;
        }
        // TODO: possibly inlined. Same code in func_801DE524
        VECNormalize(&sp98, &sp98);
        VECCrossProduct(&sp98, &spA4, &sp5C);
        unk1B8 = sp5C;
        unk104 = (unk104 & ~0x10) | 0x20;
    }
    
    if (unk104 & 0x10)
        func_801DE524();
    
    if ((unk104 & 0x20) || r30) {
        MTXInverse(unkD0, sp110);
        MTXMultVec(sp110, &unk1AC, &sp50);
        unk188 = sp50;
        MTXMultVecSR(sp110, &unk1B8, &sp44);
        unk194 = sp44;
        MTXMultVec(sp110, &unk1C4, &sp38);
        unk1A0 = sp38;
        
        if (r30)
            GSnull::func3();
        
        MTXMultVec(unkD0, &unk188, &sp2C);
        unk1AC = sp2C;
        MTXMultVecSR(unkD0, &unk194, &sp20);
        unk1B8 = sp20;
        MTXMultVec(unkD0, &unk1A0, &sp14);
        unk1C4 = sp14;
        
        // if unk1B8 is a zero vector, assign lbl_80493614 to it
        // TODO: inline this?
        BOOL flag;
        if (!(unk1B8.x < 0.00001f && unk1B8.x > -0.00001f &&
              unk1B8.y < 0.00001f && unk1B8.y > -0.00001f &&
              unk1B8.z < 0.00001f && unk1B8.z > -0.00001f))
        {
            flag = FALSE;
        } else {
            flag = TRUE;
        }
        
        if (flag)
            unk1B8 = lbl_80493614;
        
        // checking vector equality between unk1AC and unk1C4
        if (!((unk1AC.x - unk1C4.x) < 0.00001f && (unk1AC.x - unk1C4.x) > -0.00001f &&
              (unk1AC.y - unk1C4.y) < 0.00001f && (unk1AC.y - unk1C4.y) > -0.00001f &&
              (unk1AC.z - unk1C4.z) < 0.00001f && (unk1AC.z - unk1C4.z) > -0.00001f))
        {
            flag = FALSE;
        } else {
            flag = TRUE;
        }
        
        if (flag) {
            VECAdd(&unk1AC, &lbl_80493620, &sp8);
            unk1C4 = sp8;
        }
        
        MTXLookAt(unk1D4, &unk1AC, &unk1B8, &unk1C4);
        MTXInverse(unk1D4, spE0);
        MTXCopy(spE0, unk204);
        MTXTranspose(unk204, spB0);
        MTXCopy(spB0, unk234);
        unk104 &= ~0x20;
    }
}

extern Mtx lbl_804932E0;

typedef struct Quaternion
{
    float x;
    float y;
    float z;
    float w;
} Quaternion;


#define MTXConcat PSMTXConcat  
void PSMTXConcat(const Mtx a, const Mtx b, Mtx ab);


#define MTXQuat PSMTXQuat
void PSMTXQuat(Mtx m, const Quaternion* q);

#define QUATRotAxisRad C_QUATRotAxisRad
void C_QUATRotAxisRad(Quaternion* r, const Vec* axis, float rad);



double acos(double);
void PSMTXScale(Mtx m, float xS, float yS, float zS);
double sqrt(double);


static inline float InlineFunc1(const Mtx m, u32 col)
{
    float f1 = (m[0][col]*m[0][col] + m[1][col]*m[1][col] + m[2][col]*m[2][col]);
    if (f1 <= 0.0f)
        return 0.0f;
    return static_cast<float>(sqrt(f1));
}

#ifdef NONMATCHING
void func_801DEA3C(Mtx p1, GScamera* p2, Mtx p3, BOOL p4)
{
    Mtx sp70;
    Mtx sp40;
    Vec sp30;
    Vec sp24;
    Vec sp18 = {InlineFunc1(p3, 0), InlineFunc1(p3, 1), InlineFunc1(p3, 2)};
    Quaternion sp8;
    
    MTXScale(sp70, sp18.x, sp18.y, sp18.z);
    
    // get column vector
    // TODO: write as Vec assignment?
    float f0, f1, f2;
    f2 = p3[0][3];
    f1 = p3[1][3];
    f0 = p3[2][3];
    sp30.x = f2;
    sp30.y = f1;
    sp30.z = f0;
    if (p4) {
        VECSubtract(&p2->unk1AC, &sp30, &sp24);
        sp24.y = 0.0f;
        BOOL flag; // indicates sp24 is a zero vector?
        if (!(sp24.x < 0.00001f && sp24.x > -0.00001f &&
              sp24.y < 0.00001f && sp24.y > -0.00001f &&
              sp24.z < 0.00001f && sp24.z > -0.00001f))
        {
            flag = FALSE;
        } else {
            flag = TRUE;
        }
        
        if (flag) {
            MTXCopy(lbl_804932E0, p1);
            return;
        } else {
            VECNormalize(&sp24, &sp24);
            float f1;
            if (sp24.z >= 1.0f) {
                f1 = 0.0f;
            } else if (sp24.z <= -1.0f) {
                f1 = 3.1415927f;
            } else {
                f1 = static_cast<float>(acos(sp24.z));
            }
            
            if (sp24.x < 0.0f)
                f1 = -f1;

            QUATRotAxisRad(&sp8, &lbl_80493614, f1);
            MTXQuat(sp40, &sp8);
            MTXConcat(sp40, sp70, sp70);
        }
    } else {
        MTXConcat(p2->unk204, sp70, sp70);
    }
    sp70[0][3] = sp30.x;
    sp70[1][3] = sp30.y;
    sp70[2][3] = sp30.z;
    MTXCopy(sp70, p1);
}
#else
asm void func_801DEA3C(Mtx p1, GScamera* p2, Mtx p3, BOOL p4)
{
nofralloc
/* 801DEA3C 001DA69C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801DEA40 001DA6A0  7C 08 02 A6 */	mflr r0
/* 801DEA44 001DA6A4  C0 25 00 00 */	lfs f1, 0(r5)
/* 801DEA48 001DA6A8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 801DEA4C 001DA6AC  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 801DEA50 001DA6B0  EC 21 00 72 */	fmuls f1, f1, f1
/* 801DEA54 001DA6B4  EC 00 00 32 */	fmuls f0, f0, f0
/* 801DEA58 001DA6B8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801DEA5C 001DA6BC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801DEA60 001DA6C0  C0 62 96 10 */	lfs f3, 0x9610(r2)
/* 801DEA64 001DA6C4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801DEA68 001DA6C8  EC 01 00 2A */	fadds f0, f1, f0
/* 801DEA6C 001DA6CC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801DEA70 001DA6D0  7C BE 2B 78 */	mr r30, r5
/* 801DEA74 001DA6D4  7C DF 33 78 */	mr r31, r6
/* 801DEA78 001DA6D8  EC 22 00 2A */	fadds f1, f2, f0
/* 801DEA7C 001DA6DC  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 801DEA80 001DA6E0  7C 9D 23 78 */	mr r29, r4
/* 801DEA84 001DA6E4  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 801DEA88 001DA6E8  7C 7C 1B 78 */	mr r28, r3
/* 801DEA8C 001DA6EC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801DEA90 001DA6F0  4C 40 13 82 */	cror 2, 0, 2
/* 801DEA94 001DA6F4  40 82 00 08 */	bne lbl_801DEA9C
/* 801DEA98 001DA6F8  48 00 00 0C */	b lbl_801DEAA4
lbl_801DEA9C:
/* 801DEA9C 001DA6FC  4B FF 5D 99 */	bl sqrt
/* 801DEAA0 001DA700  FC 60 08 18 */	frsp f3, f1
lbl_801DEAA4:
/* 801DEAA4 001DA704  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801DEAA8 001DA708  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 801DEAAC 001DA70C  EC 21 00 72 */	fmuls f1, f1, f1
/* 801DEAB0 001DA710  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 801DEAB4 001DA714  EC 00 00 32 */	fmuls f0, f0, f0
/* 801DEAB8 001DA718  C0 82 96 10 */	lfs f4, 0x9610(r2)
/* 801DEABC 001DA71C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801DEAC0 001DA720  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801DEAC4 001DA724  EC 01 00 2A */	fadds f0, f1, f0
/* 801DEAC8 001DA728  EC 22 00 2A */	fadds f1, f2, f0
/* 801DEACC 001DA72C  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 801DEAD0 001DA730  4C 40 13 82 */	cror 2, 0, 2
/* 801DEAD4 001DA734  40 82 00 08 */	bne lbl_801DEADC
/* 801DEAD8 001DA738  48 00 00 0C */	b lbl_801DEAE4
lbl_801DEADC:
/* 801DEADC 001DA73C  4B FF 5D 59 */	bl sqrt
/* 801DEAE0 001DA740  FC 80 08 18 */	frsp f4, f1
lbl_801DEAE4:
/* 801DEAE4 001DA744  C0 3E 00 08 */	lfs f1, 8(r30)
/* 801DEAE8 001DA748  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 801DEAEC 001DA74C  EC 21 00 72 */	fmuls f1, f1, f1
/* 801DEAF0 001DA750  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 801DEAF4 001DA754  EC 00 00 32 */	fmuls f0, f0, f0
/* 801DEAF8 001DA758  C0 A2 96 10 */	lfs f5, 0x9610(r2)
/* 801DEAFC 001DA75C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801DEB00 001DA760  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801DEB04 001DA764  EC 01 00 2A */	fadds f0, f1, f0
/* 801DEB08 001DA768  EC 22 00 2A */	fadds f1, f2, f0
/* 801DEB0C 001DA76C  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 801DEB10 001DA770  4C 40 13 82 */	cror 2, 0, 2
/* 801DEB14 001DA774  40 82 00 08 */	bne lbl_801DEB1C
/* 801DEB18 001DA778  48 00 00 0C */	b lbl_801DEB24
lbl_801DEB1C:
/* 801DEB1C 001DA77C  4B FF 5D 19 */	bl sqrt
/* 801DEB20 001DA780  FC A0 08 18 */	frsp f5, f1
lbl_801DEB24:
/* 801DEB24 001DA784  FC 60 28 18 */	frsp f3, f5
/* 801DEB28 001DA788  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 801DEB2C 001DA78C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801DEB30 001DA790  38 61 00 70 */	addi r3, r1, 0x70
/* 801DEB34 001DA794  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801DEB38 001DA798  48 09 DA 09 */	bl PSMTXScale
/* 801DEB3C 001DA79C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 801DEB40 001DA7A0  2C 1F 00 00 */	cmpwi r31, 0
/* 801DEB44 001DA7A4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 801DEB48 001DA7A8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 801DEB4C 001DA7AC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801DEB50 001DA7B0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801DEB54 001DA7B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801DEB58 001DA7B8  41 82 01 10 */	beq lbl_801DEC68
/* 801DEB5C 001DA7BC  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 801DEB60 001DA7C0  38 81 00 30 */	addi r4, r1, 0x30
/* 801DEB64 001DA7C4  38 A1 00 24 */	addi r5, r1, 0x24
/* 801DEB68 001DA7C8  48 09 E1 81 */	bl PSVECSubtract
/* 801DEB6C 001DA7CC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801DEB70 001DA7D0  C0 42 96 38 */	lfs f2, 0x9638(r2)
/* 801DEB74 001DA7D4  C0 62 96 10 */	lfs f3, 0x9610(r2)
/* 801DEB78 001DA7D8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801DEB7C 001DA7DC  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801DEB80 001DA7E0  40 80 00 34 */	bge lbl_801DEBB4
/* 801DEB84 001DA7E4  C0 22 96 3C */	lfs f1, 0x963C(r2)
/* 801DEB88 001DA7E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DEB8C 001DA7EC  40 81 00 28 */	ble lbl_801DEBB4
/* 801DEB90 001DA7F0  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 801DEB94 001DA7F4  40 80 00 20 */	bge lbl_801DEBB4
/* 801DEB98 001DA7F8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801DEB9C 001DA7FC  40 81 00 18 */	ble lbl_801DEBB4
/* 801DEBA0 001DA800  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801DEBA4 001DA804  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801DEBA8 001DA808  40 80 00 0C */	bge lbl_801DEBB4
/* 801DEBAC 001DA80C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DEBB0 001DA810  41 81 00 0C */	bgt lbl_801DEBBC
lbl_801DEBB4:
/* 801DEBB4 001DA814  38 00 00 00 */	li r0, 0
/* 801DEBB8 001DA818  48 00 00 08 */	b lbl_801DEBC0
lbl_801DEBBC:
/* 801DEBBC 001DA81C  38 00 00 01 */	li r0, 1
lbl_801DEBC0:
/* 801DEBC0 001DA820  2C 00 00 00 */	cmpwi r0, 0
/* 801DEBC4 001DA824  41 82 00 18 */	beq lbl_801DEBDC
/* 801DEBC8 001DA828  3C 60 80 49 */	lis r3, lbl_804932E0@ha
/* 801DEBCC 001DA82C  7F 84 E3 78 */	mr r4, r28
/* 801DEBD0 001DA830  38 63 32 E0 */	addi r3, r3, lbl_804932E0@l
/* 801DEBD4 001DA834  48 09 D3 85 */	bl PSMTXCopy
/* 801DEBD8 001DA838  48 00 00 C4 */	b lbl_801DEC9C
lbl_801DEBDC:
/* 801DEBDC 001DA83C  38 61 00 24 */	addi r3, r1, 0x24
/* 801DEBE0 001DA840  7C 64 1B 78 */	mr r4, r3
/* 801DEBE4 001DA844  48 09 E1 45 */	bl PSVECNormalize
/* 801DEBE8 001DA848  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801DEBEC 001DA84C  C0 02 96 00 */	lfs f0, 0x9600(r2)
/* 801DEBF0 001DA850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEBF4 001DA854  4C 41 13 82 */	cror 2, 1, 2
/* 801DEBF8 001DA858  40 82 00 0C */	bne lbl_801DEC04
/* 801DEBFC 001DA85C  C0 22 96 10 */	lfs f1, 0x9610(r2)
/* 801DEC00 001DA860  48 00 00 24 */	b lbl_801DEC24
lbl_801DEC04:
/* 801DEC04 001DA864  C0 02 96 14 */	lfs f0, 0x9614(r2)
/* 801DEC08 001DA868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEC0C 001DA86C  4C 40 13 82 */	cror 2, 0, 2
/* 801DEC10 001DA870  40 82 00 0C */	bne lbl_801DEC1C
/* 801DEC14 001DA874  C0 22 96 40 */	lfs f1, 0x9640(r2)
/* 801DEC18 001DA878  48 00 00 0C */	b lbl_801DEC24
lbl_801DEC1C:
/* 801DEC1C 001DA87C  4B FF 59 B9 */	bl acos
/* 801DEC20 001DA880  FC 20 08 18 */	frsp f1, f1
lbl_801DEC24:
/* 801DEC24 001DA884  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801DEC28 001DA888  C0 02 96 10 */	lfs f0, 0x9610(r2)
/* 801DEC2C 001DA88C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801DEC30 001DA890  40 80 00 08 */	bge lbl_801DEC38
/* 801DEC34 001DA894  FC 20 08 50 */	fneg f1, f1
lbl_801DEC38:
/* 801DEC38 001DA898  3C 80 80 49 */	lis r4, lbl_80493614@ha
/* 801DEC3C 001DA89C  38 61 00 08 */	addi r3, r1, 8
/* 801DEC40 001DA8A0  38 84 36 14 */	addi r4, r4, lbl_80493614@l
/* 801DEC44 001DA8A4  48 09 E4 E1 */	bl C_QUATRotAxisRad
/* 801DEC48 001DA8A8  38 61 00 40 */	addi r3, r1, 0x40
/* 801DEC4C 001DA8AC  38 81 00 08 */	addi r4, r1, 8
/* 801DEC50 001DA8B0  48 09 D9 71 */	bl PSMTXQuat
/* 801DEC54 001DA8B4  38 81 00 70 */	addi r4, r1, 0x70
/* 801DEC58 001DA8B8  38 61 00 40 */	addi r3, r1, 0x40
/* 801DEC5C 001DA8BC  7C 85 23 78 */	mr r5, r4
/* 801DEC60 001DA8C0  48 09 D3 2D */	bl PSMTXConcat
/* 801DEC64 001DA8C4  48 00 00 14 */	b lbl_801DEC78
lbl_801DEC68:
/* 801DEC68 001DA8C8  38 81 00 70 */	addi r4, r1, 0x70
/* 801DEC6C 001DA8CC  38 7D 02 04 */	addi r3, r29, 0x204
/* 801DEC70 001DA8D0  7C 85 23 78 */	mr r5, r4
/* 801DEC74 001DA8D4  48 09 D3 19 */	bl PSMTXConcat
lbl_801DEC78:
/* 801DEC78 001DA8D8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801DEC7C 001DA8DC  7F 84 E3 78 */	mr r4, r28
/* 801DEC80 001DA8E0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801DEC84 001DA8E4  38 61 00 70 */	addi r3, r1, 0x70
/* 801DEC88 001DA8E8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801DEC8C 001DA8EC  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 801DEC90 001DA8F0  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 801DEC94 001DA8F4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 801DEC98 001DA8F8  48 09 D2 C1 */	bl PSMTXCopy
lbl_801DEC9C:
/* 801DEC9C 001DA8FC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801DECA0 001DA900  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801DECA4 001DA904  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801DECA8 001DA908  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 801DECAC 001DA90C  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 801DECB0 001DA910  7C 08 03 A6 */	mtlr r0
/* 801DECB4 001DA914  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801DECB8 001DA918  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

void func_801F3904(GSnull*, float); // TODO: member function
void func_801DDC84__13GSblendObjectFf(); // TODO: member function
BOOL func_801F3C7C(GSnull* p1); // TODO: member function

void GScamera::func1(float p1)
{
    float f31 = func_801F3C7C(this) ? 0.0f : p1;
    func_801DDC84(f31);
    func3();
    func_801DE1F8();
    func_801F3904(this, f31);
}

// 801DED3C
void GScamera::func2(BOOL p1)
{
    GSnull::func2(p1);
    if (unk108) {
        unk104 = (unk108->unk30 & 0x3) | 0x100;
        if ((unk108->unk30 & 0x4))
            unk104 |= 0x40;
        
        switch (unk104 & 0x3)
        {
            case 2:
                unk168 = 0.0f;
                unk170 = 0.0f;
                unk174 = unk108->unk34; // float
                unk16C = unk108->unk34 / unk108->unk38; // float
                break;
            case 3:
                float f1 = (0.5f * unk108->unk34);
                unk174 = f1;
                unk170 = -f1;
                
                f1 /= unk108->unk38;
                unk16C = f1;
                unk168 = -f1;
                break;
            case 0: case 1: default: 
                unk168 = 57.29578f * unk108->unk34;
                unk16C = unk108->unk38;
                break;
        }
        
        unk17C = unk108->unk3C;
        
        if (unk108->unk48) {
            unk188 = unk108->unk48->unk0;
            unk194 = unk108->unk48->unkC;
            unk1A0 = unk108->unk48->unk18;
        } else {
            unk188.x = 0.0f;
            unk188.y = 0.0f;
            unk188.z = 0.0f;
            
            unk194.x = 0.0f;
            unk194.y = 1.0f;
            unk194.z = 0.0f;
            
            unk1A0.x = 0.0f;
            unk1A0.y = 0.0f;
            unk1A0.z = -1.0f;
        }
        unk1D0 = NULL;
        unk104 |= 0x28;
    }
}

// TODO: move to header
void func_801E1278(gUnkClass12*, Vec*, float);
void func_801E10C0(gUnkClass12*, float*, float);

// TODO: determine if there's any relationship between this
// function and the unkC callback in gUnkClass9, called in func_801DD7FC
void GScamera::lbl_801DEEF8(gUnkClass12* p1, u32 p2, float p3)
{
    if (!p2) {
        switch (p1->unk1)
        {
            case 5:
                func_801E10C0(p1, &unk168, p3);
                unk104 |= 0x8;
                break;
            case 6:
                func_801E10C0(p1, &unk16C, p3);
                unk104 |= 0x8;
                break;
            case 7:
                func_801E10C0(p1, &unk17C.x, p3);
                unk104 |= 0x8;
                break;
            case 8:
                func_801E10C0(p1, &unk17C.y, p3);
                unk104 |= 0x8;
                break;
            case 9:
                func_801E10C0(p1, &unk17C.z, p3);
                break;
            case 10:
                func_801E1278(p1, &unk188, p3);
                unk104 |= 0x20;
                break;
            case 11:
                func_801E1278(p1, &unk1A0, p3);
                unk104 |= 0x20;
                break;
            case 12:
                func_801E1278(p1, &unk194, p3);
                unk104 |= 0x20;
                break;
            default:
                break;
        }
    }
}

} // extern "C"
