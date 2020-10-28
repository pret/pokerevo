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
extern s32 lbl_8063D6F4;


extern u8 lbl_8063F31E;
extern u8 lbl_8063F31F;
extern size_t lbl_8063F320;
extern unkClass* lbl_8063F324;
extern s32 lbl_8063F328;
extern u32 lbl_8063F32C;

extern void (*lbl_8063F330)(u32);
extern void (*lbl_8063F334)(void);

extern gUnkClass4* lbl_8063F338;

extern u8 lbl_804917F0[0x40];
extern OSSemaphore lbl_80491830;
extern DVDCommandBlock lbl_80491840;

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

BOOL func_801DD294(gUnkClass4*, const char*, u32);

    
    
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
void func_801DC068(s32 p1, DVDFileInfo* p2)
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

// get file size
size_t func_801DC760(unkClass* p1)
{
    size_t sp8;
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

BOOL func_801DC7F8(unkClass* p1, s32 offset, void (*p3)(s32, void*))
{
    if (!lbl_8063F31E)
        return FALSE;
    func_801DC264();
    if (!p1)
        return FALSE;
    p1->unk4.unk40 = p3;
    return DVDSeekAsyncPrio(&p1->unk4, offset, &func_801DC068, 2) != 0;
}

//static
void func_801DC888(s32 p1)
{
    switch (p1) {
        case -1:
            lbl_8063F328 = 9;
            break;
        case 5:
            lbl_8063F328 = 1;
            break;
        case 4:
            lbl_8063F328 = 3;
            break;
        case 6:
            lbl_8063F328 = 5;
            break;
        case 11:
            lbl_8063F328 = 7;
            break;
        default:
            break;
    }
}

//static
void func_801DC8E8(u32 p1)
{
    if (lbl_8063F330)
        lbl_8063F330(p1);
}

//static
void func_801DC900(void)
{
    if (lbl_8063F334)
        lbl_8063F334();
}

//static
void func_801DC918(s32 p1, DVDCommandBlock*)
{
    lbl_8063D6F4 = p1;
    OSSignalSemaphore(&lbl_80491830);
}

//static
BOOL func_801DC928(void)
{
    BOOL r31 = OSDisableInterrupts();
    OSRestoreInterrupts();
    if (!r31)
        return TRUE;
    OSInitSemaphore(&lbl_80491830, 0);
    lbl_8063D6F4 = -1;
    if (!DVDCheckDiskAsync(&lbl_80491840, &func_801DC918))
        lbl_8063D6F4 = 0;
    if (lbl_8063D6F4 < 0)
        OSWaitSemaphore(&lbl_80491830);
    return lbl_8063D6F4 != 0;
}

//static
void func_801DC9CC(u32 p1, u32)
{
    s32 driveStatus = func_801DC7DC();
    switch (lbl_8063F328) {
        case 0:
            func_801DC888(driveStatus);
            break;
        case 1:
            func_801DC8E8(1);
            lbl_8063F328 = 2;
            break;
        case 2:
            if (driveStatus == 11) {
                func_801DC900();
                func_801DC8E8(4);
                lbl_8063F328 = 8;
            } else if (driveStatus != 5 && func_801DC928()) {
                func_801DC900();
                lbl_8063F328 = 0;
            }
            break;
        case 3:
            func_801DC8E8(2);
            lbl_8063F328 = 4;
            break;
        case 4:
            if (driveStatus == 11) {
                func_801DC900();
                func_801DC8E8(4);
                lbl_8063F328 = 8;
            } else if (driveStatus != 4 && func_801DC928()) {
                func_801DC900();
                lbl_8063F328 = 0;
            }
            break;
        case 5:
            func_801DC8E8(3);
            lbl_8063F328 = 6;
            break;
        case 6:
            if (driveStatus == 11) {
                func_801DC900();
                func_801DC8E8(4);
                lbl_8063F328 = 8;
            } else if (driveStatus != 6 && func_801DC928()) {
                func_801DC900();
                lbl_8063F328 = 0;
            }
            break;
        case 7:
            func_801DC8E8(4);
            lbl_8063F328 = 8;
            break;
        case 8:
            if (driveStatus == 5) {
                func_801DC900();
                func_801DC8E8(1);
                lbl_8063F328 = 2;
            } else if (driveStatus == 4) {
                func_801DC900();
                func_801DC8E8(2);
                lbl_8063F328 = 4;
            } else if ((driveStatus != 11 && func_801DC928()) || (u32)(driveStatus-4) <= 1) {
                func_801DC900();
                lbl_8063F328 = 0;
            }
            break;
        case 9:
            func_801DC8E8(5);
            lbl_8063F328 = 10;
            break;
        case 10:
            break;
        default:
            break;
    }
}

// Load entire file contents into buffer
u8* func_801DCBC0(const char* fileName, u32* fileSz)
{
    if (!func_801DC380(fileName))
        return NULL;
    unkClass* fp = func_801DC2D0(fileName);
    if (!fp)
        return NULL;
    size_t size = (func_801DC760(fp) + 0x1F) & ~0x1F;
    if (!size)
        return NULL;
    u8* buf = (u8*)func_801DAD64(size);
    if (!buf)
        return NULL;
    size_t bytesRead = func_801DC3FC(fp, buf, size, 0);
    if (bytesRead != size) {
        func_801DAEA4(buf);
        return NULL;
    }
    func_801DC6C4(fp);
    if (fileSz)
        *fileSz = size;
    return buf;
}

void* func_801DCCAC(const char* fileName, MEMHeapHandle heap, u32* fileSz)
{
    if (!func_801DC380(fileName))
        return NULL;
    unkClass* fp = func_801DC2D0(fileName);
    if (!fp)
        return NULL;
    size_t size = (func_801DC760(fp) + 0x1F) & ~0x1F;
    if (!size)
        return NULL;
    u8* buf = (u8*)func_801DAC94(heap, size);
    if (!buf)
        return NULL;
    size_t bytesRead = func_801DC3FC(fp, buf, size, 0);
    if (bytesRead != size) {
        func_801DAD48(heap, buf);
        return NULL;
    }
    func_801DC6C4(fp);
    if (fileSz)
        *fileSz = size;
    return buf;
}

u32 func_801DCD94(const char* fileName)
{
    if (lbl_8063F338)
        return func_801DD294(lbl_8063F338, fileName, 0);
    return 0;
}

void func_801DCDB8(void (*p1)(u32), void (*p2)(void))
{
    lbl_8063F330 = p1;
    lbl_8063F334 = p2;
}

u32 func_801DCDC4(void)
{
    switch (lbl_8063F328) {
        case 1: case 2:
            return 1;
        case 3: case 4:
            return 2;
        case 5: case 6:
            return 3;
        case 7: case 8:
            return 4;
        case 9: case 10:
            return 5;
        case 0: default:
            return 0;
    }
}





} //extern "C"
