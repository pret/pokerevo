#include "ctorStruct.h"
#include <SDK/mtx.h>
#include "GSblendObject.h"
#include "code_801DD5C8.h"

// static ctorStruct gUnk8063F358;


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
    float unk170;
    float unk174;
    
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


__declspec(section ".data") extern u32 lbl_80423358; // GScamera vtable
extern float lbl_80641BF8;
extern float lbl_80641BFC;
extern float lbl_80641C00;
extern float lbl_80641C04;
extern float lbl_80641C08;
extern float lbl_80641C0C;
extern float lbl_80641C10;
extern float lbl_80641C14;
extern void __ct__6GSnullFUc(void);


// 801DDF78
GScamera::GScamera() : GSnull(4)
{
    //float f0 = -1.0f;
    //float f1 = 0.0f;
    float f2 = 10.0f;
    float f3;
    float f4;
    float f5 = 1.0f;
    float f6;
    float f7;
    
    f7 = 60.0f;
    f6 = 1.28f;
    f4 = 0.1f;
    f3 = 100000.0f;
    
    unk17C.z = f2;
    //vptr100 = &lbl_80423358;
    unk104 = 0x109;
    unk108 = NULL;
    
    unk14C = 0;
    unk150 = 0;
    unk154 = 0;
    unk158 = 0;
    unk15C = 0;
    unk160 = 0;
    unk164 = 0;
    
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
    float f5 = 1.0f;
    float f6;
    float f7;
    
    f6 = 1.28f;
    f2 = 10.0f;
    f7 = 60.0f;
    f4 = 0.1f;
    f3 = 100000.0f;
    
    unk16C = f6;
    unk17C.z = f2;
    // vptr100 = &lbl_80423358;
    
    unk104 = 0x109;
    unk108 = p2;
    
    unk14C = 0;
    unk150 = 0;
    unk154 = 0;
    unk158 = 0;
    unk15C = 0;
    unk160 = 0;
    unk164 = 0;
    
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

extern u32 lbl_8063F788;
extern float lbl_80641C18;
extern float lbl_80641C1C;
extern float lbl_80641C20;
extern double lbl_80641C28;
extern float lbl_80641C30;
extern float lbl_80641C34;
void func_8022369C(void);
void atan2(void);
void tan(void);
void func_80223694(void);
void func_80223698(void);


#ifdef NONMATCHING
void GScamera::func_801DE1F8()
{
    
}
#else
asm void GScamera::func_801DE1F8()
{
    nofralloc
/* 801DE1F8 001D9E58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DE1FC 001D9E5C  7C 08 02 A6 */	mflr r0
/* 801DE200 001D9E60  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DE204 001D9E64  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801DE208 001D9E68  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0
/* 801DE20C 001D9E6C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 801DE210 001D9E70  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0
/* 801DE214 001D9E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE218 001D9E78  7C 7F 1B 78 */	mr r31, r3
/* 801DE21C 001D9E7C  80 8D A4 C8 */	lwz r4, lbl_8063F788
/* 801DE220 001D9E80  88 04 00 7A */	lbz r0, 0x7a(r4)
/* 801DE224 001D9E84  2C 00 00 00 */	cmpwi r0, 0
/* 801DE228 001D9E88  41 82 00 28 */	beq lbl_801DE250
/* 801DE22C 001D9E8C  80 83 01 04 */	lwz r4, 0x104(r3)
/* 801DE230 001D9E90  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801DE234 001D9E94  41 82 00 1C */	beq lbl_801DE250
/* 801DE238 001D9E98  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 801DE23C 001D9E9C  40 82 00 0C */	bne lbl_801DE248
/* 801DE240 001D9EA0  60 80 00 0C */	ori r0, r4, 0xc
/* 801DE244 001D9EA4  90 03 01 04 */	stw r0, 0x104(r3)
lbl_801DE248:
/* 801DE248 001D9EA8  C3 C2 96 18 */	lfs f30, lbl_80641C18
/* 801DE24C 001D9EAC  48 00 00 20 */	b lbl_801DE26C
lbl_801DE250:
/* 801DE250 001D9EB0  80 83 01 04 */	lwz r4, 0x104(r3)
/* 801DE254 001D9EB4  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 801DE258 001D9EB8  41 82 00 10 */	beq lbl_801DE268
/* 801DE25C 001D9EBC  60 80 00 08 */	ori r0, r4, 8
/* 801DE260 001D9EC0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801DE264 001D9EC4  90 03 01 04 */	stw r0, 0x104(r3)
lbl_801DE268:
/* 801DE268 001D9EC8  C3 C2 96 00 */	lfs f30, lbl_80641C00
lbl_801DE26C:
/* 801DE26C 001D9ECC  80 83 01 04 */	lwz r4, 0x104(r3)
/* 801DE270 001D9ED0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 801DE274 001D9ED4  41 82 02 8C */	beq lbl_801DE500
/* 801DE278 001D9ED8  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 801DE27C 001D9EDC  C3 E3 01 78 */	lfs f31, 0x178(r3)
/* 801DE280 001D9EE0  2C 00 00 02 */	cmpwi r0, 2
/* 801DE284 001D9EE4  41 82 00 18 */	beq lbl_801DE29C
/* 801DE288 001D9EE8  40 80 00 08 */	bge lbl_801DE290
/* 801DE28C 001D9EEC  48 00 01 A0 */	b lbl_801DE42C
lbl_801DE290:
/* 801DE290 001D9EF0  2C 00 00 04 */	cmpwi r0, 4
/* 801DE294 001D9EF4  40 80 01 98 */	bge lbl_801DE42C
/* 801DE298 001D9EF8  48 00 00 CC */	b lbl_801DE364
lbl_801DE29C:
/* 801DE29C 001D9EFC  C0 A2 96 00 */	lfs f5, lbl_80641C00
/* 801DE2A0 001D9F00  C0 83 01 74 */	lfs f4, 0x174(r3)
/* 801DE2A4 001D9F04  C0 63 01 70 */	lfs f3, 0x170(r3)
/* 801DE2A8 001D9F08  EC 45 F0 28 */	fsubs f2, f5, f30
/* 801DE2AC 001D9F0C  C0 02 96 1C */	lfs f0, lbl_80641C1C
/* 801DE2B0 001D9F10  FC 1F 28 40 */	fcmpo cr0, f31, f5
/* 801DE2B4 001D9F14  EC 24 18 28 */	fsubs f1, f4, f3
/* 801DE2B8 001D9F18  EC 22 00 72 */	fmuls f1, f2, f1
/* 801DE2BC 001D9F1C  ED 00 00 72 */	fmuls f8, f0, f1
/* 801DE2C0 001D9F20  40 81 00 3C */	ble lbl_801DE2FC
/* 801DE2C4 001D9F24  EC E5 F8 24 */	fdivs f7, f5, f31
/* 801DE2C8 001D9F28  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 801DE2CC 001D9F2C  C0 43 01 6C */	lfs f2, 0x16c(r3)
/* 801DE2D0 001D9F30  C0 A3 01 7C */	lfs f5, 0x17c(r3)
/* 801DE2D4 001D9F34  C0 C3 01 80 */	lfs f6, 0x180(r3)
/* 801DE2D8 001D9F38  38 63 01 0C */	addi r3, r3, 0x10c
/* 801DE2DC 001D9F3C  EC 63 07 B2 */	fmuls f3, f3, f30
/* 801DE2E0 001D9F40  EC 04 07 B2 */	fmuls f0, f4, f30
/* 801DE2E4 001D9F44  EC 21 01 F2 */	fmuls f1, f1, f7
/* 801DE2E8 001D9F48  EC 42 01 F2 */	fmuls f2, f2, f7
/* 801DE2EC 001D9F4C  EC 68 18 2A */	fadds f3, f8, f3
/* 801DE2F0 001D9F50  EC 88 00 2A */	fadds f4, f8, f0
/* 801DE2F4 001D9F54  48 04 53 A5 */	bl func_80223698
/* 801DE2F8 001D9F58  48 00 00 30 */	b lbl_801DE328
lbl_801DE2FC:
/* 801DE2FC 001D9F5C  EF FF 07 B2 */	fmuls f31, f31, f30
/* 801DE300 001D9F60  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 801DE304 001D9F64  C0 43 01 6C */	lfs f2, 0x16c(r3)
/* 801DE308 001D9F68  C0 A3 01 7C */	lfs f5, 0x17c(r3)
/* 801DE30C 001D9F6C  EC 63 07 F2 */	fmuls f3, f3, f31
/* 801DE310 001D9F70  C0 C3 01 80 */	lfs f6, 0x180(r3)
/* 801DE314 001D9F74  EC 04 07 F2 */	fmuls f0, f4, f31
/* 801DE318 001D9F78  38 63 01 0C */	addi r3, r3, 0x10c
/* 801DE31C 001D9F7C  EC 68 18 2A */	fadds f3, f8, f3
/* 801DE320 001D9F80  EC 88 00 2A */	fadds f4, f8, f0
/* 801DE324 001D9F84  48 04 53 75 */	bl func_80223698
lbl_801DE328:
/* 801DE328 001D9F88  C0 C2 96 00 */	lfs f6, lbl_80641C00
/* 801DE32C 001D9F8C  C0 BF 01 0C */	lfs f5, 0x10c(r31)
/* 801DE330 001D9F90  C0 9F 01 18 */	lfs f4, 0x118(r31)
/* 801DE334 001D9F94  C0 7F 01 20 */	lfs f3, 0x120(r31)
/* 801DE338 001D9F98  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 801DE33C 001D9F9C  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 801DE340 001D9FA0  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 801DE344 001D9FA4  D0 DF 01 4C */	stfs f6, 0x14c(r31)
/* 801DE348 001D9FA8  D0 BF 01 50 */	stfs f5, 0x150(r31)
/* 801DE34C 001D9FAC  D0 9F 01 54 */	stfs f4, 0x154(r31)
/* 801DE350 001D9FB0  D0 7F 01 58 */	stfs f3, 0x158(r31)
/* 801DE354 001D9FB4  D0 5F 01 5C */	stfs f2, 0x15c(r31)
/* 801DE358 001D9FB8  D0 3F 01 60 */	stfs f1, 0x160(r31)
/* 801DE35C 001D9FBC  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 801DE360 001D9FC0  48 00 01 94 */	b lbl_801DE4F4
lbl_801DE364:
/* 801DE364 001D9FC4  C0 A2 96 00 */	lfs f5, lbl_80641C00
/* 801DE368 001D9FC8  C0 83 01 74 */	lfs f4, 0x174(r3)
/* 801DE36C 001D9FCC  C0 63 01 70 */	lfs f3, 0x170(r3)
/* 801DE370 001D9FD0  EC 45 F0 28 */	fsubs f2, f5, f30
/* 801DE374 001D9FD4  C0 02 96 1C */	lfs f0, lbl_80641C1C
/* 801DE378 001D9FD8  FC 1F 28 40 */	fcmpo cr0, f31, f5
/* 801DE37C 001D9FDC  EC 24 18 28 */	fsubs f1, f4, f3
/* 801DE380 001D9FE0  EC 22 00 72 */	fmuls f1, f2, f1
/* 801DE384 001D9FE4  ED 00 00 72 */	fmuls f8, f0, f1
/* 801DE388 001D9FE8  40 81 00 3C */	ble lbl_801DE3C4
/* 801DE38C 001D9FEC  EC E5 F8 24 */	fdivs f7, f5, f31
/* 801DE390 001D9FF0  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 801DE394 001D9FF4  C0 43 01 6C */	lfs f2, 0x16c(r3)
/* 801DE398 001D9FF8  C0 A3 01 7C */	lfs f5, 0x17c(r3)
/* 801DE39C 001D9FFC  C0 C3 01 80 */	lfs f6, 0x180(r3)
/* 801DE3A0 001DA000  38 63 01 0C */	addi r3, r3, 0x10c
/* 801DE3A4 001DA004  EC 63 07 B2 */	fmuls f3, f3, f30
/* 801DE3A8 001DA008  EC 04 07 B2 */	fmuls f0, f4, f30
/* 801DE3AC 001DA00C  EC 21 01 F2 */	fmuls f1, f1, f7
/* 801DE3B0 001DA010  EC 42 01 F2 */	fmuls f2, f2, f7
/* 801DE3B4 001DA014  EC 68 18 2A */	fadds f3, f8, f3
/* 801DE3B8 001DA018  EC 88 00 2A */	fadds f4, f8, f0
/* 801DE3BC 001DA01C  48 04 52 D9 */	bl func_80223694
/* 801DE3C0 001DA020  48 00 00 30 */	b lbl_801DE3F0
lbl_801DE3C4:
/* 801DE3C4 001DA024  EF FF 07 B2 */	fmuls f31, f31, f30
/* 801DE3C8 001DA028  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 801DE3CC 001DA02C  C0 43 01 6C */	lfs f2, 0x16c(r3)
/* 801DE3D0 001DA030  C0 A3 01 7C */	lfs f5, 0x17c(r3)
/* 801DE3D4 001DA034  EC 63 07 F2 */	fmuls f3, f3, f31
/* 801DE3D8 001DA038  C0 C3 01 80 */	lfs f6, 0x180(r3)
/* 801DE3DC 001DA03C  EC 04 07 F2 */	fmuls f0, f4, f31
/* 801DE3E0 001DA040  38 63 01 0C */	addi r3, r3, 0x10c
/* 801DE3E4 001DA044  EC 68 18 2A */	fadds f3, f8, f3
/* 801DE3E8 001DA048  EC 88 00 2A */	fadds f4, f8, f0
/* 801DE3EC 001DA04C  48 04 52 A9 */	bl func_80223694
lbl_801DE3F0:
/* 801DE3F0 001DA050  C0 C2 96 10 */	lfs f6, lbl_80641C10
/* 801DE3F4 001DA054  C0 BF 01 0C */	lfs f5, 0x10c(r31)
/* 801DE3F8 001DA058  C0 9F 01 14 */	lfs f4, 0x114(r31)
/* 801DE3FC 001DA05C  C0 7F 01 20 */	lfs f3, 0x120(r31)
/* 801DE400 001DA060  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 801DE404 001DA064  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 801DE408 001DA068  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 801DE40C 001DA06C  D0 DF 01 4C */	stfs f6, 0x14c(r31)
/* 801DE410 001DA070  D0 BF 01 50 */	stfs f5, 0x150(r31)
/* 801DE414 001DA074  D0 9F 01 54 */	stfs f4, 0x154(r31)
/* 801DE418 001DA078  D0 7F 01 58 */	stfs f3, 0x158(r31)
/* 801DE41C 001DA07C  D0 5F 01 5C */	stfs f2, 0x15c(r31)
/* 801DE420 001DA080  D0 3F 01 60 */	stfs f1, 0x160(r31)
/* 801DE424 001DA084  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 801DE428 001DA088  48 00 00 CC */	b lbl_801DE4F4
lbl_801DE42C:
/* 801DE42C 001DA08C  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 801DE430 001DA090  41 82 00 6C */	beq lbl_801DE49C
/* 801DE434 001DA094  C0 02 96 00 */	lfs f0, lbl_80641C00
/* 801DE438 001DA098  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801DE43C 001DA09C  40 81 00 60 */	ble lbl_801DE49C
/* 801DE440 001DA0A0  C0 42 96 1C */	lfs f2, lbl_80641C1C
/* 801DE444 001DA0A4  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 801DE448 001DA0A8  C0 02 96 20 */	lfs f0, lbl_80641C20
/* 801DE44C 001DA0AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 801DE450 001DA0B0  EC 20 00 72 */	fmuls f1, f0, f1
/* 801DE454 001DA0B4  4B FF 61 09 */	bl tan
/* 801DE458 001DA0B8  FC 00 08 18 */	frsp f0, f1
/* 801DE45C 001DA0BC  C8 42 96 28 */	lfd f2, lbl_80641C28
/* 801DE460 001DA0C0  EC 20 F8 24 */	fdivs f1, f0, f31
/* 801DE464 001DA0C4  4B FF 61 79 */	bl atan2
/* 801DE468 001DA0C8  FC 60 08 18 */	frsp f3, f1
/* 801DE46C 001DA0CC  C0 42 96 30 */	lfs f2, lbl_80641C30
/* 801DE470 001DA0D0  EF FF 07 B2 */	fmuls f31, f31, f30
/* 801DE474 001DA0D4  C0 22 96 34 */	lfs f1, lbl_80641C34
/* 801DE478 001DA0D8  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 801DE47C 001DA0DC  38 7F 01 0C */	addi r3, r31, 0x10c
/* 801DE480 001DA0E0  EC A2 00 F2 */	fmuls f5, f2, f3
/* 801DE484 001DA0E4  C0 7F 01 7C */	lfs f3, 0x17c(r31)
/* 801DE488 001DA0E8  EC 40 07 F2 */	fmuls f2, f0, f31
/* 801DE48C 001DA0EC  C0 9F 01 80 */	lfs f4, 0x180(r31)
/* 801DE490 001DA0F0  EC 21 01 72 */	fmuls f1, f1, f5
/* 801DE494 001DA0F4  48 04 52 09 */	bl func_8022369C
/* 801DE498 001DA0F8  48 00 00 24 */	b lbl_801DE4BC
lbl_801DE49C:
/* 801DE49C 001DA0FC  EF FF 07 B2 */	fmuls f31, f31, f30
/* 801DE4A0 001DA100  C0 03 01 6C */	lfs f0, 0x16c(r3)
/* 801DE4A4 001DA104  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 801DE4A8 001DA108  C0 63 01 7C */	lfs f3, 0x17c(r3)
/* 801DE4AC 001DA10C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 801DE4B0 001DA110  C0 83 01 80 */	lfs f4, 0x180(r3)
/* 801DE4B4 001DA114  38 63 01 0C */	addi r3, r3, 0x10c
/* 801DE4B8 001DA118  48 04 51 E5 */	bl func_8022369C
lbl_801DE4BC:
/* 801DE4BC 001DA11C  C0 C2 96 10 */	lfs f6, lbl_80641C10
/* 801DE4C0 001DA120  C0 BF 01 0C */	lfs f5, 0x10c(r31)
/* 801DE4C4 001DA124  C0 9F 01 14 */	lfs f4, 0x114(r31)
/* 801DE4C8 001DA128  C0 7F 01 20 */	lfs f3, 0x120(r31)
/* 801DE4CC 001DA12C  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 801DE4D0 001DA130  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 801DE4D4 001DA134  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 801DE4D8 001DA138  D0 DF 01 4C */	stfs f6, 0x14c(r31)
/* 801DE4DC 001DA13C  D0 BF 01 50 */	stfs f5, 0x150(r31)
/* 801DE4E0 001DA140  D0 9F 01 54 */	stfs f4, 0x154(r31)
/* 801DE4E4 001DA144  D0 7F 01 58 */	stfs f3, 0x158(r31)
/* 801DE4E8 001DA148  D0 5F 01 5C */	stfs f2, 0x15c(r31)
/* 801DE4EC 001DA14C  D0 3F 01 60 */	stfs f1, 0x160(r31)
/* 801DE4F0 001DA150  D0 1F 01 64 */	stfs f0, 0x164(r31)
lbl_801DE4F4:
/* 801DE4F4 001DA154  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801DE4F8 001DA158  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 801DE4FC 001DA15C  90 1F 01 04 */	stw r0, 0x104(r31)
lbl_801DE500:
/* 801DE500 001DA160  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0
/* 801DE504 001DA164  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801DE508 001DA168  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0
/* 801DE50C 001DA16C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 801DE510 001DA170  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DE514 001DA174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE518 001DA178  7C 08 03 A6 */	mtlr r0
/* 801DE51C 001DA17C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DE520 001DA180  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

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
extern float lbl_80641C38;    
extern float lbl_80641C3C;    
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

void func3__6GSnullFv();

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
extern float lbl_80641C40;  

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


inline float InlineFunc1(const Mtx m, u32 col)
{
    float f1 = (m[0][col]*m[0][col] + m[1][col]*m[1][col] + m[2][col]*m[2][col]);
    if (f1 <= 0.0f)
        return 0.0f;
    return static_cast<float>(sqrt(f1));
}

#define NONMATCHING_801DEA3C
#ifdef NONMATCHING_801DEA3C
void func_801DEA3C(Mtx p1, GScamera* p2, Mtx p3, BOOL p4)
{
    Mtx sp70;
    Mtx sp40;
    Vec sp30;
    Vec sp24;
    float sp18[3] = {InlineFunc1(p3, 0), InlineFunc1(p3, 1), InlineFunc1(p3, 2)};
    Quaternion sp8;
    
    MTXScale(sp70, sp18[0], sp18[1], sp18[2]);
    
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
/* 801DEA60 001DA6C0  C0 62 96 10 */	lfs f3, lbl_80641C10
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
/* 801DEAB8 001DA718  C0 82 96 10 */	lfs f4, lbl_80641C10
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
/* 801DEAF8 001DA758  C0 A2 96 10 */	lfs f5, lbl_80641C10
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
/* 801DEB70 001DA7D0  C0 42 96 38 */	lfs f2, lbl_80641C38
/* 801DEB74 001DA7D4  C0 62 96 10 */	lfs f3, lbl_80641C10
/* 801DEB78 001DA7D8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801DEB7C 001DA7DC  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801DEB80 001DA7E0  40 80 00 34 */	bge lbl_801DEBB4
/* 801DEB84 001DA7E4  C0 22 96 3C */	lfs f1, lbl_80641C3C
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
/* 801DEBEC 001DA84C  C0 02 96 00 */	lfs f0, lbl_80641C00
/* 801DEBF0 001DA850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEBF4 001DA854  4C 41 13 82 */	cror 2, 1, 2
/* 801DEBF8 001DA858  40 82 00 0C */	bne lbl_801DEC04
/* 801DEBFC 001DA85C  C0 22 96 10 */	lfs f1, lbl_80641C10
/* 801DEC00 001DA860  48 00 00 24 */	b lbl_801DEC24
lbl_801DEC04:
/* 801DEC04 001DA864  C0 02 96 14 */	lfs f0, lbl_80641C14
/* 801DEC08 001DA868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEC0C 001DA86C  4C 40 13 82 */	cror 2, 0, 2
/* 801DEC10 001DA870  40 82 00 0C */	bne lbl_801DEC1C
/* 801DEC14 001DA874  C0 22 96 40 */	lfs f1, lbl_80641C40
/* 801DEC18 001DA878  48 00 00 0C */	b lbl_801DEC24
lbl_801DEC1C:
/* 801DEC1C 001DA87C  4B FF 59 B9 */	bl acos
/* 801DEC20 001DA880  FC 20 08 18 */	frsp f1, f1
lbl_801DEC24:
/* 801DEC24 001DA884  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801DEC28 001DA888  C0 02 96 10 */	lfs f0, lbl_80641C10
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
void func_801E1278(gUnkClass12*, Vec*);
void func_801E10C0(gUnkClass12*, float*);

// TODO: determine if there's any relationship between this
// function and the unkC callback in gUnkClass9, called in func_801DD7FC
void GScamera::lbl_801DEEF8(gUnkClass12* p1, u32 p2, float p3)
{
    if (!p2) {
        switch (p1->unk1)
        {
            case 5:
                func_801E10C0(p1, &unk168);
                unk104 |= 0x8;
                break;
            case 6:
                func_801E10C0(p1, &unk16C);
                unk104 |= 0x8;
                break;
            case 7:
                func_801E10C0(p1, &unk17C.x);
                unk104 |= 0x8;
                break;
            case 8:
                func_801E10C0(p1, &unk17C.y);
                unk104 |= 0x8;
                break;
            case 9:
                func_801E10C0(p1, &unk17C.z);
                break;
            case 10:
                func_801E1278(p1, &unk188);
                unk104 |= 0x20;
                break;
            case 11:
                func_801E1278(p1, &unk1A0);
                unk104 |= 0x20;
                break;
            case 12:
                func_801E1278(p1, &unk194);
                unk104 |= 0x20;
                break;
            default:
                break;
        }
    }
}

} // extern "C"

