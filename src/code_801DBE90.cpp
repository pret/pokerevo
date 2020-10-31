#include "ctorStruct.h"
#include <string.h>
#include <SDK/mem.h>
#include <SDK/os.h>
#include <SDK/dvd.h>
#include <SDK/nand.h>
#include "code_801DAAE0.h"
#include "code_801DCE6C.h"
#include "code_80223C54.h"
#include "code_80224104.h"
#include "code_80249BC8.h"
#include "code_801DBE90.h"

static void* func_801DBE90(u32 size);
static void func_801DBEA0(void);
static gUnkClass5 *func_801DBED0(void);
static void func_801DBF60(gUnkClass5* p1);
static gUnkClass5* func_801DBF98(DVDFileInfo* p1);
static void func_801DBFEC(s32 p1, DVDFileInfo* p2);
static void func_801DC068(s32 p1, DVDFileInfo* p2);
static void func_801DC264(void);
static s32 func_801DC7DC(void);
static void func_801DC888(s32 p1);
static void func_801DC8E8(u32 p1);
static void func_801DC900(void);
static void func_801DC918(s32 p1, DVDCommandBlock*);
static BOOL func_801DC928(void);
static void func_801DC9CC(u32 p1, u32);

static u8 gUnk804917F0[0x40];
static OSSemaphore gUnk80491830;
static DVDCommandBlock gUnk80491840;
static const char* gUnk8063D6D8 = "RPBE";
static const char* gUnk8063D6E0 = "01";
static ctorStruct gUnk8063F318(1, 4, 0);
static u8 gUnk8063F31E;
static u8 gUnk8063F31F;
static size_t gUnk8063F320;
static gUnkClass5* gUnk8063F324;
static s32 gUnk8063F328;
static u32 gUnk8063F32C;
static void (*gUnk8063F330)(u32);
static void (*gUnk8063F334)(void);
static gUnkClass4* gUnk8063F338;

