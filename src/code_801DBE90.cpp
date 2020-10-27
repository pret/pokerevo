#include "types.h"
#include "ctorStruct.h"
#include "Runtime/__mem.h"
#include "SDK/mem.h"
#include "SDK/os.h"
#include "SDK/dvd.h"
#include "SDK/nand.h"
#include "code_801DAAE0.h"
#include "code_801DCE6C.h"

namespace
{
    
    //TODO: header/source
    struct unkClass
    {
        u8 unk0; // file open flag?
        u8 unk1;
        u8 unk2[0x2];
        DVDFileInfo unk4;
    };
    
   

    
}





//TODO: internal linkage

// .sdata
extern char* lbl_8063D6D8;
extern char* lbl_8063D6E0;
extern char lbl_8063D6E4[8];
extern char lbl_8063D6EC[8];

extern u8 lbl_8063F31E;
extern u8 lbl_8063F31F;
extern size_t lbl_8063F320;
extern unkClass* lbl_8063F324;
extern u32 lbl_8063F328;
extern u32 lbl_8063F32C;
extern gUnkClass4* lbl_8063F338;

extern u8 lbl_804917F0[0x40];

extern void* lbl_8063F600; // initialized in func_8022410C


extern "C"
{
    
//extern
extern MEMHeapHandle lbl_8063E8EC;
s32 func_80249BC8(void);
// code_80223C54
u32 func_80223FD0(u32, u32, u32, void (*)(u32, u32));

void func_801DC9CC(u32, u32);
void func_8022408C(u32, const char*);
u32 func_802245C4(void*);
void func_80224588(void*);

//static
u32 func_801DCF74(gUnkClass4*, const char*, unkClass*);
//static
u32 func_801DCF48(gUnkClass4*, const char*);
//static
s32 func_801DD084(gUnkClass4* p1, unkClass* p2, void* addr, s32 length, s32 offset);

void* func_801DD220(gUnkClass4*, unkClass*, void*, s32, s32);
    
u32 func_801DCFE4(gUnkClass4*, unkClass*);

u32 func_801DD03C(gUnkClass4*, unkClass*, u32*);
    
    
    
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

#ifdef NONMATCHING
//static
unkClass *func_801DBED0(void)
{

    OSDisableInterrupts();

  unkClass *r31 = 0;
  size_t i;
  for (i = 0; i < lbl_8063F320; i++)
  {
    if (lbl_8063F324[i].unk0 != 1)
    {
      lbl_8063F324[i].unk0 = 1;
      lbl_8063F324[i].unk1 = 0;
      r31 = &lbl_8063F324[i];
      break;
    }

  }


    OSRestoreInterrupts();
    return r31;
  

}
#else
asm unkClass* func_801DBED0(void)
{
nofralloc
/* 801DBED0 001D7B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DBED4 001D7B34  7C 08 02 A6 */	mflr r0
/* 801DBED8 001D7B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DBEDC 001D7B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DBEE0 001D7B40  48 09 28 7D */	bl OSDisableInterrupts
/* 801DBEE4 001D7B44  80 ED A0 64 */	lwz r7, lbl_8063F324
/* 801DBEE8 001D7B48  3B E0 00 00 */	li r31, 0
/* 801DBEEC 001D7B4C  80 0D A0 60 */	lwz r0, lbl_8063F320
/* 801DBEF0 001D7B50  38 A0 00 00 */	li r5, 0
/* 801DBEF4 001D7B54  7C E4 3B 78 */	mr r4, r7
/* 801DBEF8 001D7B58  7C 09 03 A6 */	mtctr r0
/* 801DBEFC 001D7B5C  28 00 00 00 */	cmplwi r0, 0
/* 801DBF00 001D7B60  40 81 00 44 */	ble lbl_801DBF44
lbl_801DBF04:
/* 801DBF04 001D7B64  88 04 00 00 */	lbz r0, 0(r4)
/* 801DBF08 001D7B68  28 00 00 01 */	cmplwi r0, 1
/* 801DBF0C 001D7B6C  41 82 00 2C */	beq lbl_801DBF38
/* 801DBF10 001D7B70  1C C5 00 50 */	mulli r6, r5, 0x50
/* 801DBF14 001D7B74  38 00 00 01 */	li r0, 1
/* 801DBF18 001D7B78  38 A0 00 00 */	li r5, 0
/* 801DBF1C 001D7B7C  7C 07 31 AE */	stbx r0, r7, r6
/* 801DBF20 001D7B80  80 0D A0 64 */	lwz r0, lbl_8063F324
/* 801DBF24 001D7B84  7C 80 32 14 */	add r4, r0, r6
/* 801DBF28 001D7B88  98 A4 00 01 */	stb r5, 1(r4)
/* 801DBF2C 001D7B8C  80 0D A0 64 */	lwz r0, lbl_8063F324
/* 801DBF30 001D7B90  7F E0 32 14 */	add r31, r0, r6
/* 801DBF34 001D7B94  48 00 00 10 */	b lbl_801DBF44
lbl_801DBF38:
/* 801DBF38 001D7B98  38 84 00 50 */	addi r4, r4, 0x50
/* 801DBF3C 001D7B9C  38 A5 00 01 */	addi r5, r5, 1
/* 801DBF40 001D7BA0  42 00 FF C4 */	bdnz lbl_801DBF04
lbl_801DBF44:
/* 801DBF44 001D7BA4  48 09 28 41 */	bl OSRestoreInterrupts
/* 801DBF48 001D7BA8  7F E3 FB 78 */	mr r3, r31
/* 801DBF4C 001D7BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DBF50 001D7BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DBF54 001D7BB4  7C 08 03 A6 */	mtlr r0
/* 801DBF58 001D7BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 801DBF5C 001D7BBC  4E 80 00 20 */	blr
}
#pragma peephole on
#endif
//static
void func_801DBF60(unkClass* p1)
{
    OSDisableInterrupts();
    p1->unk0 = 0;
    OSRestoreInterrupts();
}

#ifdef NONMATCHING2
//static
unkClass* func_801DBF98(DVDFileInfo* p1)
{
    unkClass* r4 = lbl_8063F324;
    size_t i = 0;
    for (; i < lbl_8063F320; r4++, i++) {
        if (r4->unk0 != 0 && &r4->unk4 == p1)
            return &lbl_8063F324[i];
    }
    return 0;
}
#else
asm unkClass* func_801DBF98(DVDFileInfo* p1)
{
/* 801DBF98 001D7BF8  80 AD A0 64 */	lwz r5, lbl_8063F324
/* 801DBF9C 001D7BFC  38 C0 00 00 */	li r6, 0
/* 801DBFA0 001D7C00  80 0D A0 60 */	lwz r0, lbl_8063F320
/* 801DBFA4 001D7C04  7C A4 2B 78 */	mr r4, r5
/* 801DBFA8 001D7C08  7C 09 03 A6 */	mtctr r0
/* 801DBFAC 001D7C0C  28 00 00 00 */	cmplwi r0, 0
/* 801DBFB0 001D7C10  40 81 00 34 */	ble lbl_801DBFE4
lbl_801DBFB4:
/* 801DBFB4 001D7C14  88 04 00 00 */	lbz r0, 0(r4)
/* 801DBFB8 001D7C18  2C 00 00 00 */	cmpwi r0, 0
/* 801DBFBC 001D7C1C  41 82 00 1C */	beq lbl_801DBFD8
/* 801DBFC0 001D7C20  38 04 00 04 */	addi r0, r4, 4
/* 801DBFC4 001D7C24  7C 00 18 40 */	cmplw r0, r3
/* 801DBFC8 001D7C28  40 82 00 10 */	bne lbl_801DBFD8
/* 801DBFCC 001D7C2C  1C 06 00 50 */	mulli r0, r6, 0x50
/* 801DBFD0 001D7C30  7C 65 02 14 */	add r3, r5, r0
/* 801DBFD4 001D7C34  4E 80 00 20 */	blr
lbl_801DBFD8:
/* 801DBFD8 001D7C38  38 84 00 50 */	addi r4, r4, 0x50
/* 801DBFDC 001D7C3C  38 C6 00 01 */	addi r6, r6, 1
/* 801DBFE0 001D7C40  42 00 FF D4 */	bdnz lbl_801DBFB4
lbl_801DBFE4:
/* 801DBFE4 001D7C44  38 60 00 00 */	li r3, 0
/* 801DBFE8 001D7C48  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

//static
void func_801DBFEC(s32 p1, DVDFileInfo* p2)
{
    if (lbl_8063F31F == 0) {
        unkClass* r31 = func_801DBF98(p2);
        if (r31 && r31->unk4.unk40) {
            DCInvalidateRange(r31->unk4.unk44, r31->unk4.unk48);
            r31->unk4.unk40(p1, r31);
        }
    }
}

//static
void lbl_801DC068(s32 p1, DVDFileInfo* p2)
{
    if (lbl_8063F31F == 0) {
        unkClass* r3 = func_801DBF98(p2);
        if (r3 && r3->unk4.unk40)
            r3->unk4.unk40(p1, r3);
    }
}

BOOL func_801DC0C8(size_t p1, u32 p2)
{
    if (lbl_8063F31E == 1)
        return FALSE;
    lbl_8063F31F = 0;
    lbl_8063F338 = NULL;
    NANDInit();
    if (!lbl_8063F338)
        lbl_8063F338 = new gUnkClass4;
    lbl_8063F320 = p1;
    lbl_8063F324 = (unkClass*)func_801DBE90(p1 * sizeof(unkClass));
    if (!lbl_8063F324)
        return FALSE;
    func_801DBEA0();
    memset(lbl_804917F0, 0, sizeof(lbl_804917F0));
    DVDInit();
    if (p2) {
        switch (func_80249BC8()) {
            case 0:
                lbl_8063D6D8 = lbl_8063D6E4;
                break;
            case 1:
                lbl_8063D6D8 = lbl_8063D6E4;
                break;
            case 2:
                lbl_8063D6D8 = lbl_8063D6EC;
                break;
            default:
                break;
        }
        DVDDiskID* diskID = DVDGetCurrentDiskID();
        diskID->gameCode[0] = lbl_8063D6D8[0];
        diskID->gameCode[1] = lbl_8063D6D8[1];
        diskID->gameCode[2] = lbl_8063D6D8[2];
        diskID->gameCode[3] = lbl_8063D6D8[3];
        diskID->makerCode[0] = lbl_8063D6E0[0];
        diskID->makerCode[1] = lbl_8063D6E0[1];
        diskID->unk6 = 0;
        diskID->unk7 = 0;
    }
    DVDSetAutoFatalMessaging(FALSE);
    
    lbl_8063F32C = func_80223FD0(1, 19, 0, &func_801DC9CC);
    func_8022408C(lbl_8063F32C, "GSdvdErrorTask");
    
    lbl_8063F31E = 1;
    return TRUE;
}

//static
void func_801DC264(void)
{
    BOOL r31 = OSDisableInterrupts();
    OSRestoreInterrupts();
    if (r31) {
        while (TRUE) {
            func_801DC9CC(lbl_8063F32C, 0);
            if (lbl_8063F328 == 0)
                break;
            if (!func_802245C4(lbl_8063F600))
                break;
            func_80224588(lbl_8063F600);
        }
    }
}

// DVDOpen wrapper?
unkClass* func_801DC2D0(const char* fileName)
{
    if (!lbl_8063F31E)
        return NULL;
    func_801DC264();
    unkClass* r31 = func_801DBED0();
    if (!r31)
        return NULL;
    if (lbl_8063F338 && func_801DCF74(lbl_8063F338, fileName, r31))
        return r31;
    if (!DVDOpen(fileName, &r31->unk4)) {
        func_801DBF60(r31);
        return NULL;
    }
    return r31;
}

// indicate whether fileName exists
BOOL func_801DC380(const char* fileName)
{
    if (!lbl_8063F31E)
        return FALSE;
    if (lbl_8063F338 && func_801DCF48(lbl_8063F338, fileName))
        return TRUE;
    if (DVDConvertPathToEntrynum(fileName) == -1)
        return FALSE;
    return TRUE;
}

// DVDReadPrio wrapper
s32 func_801DC3FC(unkClass* p1, void* addr, s32 length, s32 offset)
{
    if (!lbl_8063F31E)
        return -1;
    func_801DC264();
    if (!p1)
        return -1;
    if ((u32)addr & 0x1F)
        return -1;
    if (length & 0x1F)
        return -1;
    if (offset & 0x3)
        return -1;
    
    if (lbl_8063F338 && p1->unk1) {
        s32 r3 = func_801DD084(lbl_8063F338, p1, addr, length, offset);
        if (r3 > 0)
            return r3;
    }
    return DVDReadPrio(&p1->unk4, addr, length, offset, 2);
}

BOOL func_801DC4F0(unkClass* p1, void* p2, s32 p3, s32 p4, void (*p5)(s32, void*))
{
    if (!lbl_8063F31E)
        return FALSE;
    func_801DC264();
    if (!p1)
        return FALSE;
    p1->unk4.unk40 = p5;
    if ((u32)p2 & 0x1F)
        return FALSE;
    if (p3 & 0x1F)
        return FALSE;
    if (p4 & 0x3)
        return FALSE;

    p1->unk4.unk44 = p2;
    p1->unk4.unk48 = p3;
    if (lbl_8063F338 && p1->unk1 && func_801DD220(lbl_8063F338, p1, p2, p3, p4))
        return TRUE;
    return DVDReadAsyncPrio(&p1->unk4, p2, p3, p4, &func_801DBFEC, 2) != 0;
}

// DVDReadPrio wrapper
s32 func_801DC5FC(unkClass* p1, void* addr, s32 length, s32 offset, s32 prio)
{
    if (!lbl_8063F31E)
        return -1;
    func_801DC264();
    if (!p1)
        return -1;
    if ((u32)addr & 0x1F)
        return -1;
    if (length & 0x1F)
        return -1;
    if (offset & 0x3)
        return -1;
    
    if (prio < 0 || prio > 3)
        return -1;
    return DVDReadPrio(&p1->unk4, addr, length, offset, prio);
}

BOOL func_801DC6C4(unkClass* p1)
{
    if (!lbl_8063F31E)
        return FALSE;
    func_801DC264();
    if (!p1)
        return FALSE;
    if (lbl_8063F338 && func_801DCFE4(lbl_8063F338, p1)) {
        func_801DBF60(p1);
        return TRUE;
    }
    BOOL result = DVDClose(&p1->unk4);
    func_801DBF60(p1);
    return result;
}

u32 func_801DC760(unkClass* p1)
{
    u32 sp8; // TODO: determine type
    if (!lbl_8063F31E)
        return 0;
    func_801DC264();
    if (!p1)
        return 0;
    if (lbl_8063F338 && func_801DD03C(lbl_8063F338, p1, &sp8))
        return sp8;
    return p1->unk4.unk34;
}

//static
s32 func_801DC7DC(void)
{
    return (!lbl_8063F31E) ? -1 : DVDGetDriveStatus();
}











} //extern "C"