extern "C"
{

static void* func_801DBE90(u32 size)
{
    return func_801DAD08(lbl_8063E8EC, size, 0x20);
}

static void func_801DBEA0(void)
{
    for (size_t i = 0; i < gUnk8063F320; i++)
        gUnk8063F324[i].unk0 = 0;
}

static gUnkClass5* func_801DBED0(void)
{
    BOOL enable = OSDisableInterrupts();
    gUnkClass5* r31 = NULL;
    size_t i;
    for (i = 0; i < gUnk8063F320; i++) {
        if (gUnk8063F324[i].unk0 != 1) {
            gUnk8063F324[i].unk0 = 1;
            gUnk8063F324[i].unk1 = 0;
            r31 = &gUnk8063F324[i];
            break;
        }
    }
    OSRestoreInterrupts(enable);
    return r31;
}

static void func_801DBF60(gUnkClass5* p1)
{
    BOOL enable = OSDisableInterrupts();
    p1->unk0 = 0;
    OSRestoreInterrupts(enable);
}

static gUnkClass5* func_801DBF98(DVDFileInfo* p1)
{
    for (size_t i = 0; i < gUnk8063F320; i++) {
        if (gUnk8063F324[i].unk0 && &gUnk8063F324[i].unk4 == p1)
            return &gUnk8063F324[i];
    }
    return NULL;
}

static void func_801DBFEC(s32 p1, DVDFileInfo* p2)
{
    if (gUnk8063F31F == 0) {
        gUnkClass5* r31 = func_801DBF98(p2);
        if (r31 && r31->unk44) {
            DCInvalidateRange(r31->unk48, r31->unk4C);
            r31->unk44(p1, r31);
        }
    }
}

static void func_801DC068(s32 p1, DVDFileInfo* p2)
{
    if (gUnk8063F31F == 0) {
        gUnkClass5* r3 = func_801DBF98(p2);
        if (r3 && r3->unk44)
            r3->unk44(p1, r3);
    }
}

BOOL func_801DC0C8(size_t p1, u32 p2)
{
    if (gUnk8063F31E == 1)
        return FALSE;
    gUnk8063F31F = 0;
    gUnk8063F338 = NULL;
    NANDInit();
    if (!gUnk8063F338)
        gUnk8063F338 = new gUnkClass4;
    gUnk8063F320 = p1;
    gUnk8063F324 = (gUnkClass5*)func_801DBE90(p1 * sizeof(gUnkClass5));
    if (!gUnk8063F324)
        return FALSE;
    func_801DBEA0();
    memset(gUnk804917F0, 0, sizeof(gUnk804917F0));
    DVDInit();
    if (p2) {
        switch (func_80249BC8()) {
            case 0:
                gUnk8063D6D8 = "RPBE";
                break;
            case 1:
                gUnk8063D6D8 = "RPBE";
                break;
            case 2:
                gUnk8063D6D8 = "RPBP";
                break;
            default:
                break;
        }
        DVDDiskID* diskID = DVDGetCurrentDiskID();
        diskID->gameCode[0] = gUnk8063D6D8[0];
        diskID->gameCode[1] = gUnk8063D6D8[1];
        diskID->gameCode[2] = gUnk8063D6D8[2];
        diskID->gameCode[3] = gUnk8063D6D8[3];
        diskID->makerCode[0] = gUnk8063D6E0[0];
        diskID->makerCode[1] = gUnk8063D6E0[1];
        diskID->unk6 = 0;
        diskID->unk7 = 0;
    }
    DVDSetAutoFatalMessaging(FALSE);
    
    gUnk8063F32C = func_80223FD0(1, 19, 0, &func_801DC9CC);
    func_8022408C(gUnk8063F32C, "GSdvdErrorTask");
    
    gUnk8063F31E = 1;
    return TRUE;
}

static void func_801DC264(void)
{
    BOOL enable = OSDisableInterrupts();
    OSRestoreInterrupts(enable);
    if (enable) {
        while (TRUE) {
            func_801DC9CC(gUnk8063F32C, 0);
            if (gUnk8063F328 == 0)
                break;
            if (!func_802245C4(lbl_8063F600))
                break;
            func_80224588(lbl_8063F600);
        }
    }
}

gUnkClass5* func_801DC2D0(const char* fileName)
{
    if (!gUnk8063F31E)
        return NULL;
    func_801DC264();
    gUnkClass5* fp = func_801DBED0();
    if (!fp)
        return NULL;
    if (gUnk8063F338 && gUnk8063F338->func_801DCF74(fileName, fp))
        return fp;
    if (!DVDOpen(fileName, &fp->unk4)) {
        func_801DBF60(fp);
        return NULL;
    }
    return fp;
}

BOOL func_801DC380(const char* fileName)
{
    if (!gUnk8063F31E)
        return FALSE;
    if (gUnk8063F338 && gUnk8063F338->func_801DCF48(fileName))
        return TRUE;
    if (DVDConvertPathToEntrynum(fileName) == -1)
        return FALSE;
    return TRUE;
}

s32 func_801DC3FC(gUnkClass5* p1, void* addr, s32 length, s32 offset)
{
    if (!gUnk8063F31E)
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
    
    if (gUnk8063F338 && p1->unk1) {
        s32 r3 = gUnk8063F338->func_801DD084(p1, addr, length, offset);
        if (r3 > 0)
            return r3;
    }
    return DVDReadPrio(&p1->unk4, addr, length, offset, 2);
}

BOOL func_801DC4F0(gUnkClass5* p1, void* addr, u32 len, s32 offset, void (*p5)(s32, void*))
{
    if (!gUnk8063F31E)
        return FALSE;
    func_801DC264();
    if (!p1)
        return FALSE;
    p1->unk44 = p5;
    if ((u32)addr & 0x1F)
        return FALSE;
    if (len & 0x1F)
        return FALSE;
    if (offset & 0x3)
        return FALSE;

    p1->unk48 = addr;
    p1->unk4C = len;
    if (gUnk8063F338 && p1->unk1 && gUnk8063F338->func_801DD220(p1, addr, len, offset))
        return TRUE;
    return DVDReadAsyncPrio(&p1->unk4, addr, (s32)len, offset, &func_801DBFEC, 2) != 0;
}

s32 func_801DC5FC(gUnkClass5* p1, void* addr, s32 length, s32 offset, s32 prio)
{
    if (!gUnk8063F31E)
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

BOOL func_801DC6C4(gUnkClass5* p1)
{
    if (!gUnk8063F31E)
        return FALSE;
    func_801DC264();
    if (!p1)
        return FALSE;
    if (gUnk8063F338 && gUnk8063F338->func_801DCFE4(p1)) {
        func_801DBF60(p1);
        return TRUE;
    }
    BOOL result = DVDClose(&p1->unk4);
    func_801DBF60(p1);
    return result;
}

size_t func_801DC760(gUnkClass5* p1)
{
    size_t fileSz;
    if (!gUnk8063F31E)
        return 0;
    func_801DC264();
    if (!p1)
        return 0;
    if (gUnk8063F338 && gUnk8063F338->func_801DD03C(p1, &fileSz))
        return fileSz;
    return DVDGetLength(&p1->unk4);
}

static s32 func_801DC7DC(void)
{
    return (!gUnk8063F31E) ? -1 : DVDGetDriveStatus();
}

BOOL func_801DC7F8(gUnkClass5* p1, s32 offset, void (*p3)(s32, void*))
{
    if (!gUnk8063F31E)
        return FALSE;
    func_801DC264();
    if (!p1)
        return FALSE;
    p1->unk44 = p3;
    return DVDSeekAsyncPrio(&p1->unk4, offset, &func_801DC068, 2) != 0;
}

static void func_801DC888(s32 p1)
{
    switch (p1) {
        case -1:
            gUnk8063F328 = 9;
            break;
        case 5:
            gUnk8063F328 = 1;
            break;
        case 4:
            gUnk8063F328 = 3;
            break;
        case 6:
            gUnk8063F328 = 5;
            break;
        case 11:
            gUnk8063F328 = 7;
            break;
        default:
            break;
    }
}

static void func_801DC8E8(u32 p1)
{
    if (gUnk8063F330)
        gUnk8063F330(p1);
}

static void func_801DC900(void)
{
    if (gUnk8063F334)
        gUnk8063F334();
}

static s32 gUnk8063D6F4 = -1;
static void func_801DC918(s32 p1, DVDCommandBlock*)
{
    gUnk8063D6F4 = p1;
    OSSignalSemaphore(&gUnk80491830);
}

static BOOL func_801DC928(void)
{
    BOOL enable = OSDisableInterrupts();
    OSRestoreInterrupts(enable);
    if (!enable)
        return TRUE;
    OSInitSemaphore(&gUnk80491830, 0);
    gUnk8063D6F4 = -1;
    if (!DVDCheckDiskAsync(&gUnk80491840, &func_801DC918))
        gUnk8063D6F4 = 0;
    if (gUnk8063D6F4 < 0)
        OSWaitSemaphore(&gUnk80491830);
    return gUnk8063D6F4 != 0;
}

static void func_801DC9CC(u32, u32)
{
    s32 driveStatus = func_801DC7DC();
    switch (gUnk8063F328) {
        case 0:
            func_801DC888(driveStatus);
            break;
        case 1:
            func_801DC8E8(1);
            gUnk8063F328 = 2;
            break;
        case 2:
            if (driveStatus == 11) {
                func_801DC900();
                func_801DC8E8(4);
                gUnk8063F328 = 8;
            } else if (driveStatus != 5 && func_801DC928()) {
                func_801DC900();
                gUnk8063F328 = 0;
            }
            break;
        case 3:
            func_801DC8E8(2);
            gUnk8063F328 = 4;
            break;
        case 4:
            if (driveStatus == 11) {
                func_801DC900();
                func_801DC8E8(4);
                gUnk8063F328 = 8;
            } else if (driveStatus != 4 && func_801DC928()) {
                func_801DC900();
                gUnk8063F328 = 0;
            }
            break;
        case 5:
            func_801DC8E8(3);
            gUnk8063F328 = 6;
            break;
        case 6:
            if (driveStatus == 11) {
                func_801DC900();
                func_801DC8E8(4);
                gUnk8063F328 = 8;
            } else if (driveStatus != 6 && func_801DC928()) {
                func_801DC900();
                gUnk8063F328 = 0;
            }
            break;
        case 7:
            func_801DC8E8(4);
            gUnk8063F328 = 8;
            break;
        case 8:
            if (driveStatus == 5) {
                func_801DC900();
                func_801DC8E8(1);
                gUnk8063F328 = 2;
            } else if (driveStatus == 4) {
                func_801DC900();
                func_801DC8E8(2);
                gUnk8063F328 = 4;
            } else if ((driveStatus != 11 && func_801DC928()) || (u32)(driveStatus-4) <= 1) {
                func_801DC900();
                gUnk8063F328 = 0;
            }
            break;
        case 9:
            func_801DC8E8(5);
            gUnk8063F328 = 10;
            break;
        case 10:
            break;
        default:
            break;
    }
}

u8* func_801DCBC0(const char* fileName, u32* fileSz)
{
    if (!func_801DC380(fileName))
        return NULL;
    gUnkClass5* fp = func_801DC2D0(fileName);
    if (!fp)
        return NULL;
    size_t size = (func_801DC760(fp) + 0x1F) & ~0x1F;
    if (!size)
        return NULL;
    u8* buf = (u8*)func_801DAD64(size);
    if (!buf)
        return NULL;
    s32 bytesRead = func_801DC3FC(fp, buf, (s32)size, 0);
    if (bytesRead != size) {
        func_801DAEA4(buf);
        return NULL;
    }
    func_801DC6C4(fp);
    if (fileSz)
        *fileSz = size;
    return buf;
}

u8* func_801DCCAC(const char* fileName, MEMHeapHandle heap, u32* fileSz)
{
    if (!func_801DC380(fileName))
        return NULL;
    gUnkClass5* fp = func_801DC2D0(fileName);
    if (!fp)
        return NULL;
    size_t size = (func_801DC760(fp) + 0x1F) & ~0x1F;
    if (!size)
        return NULL;
    u8* buf = (u8*)func_801DAC94(heap, size);
    if (!buf)
        return NULL;
    s32 bytesRead = func_801DC3FC(fp, buf, (s32)size, 0);
    if (bytesRead != size) {
        func_801DAD48(heap, buf);
        return NULL;
    }
    func_801DC6C4(fp);
    if (fileSz)
        *fileSz = size;
    return buf;
}

BOOL func_801DCD94(const char* fileName)
{
    if (gUnk8063F338)
        return gUnk8063F338->func_801DD294(fileName, 0);
    return 0;
}

void func_801DCDB8(void (*p1)(u32), void (*p2)(void))
{
    gUnk8063F330 = p1;
    gUnk8063F334 = p2;
}

u32 func_801DCDC4(void)
{
    switch (gUnk8063F328) {
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

void func_801DCE38(void)
{
    gUnk8063F31F = 1;
}

BOOL func_801DCE44(void)
{
    return gUnk8063F31F;
}

} //extern "C"
