#include "ctorStruct.h"
#include <SDK/nand.h>
#include <SDK/mem.h>
#include <string.h>
#include "code_801DAAE0.h"
#include "code_80224104.h"
#include "code_801DBE90.h"
#include "code_801DCE6C.h"

// gUnkClass4 implementation
// NAND wrapper class

//static
gUnkClass6* func_801DCEB4(gUnkClass4* p1, const char* p2);


extern "C" {

#if 1

    
// TODO: replace unk2 and unk7 with a single char buffer?

//static
char* func_801DCE6C(gUnkClass6* p1)
{
    return p1->unk7;
}

//static
char* func_801DCE74(gUnkClass6* p1)
{
    return p1->unk2;
}

gUnkClass4::gUnkClass4(void)
{
    memset(this, 0, sizeof(gUnkClass4));
}

// TODO: convert to class member functions

// search the array
//static
gUnkClass6* func_801DCEB4(gUnkClass4* p1, const char* p2)
{
    char sp8[13]; // 0xD ~ 0x10 byte struct
    memcpy(&sp8, p2, 12);
    sp8[12] = '\0';
    
    gUnkClass6* p = p1->arr;
    for (s32 i = 0; i < 8; p++, i++)
        if (p->unk0 && !p->unk1 && !strcmp(func_801DCE6C(p), sp8))
            return p;

    return NULL;
}

// just indicate if search succeeded
BOOL func_801DCF48(gUnkClass4* p1, const char* p2)
{
    return func_801DCEB4(p1, p2) != NULL;
}

// NANDOpen wrapper
BOOL func_801DCF74(gUnkClass4* p1, const char* fileName, gUnkClass5* fp)
{
    gUnkClass6* r31 = func_801DCEB4(p1, fileName);
    if (r31 && NANDOpen(func_801DCE74(r31), &r31->unk48, 1) == 0) {
        fp->unk40 = r31;
        fp->unk1 = 1;
        return TRUE;
    }
    return FALSE;
}

// NANDClose wrapper
BOOL func_801DCFE4(gUnkClass4*, gUnkClass5* fp)
{
    if (!fp->unk1)
        return FALSE;
    NANDClose(&fp->unk40->unk48);
    fp->unk1 = 0;
    fp->unk40 = NULL;
    return TRUE;
}

// NANDGetLength wrapper, indicate success
BOOL func_801DD03C(gUnkClass4*, gUnkClass5* fp, u32* fileSz)
{
    return (!fp->unk1) ? FALSE : NANDGetLength(&fp->unk40->unk48, fileSz) == 0;
}

// NANDSeek to offset, then NANDRead
s32 func_801DD084(gUnkClass4*, gUnkClass5* fp, void* addr, s32 length, s32 offset)
{
    if (!fp->unk1)
        return -1;
    if (NANDSeek(&fp->unk40->unk48, offset, 0) >= 0)
        return -1;
    return NANDRead(&fp->unk40->unk48, addr, (u32)length);
}

// NANDReadAsync callback
//static
void func_801DD110(s32 p1, NANDCommandBlock* block)
{
   gUnkClass5* data = (gUnkClass5*)NANDGetUserData(block);
   if (!func_801DCE44() && data->unk44) {
       data->unk44(p1, data);
   }
}

// NANDSeekAsync callback
//static
void func_801DD174(s32 p1, NANDCommandBlock* block)
{
    gUnkClass5* data = (gUnkClass5*)NANDGetUserData(block); // r31
    gUnkClass6* r30 = data->unk40;
    if (!func_801DCE44()) {
        if (p1 < 0) {
            data->unk44(-1, data);
        } else if (NANDReadAsync(&r30->unk48, data->unk48, data->unk4C, &func_801DD110, &r30->block) != 0) {
            data->unk44(-1, data);
        }
    }
}

// NANDReadAsync wrapper that first calls NANDSeekAsync
BOOL func_801DD220(gUnkClass4*, gUnkClass5* fp, void*, u32, s32 offset)
{
    if (!fp->unk1)
        return FALSE;
    gUnkClass6* r31 = fp->unk40;
    NANDSetUserData(&r31->block, fp);
    return NANDSeekAsync(&r31->unk48, offset, 0, &func_801DD174, &r31->block) == 0;
}


#endif

// creates and opens a /tmp/ file in NAND and copies the specified file to it
#define NONMATCHING
#ifdef NONMATCHING
BOOL func_801DD294(gUnkClass4 *p1, const char *fileName, s32)
{
    // intended register -> actual register
                        // p1: r24 -> r25
                        // fileName: r25 -> r24
    gUnkClass6 *r29; 
    //size_t fileSz; // r24 -> r28
    NANDFileInfo nandInfo;
    gUnkClass5 *fp; // r28 -> r27
    size_t i;
    void *buffer; // r27 -> r26
    BOOL flag; // r26 -> r25
    s32 createResult;
    size_t currOffset; // r25 -> r24
    size_t maxLength;
    size_t length;
    s32 readResult;
    s32 bytesWritten;

    if (func_801DCEB4(p1, fileName))
        return TRUE;

    for (i = 0; i < 8; i++) {
        r29 = p1->arr + i;
        if (!p1->arr[i].unk0) {
            r29 = p1->arr + i;
            break;
        }
    }

    if (!r29)
        return FALSE;

    if (!func_801DC380(fileName))
        return FALSE;

    fp = func_801DC2D0(fileName);
    if (!fp)
        return FALSE;


    size_t fileSz = (func_801DC760(fp) + 0x1F) & (~0x1F);
    if (0 == fileSz)
        return FALSE;

    buffer = func_801DAC94(lbl_8063E8EC, 0x200000);
    if (!buffer)
        return FALSE;

    r29->unk0 = 1;
    r29->unk1 = 1;
    strcpy(r29->unk2, "/tmp/");
    strncat(r29->unk2, fileName, 12);
    flag = 0;
    createResult = NANDCreate(r29->unk2, 0x30, 0);
    if ((createResult == 0) || (createResult == (-6))) {
        if (NANDOpen(r29->unk2, &nandInfo, 3) == 0) {
            currOffset = 0;
            maxLength = 0x200000;
            do {
                length = (fileSz < maxLength) ? (fileSz) : (maxLength);
                readResult = func_801DC5FC(fp, buffer, length, currOffset, 2);
                if (readResult < 0) {
                    if (readResult == -1) {
                        while (TRUE)
                            func_80224588(lbl_8063F600);
                    }
                    func_801DAD48(lbl_8063E8EC, buffer);
                    func_801DC6C4(fp);
                    return 0;
                }
                bytesWritten = NANDWrite(&nandInfo, buffer, length);
                if (bytesWritten != ((s32) length)) {
                    NANDClose(&nandInfo);
                    break;
                }
                currOffset += length;
            } while ((fileSz -= length) != 0);
            if (NANDClose(&nandInfo) == 0) {
                flag = 1;
                r29->unk1 = 0;
            }
        }
    }

    if (buffer)
        func_801DAD48(lbl_8063E8EC, buffer);

    func_801DC6C4(fp);
    if (flag) {
        r29->unk1 = 0;
        return TRUE;
    } else {
        r29->unk0 = 0;
        return TRUE;
    }
}
#else
void _restgpr_24(void);
void _savegpr_24(void);
extern char* lbl_8063D6F8;
asm BOOL func_801DD294(gUnkClass4* p1, const char* fileName, s32)
{
    nofralloc
/* 801DD294 001D8EF4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801DD298 001D8EF8  7C 08 02 A6 */	mflr r0
/* 801DD29C 001D8EFC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801DD2A0 001D8F00  39 61 00 C0 */	addi r11, r1, 0xc0
/* 801DD2A4 001D8F04  4B FE 9E 79 */	bl _savegpr_24
/* 801DD2A8 001D8F08  7C 78 1B 78 */	mr r24, r3
/* 801DD2AC 001D8F0C  7C 99 23 78 */	mr r25, r4
/* 801DD2B0 001D8F10  4B FF FC 05 */	bl func_801DCEB4
/* 801DD2B4 001D8F14  2C 03 00 00 */	cmpwi r3, 0
/* 801DD2B8 001D8F18  41 82 00 0C */	beq lbl_801DD2C4
/* 801DD2BC 001D8F1C  38 60 00 01 */	li r3, 1
/* 801DD2C0 001D8F20  48 00 02 D0 */	b lbl_801DD590
lbl_801DD2C4:
/* 801DD2C4 001D8F24  88 18 00 00 */	lbz r0, 0(r24)
/* 801DD2C8 001D8F28  38 80 00 00 */	li r4, 0
/* 801DD2CC 001D8F2C  2C 00 00 00 */	cmpwi r0, 0
/* 801DD2D0 001D8F30  40 82 00 10 */	bne lbl_801DD2E0
/* 801DD2D4 001D8F34  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD2D8 001D8F38  7F B8 02 14 */	add r29, r24, r0
/* 801DD2DC 001D8F3C  48 00 00 E0 */	b lbl_801DD3BC
lbl_801DD2E0:
/* 801DD2E0 001D8F40  88 18 01 90 */	lbz r0, 0x190(r24)
/* 801DD2E4 001D8F44  38 78 01 90 */	addi r3, r24, 0x190
/* 801DD2E8 001D8F48  38 80 00 01 */	li r4, 1
/* 801DD2EC 001D8F4C  2C 00 00 00 */	cmpwi r0, 0
/* 801DD2F0 001D8F50  40 82 00 10 */	bne lbl_801DD300
/* 801DD2F4 001D8F54  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD2F8 001D8F58  7F B8 02 14 */	add r29, r24, r0
/* 801DD2FC 001D8F5C  48 00 00 C0 */	b lbl_801DD3BC
lbl_801DD300:
/* 801DD300 001D8F60  88 03 01 90 */	lbz r0, 0x190(r3)
/* 801DD304 001D8F64  38 80 00 02 */	li r4, 2
/* 801DD308 001D8F68  38 63 01 90 */	addi r3, r3, 0x190
/* 801DD30C 001D8F6C  2C 00 00 00 */	cmpwi r0, 0
/* 801DD310 001D8F70  40 82 00 10 */	bne lbl_801DD320
/* 801DD314 001D8F74  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD318 001D8F78  7F B8 02 14 */	add r29, r24, r0
/* 801DD31C 001D8F7C  48 00 00 A0 */	b lbl_801DD3BC
lbl_801DD320:
/* 801DD320 001D8F80  88 03 01 90 */	lbz r0, 0x190(r3)
/* 801DD324 001D8F84  38 80 00 03 */	li r4, 3
/* 801DD328 001D8F88  38 63 01 90 */	addi r3, r3, 0x190
/* 801DD32C 001D8F8C  2C 00 00 00 */	cmpwi r0, 0
/* 801DD330 001D8F90  40 82 00 10 */	bne lbl_801DD340
/* 801DD334 001D8F94  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD338 001D8F98  7F B8 02 14 */	add r29, r24, r0
/* 801DD33C 001D8F9C  48 00 00 80 */	b lbl_801DD3BC
lbl_801DD340:
/* 801DD340 001D8FA0  88 03 01 90 */	lbz r0, 0x190(r3)
/* 801DD344 001D8FA4  38 80 00 04 */	li r4, 4
/* 801DD348 001D8FA8  38 63 01 90 */	addi r3, r3, 0x190
/* 801DD34C 001D8FAC  2C 00 00 00 */	cmpwi r0, 0
/* 801DD350 001D8FB0  40 82 00 10 */	bne lbl_801DD360
/* 801DD354 001D8FB4  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD358 001D8FB8  7F B8 02 14 */	add r29, r24, r0
/* 801DD35C 001D8FBC  48 00 00 60 */	b lbl_801DD3BC
lbl_801DD360:
/* 801DD360 001D8FC0  88 03 01 90 */	lbz r0, 0x190(r3)
/* 801DD364 001D8FC4  38 80 00 05 */	li r4, 5
/* 801DD368 001D8FC8  38 63 01 90 */	addi r3, r3, 0x190
/* 801DD36C 001D8FCC  2C 00 00 00 */	cmpwi r0, 0
/* 801DD370 001D8FD0  40 82 00 10 */	bne lbl_801DD380
/* 801DD374 001D8FD4  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD378 001D8FD8  7F B8 02 14 */	add r29, r24, r0
/* 801DD37C 001D8FDC  48 00 00 40 */	b lbl_801DD3BC
lbl_801DD380:
/* 801DD380 001D8FE0  88 03 01 90 */	lbz r0, 0x190(r3)
/* 801DD384 001D8FE4  38 80 00 06 */	li r4, 6
/* 801DD388 001D8FE8  38 63 01 90 */	addi r3, r3, 0x190
/* 801DD38C 001D8FEC  2C 00 00 00 */	cmpwi r0, 0
/* 801DD390 001D8FF0  40 82 00 10 */	bne lbl_801DD3A0
/* 801DD394 001D8FF4  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD398 001D8FF8  7F B8 02 14 */	add r29, r24, r0
/* 801DD39C 001D8FFC  48 00 00 20 */	b lbl_801DD3BC
lbl_801DD3A0:
/* 801DD3A0 001D9000  88 03 01 90 */	lbz r0, 0x190(r3)
/* 801DD3A4 001D9004  38 80 00 07 */	li r4, 7
/* 801DD3A8 001D9008  3B A3 01 90 */	addi r29, r3, 0x190
/* 801DD3AC 001D900C  2C 00 00 00 */	cmpwi r0, 0
/* 801DD3B0 001D9010  40 82 00 0C */	bne lbl_801DD3BC
/* 801DD3B4 001D9014  1C 04 01 90 */	mulli r0, r4, 0x190
/* 801DD3B8 001D9018  7F B8 02 14 */	add r29, r24, r0
lbl_801DD3BC:
/* 801DD3BC 001D901C  2C 1D 00 00 */	cmpwi r29, 0
/* 801DD3C0 001D9020  40 82 00 0C */	bne lbl_801DD3CC
/* 801DD3C4 001D9024  38 60 00 00 */	li r3, 0
/* 801DD3C8 001D9028  48 00 01 C8 */	b lbl_801DD590
lbl_801DD3CC:
/* 801DD3CC 001D902C  7F 23 CB 78 */	mr r3, r25
/* 801DD3D0 001D9030  4B FF EF B1 */	bl func_801DC380
/* 801DD3D4 001D9034  2C 03 00 00 */	cmpwi r3, 0
/* 801DD3D8 001D9038  40 82 00 0C */	bne lbl_801DD3E4
/* 801DD3DC 001D903C  38 60 00 00 */	li r3, 0
/* 801DD3E0 001D9040  48 00 01 B0 */	b lbl_801DD590
lbl_801DD3E4:
/* 801DD3E4 001D9044  7F 23 CB 78 */	mr r3, r25
/* 801DD3E8 001D9048  4B FF EE E9 */	bl func_801DC2D0
/* 801DD3EC 001D904C  2C 03 00 00 */	cmpwi r3, 0
/* 801DD3F0 001D9050  7C 7C 1B 78 */	mr r28, r3
/* 801DD3F4 001D9054  40 82 00 0C */	bne lbl_801DD400
/* 801DD3F8 001D9058  38 60 00 00 */	li r3, 0
/* 801DD3FC 001D905C  48 00 01 94 */	b lbl_801DD590
lbl_801DD400:
/* 801DD400 001D9060  4B FF F3 61 */	bl func_801DC760
/* 801DD404 001D9064  38 03 00 1F */	addi r0, r3, 0x1f
/* 801DD408 001D9068  54 18 00 35 */	rlwinm. r24, r0, 0, 0, 0x1a
/* 801DD40C 001D906C  40 82 00 0C */	bne lbl_801DD418
/* 801DD410 001D9070  38 60 00 00 */	li r3, 0
/* 801DD414 001D9074  48 00 01 7C */	b lbl_801DD590
lbl_801DD418:
/* 801DD418 001D9078  80 6D 96 2C */	lwz r3, lbl_8063E8EC
/* 801DD41C 001D907C  3C 80 00 20 */	lis r4, 0x20
/* 801DD420 001D9080  4B FF D8 75 */	bl func_801DAC94
/* 801DD424 001D9084  2C 03 00 00 */	cmpwi r3, 0
/* 801DD428 001D9088  7C 7B 1B 78 */	mr r27, r3
/* 801DD42C 001D908C  40 82 00 0C */	bne lbl_801DD438
/* 801DD430 001D9090  38 60 00 00 */	li r3, 0
/* 801DD434 001D9094  48 00 01 5C */	b lbl_801DD590
lbl_801DD438:
/* 801DD438 001D9098  38 00 00 01 */	li r0, 1
/* 801DD43C 001D909C  38 7D 00 02 */	addi r3, r29, 2
/* 801DD440 001D90A0  98 1D 00 00 */	stb r0, 0(r29)
/* 801DD444 001D90A4  38 8D 84 38 */	addi r4, r13, 0x8438
/* 801DD448 001D90A8  98 1D 00 01 */	stb r0, 1(r29)
/* 801DD44C 001D90AC  4B FF 0E 85 */	bl strcpy
/* 801DD450 001D90B0  7F 24 CB 78 */	mr r4, r25
/* 801DD454 001D90B4  38 7D 00 02 */	addi r3, r29, 2
/* 801DD458 001D90B8  38 A0 00 0C */	li r5, 0xc
/* 801DD45C 001D90BC  4B FF 0F A5 */	bl strncat
/* 801DD460 001D90C0  38 7D 00 02 */	addi r3, r29, 2
/* 801DD464 001D90C4  3B 40 00 00 */	li r26, 0
/* 801DD468 001D90C8  38 80 00 30 */	li r4, 0x30
/* 801DD46C 001D90CC  38 A0 00 00 */	li r5, 0
/* 801DD470 001D90D0  48 10 A1 09 */	bl NANDCreate
/* 801DD474 001D90D4  2C 03 00 00 */	cmpwi r3, 0
/* 801DD478 001D90D8  41 82 00 0C */	beq lbl_801DD484
/* 801DD47C 001D90DC  2C 03 FF FA */	cmpwi r3, -6
/* 801DD480 001D90E0  40 82 00 D0 */	bne lbl_801DD550
lbl_801DD484:
/* 801DD484 001D90E4  38 7D 00 02 */	addi r3, r29, 2
/* 801DD488 001D90E8  38 81 00 08 */	addi r4, r1, 8
/* 801DD48C 001D90EC  38 A0 00 03 */	li r5, 3
/* 801DD490 001D90F0  48 10 AF 79 */	bl NANDOpen
/* 801DD494 001D90F4  2C 03 00 00 */	cmpwi r3, 0
/* 801DD498 001D90F8  40 82 00 B8 */	bne lbl_801DD550
/* 801DD49C 001D90FC  3B 20 00 00 */	li r25, 0
/* 801DD4A0 001D9100  3F E0 00 20 */	lis r31, 0x20
lbl_801DD4A4:
/* 801DD4A4 001D9104  7C 18 F8 40 */	cmplw r24, r31
/* 801DD4A8 001D9108  3F C0 00 20 */	lis r30, 0x20
/* 801DD4AC 001D910C  40 80 00 08 */	bge lbl_801DD4B4
/* 801DD4B0 001D9110  7F 1E C3 78 */	mr r30, r24
lbl_801DD4B4:
/* 801DD4B4 001D9114  7F 83 E3 78 */	mr r3, r28
/* 801DD4B8 001D9118  7F 64 DB 78 */	mr r4, r27
/* 801DD4BC 001D911C  7F C5 F3 78 */	mr r5, r30
/* 801DD4C0 001D9120  7F 26 CB 78 */	mr r6, r25
/* 801DD4C4 001D9124  38 E0 00 02 */	li r7, 2
/* 801DD4C8 001D9128  4B FF F1 35 */	bl func_801DC5FC
/* 801DD4CC 001D912C  2C 03 00 00 */	cmpwi r3, 0
/* 801DD4D0 001D9130  40 80 00 34 */	bge lbl_801DD504
/* 801DD4D4 001D9134  2C 03 FF FF */	cmpwi r3, -1
/* 801DD4D8 001D9138  40 82 00 10 */	bne lbl_801DD4E8
lbl_801DD4DC:
/* 801DD4DC 001D913C  80 6D A3 40 */	lwz r3, lbl_8063F600
/* 801DD4E0 001D9140  48 04 70 A9 */	bl func_80224588
/* 801DD4E4 001D9144  4B FF FF F8 */	b lbl_801DD4DC
lbl_801DD4E8:
/* 801DD4E8 001D9148  80 6D 96 2C */	lwz r3, lbl_8063E8EC
/* 801DD4EC 001D914C  7F 64 DB 78 */	mr r4, r27
/* 801DD4F0 001D9150  4B FF D8 59 */	bl func_801DAD48
/* 801DD4F4 001D9154  7F 83 E3 78 */	mr r3, r28
/* 801DD4F8 001D9158  4B FF F1 CD */	bl func_801DC6C4
/* 801DD4FC 001D915C  38 60 00 00 */	li r3, 0
/* 801DD500 001D9160  48 00 00 90 */	b lbl_801DD590
lbl_801DD504:
/* 801DD504 001D9164  7F 64 DB 78 */	mr r4, r27
/* 801DD508 001D9168  7F C5 F3 78 */	mr r5, r30
/* 801DD50C 001D916C  38 61 00 08 */	addi r3, r1, 8
/* 801DD510 001D9170  48 10 A4 91 */	bl NANDWrite
/* 801DD514 001D9174  7C 03 F0 00 */	cmpw r3, r30
/* 801DD518 001D9178  41 82 00 10 */	beq lbl_801DD528
/* 801DD51C 001D917C  38 61 00 08 */	addi r3, r1, 8
/* 801DD520 001D9180  48 10 B1 69 */	bl NANDClose
/* 801DD524 001D9184  48 00 00 10 */	b lbl_801DD534
lbl_801DD528:
/* 801DD528 001D9188  7F 1E C0 51 */	subf. r24, r30, r24
/* 801DD52C 001D918C  7F 39 F2 14 */	add r25, r25, r30
/* 801DD530 001D9190  40 82 FF 74 */	bne lbl_801DD4A4
lbl_801DD534:
/* 801DD534 001D9194  38 61 00 08 */	addi r3, r1, 8
/* 801DD538 001D9198  48 10 B1 51 */	bl NANDClose
/* 801DD53C 001D919C  2C 03 00 00 */	cmpwi r3, 0
/* 801DD540 001D91A0  40 82 00 10 */	bne lbl_801DD550
/* 801DD544 001D91A4  38 00 00 00 */	li r0, 0
/* 801DD548 001D91A8  3B 40 00 01 */	li r26, 1
/* 801DD54C 001D91AC  98 1D 00 01 */	stb r0, 1(r29)
lbl_801DD550:
/* 801DD550 001D91B0  2C 1B 00 00 */	cmpwi r27, 0
/* 801DD554 001D91B4  41 82 00 10 */	beq lbl_801DD564
/* 801DD558 001D91B8  80 6D 96 2C */	lwz r3, lbl_8063E8EC
/* 801DD55C 001D91BC  7F 64 DB 78 */	mr r4, r27
/* 801DD560 001D91C0  4B FF D7 E9 */	bl func_801DAD48
lbl_801DD564:
/* 801DD564 001D91C4  7F 83 E3 78 */	mr r3, r28
/* 801DD568 001D91C8  4B FF F1 5D */	bl func_801DC6C4
/* 801DD56C 001D91CC  2C 1A 00 00 */	cmpwi r26, 0
/* 801DD570 001D91D0  41 82 00 14 */	beq lbl_801DD584
/* 801DD574 001D91D4  38 00 00 00 */	li r0, 0
/* 801DD578 001D91D8  38 60 00 01 */	li r3, 1
/* 801DD57C 001D91DC  98 1D 00 01 */	stb r0, 1(r29)
/* 801DD580 001D91E0  48 00 00 10 */	b lbl_801DD590
lbl_801DD584:
/* 801DD584 001D91E4  38 00 00 00 */	li r0, 0
/* 801DD588 001D91E8  38 60 00 01 */	li r3, 1
/* 801DD58C 001D91EC  98 1D 00 00 */	stb r0, 0(r29)
lbl_801DD590:
/* 801DD590 001D91F0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 801DD594 001D91F4  4B FE 9B D5 */	bl _restgpr_24
/* 801DD598 001D91F8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801DD59C 001D91FC  7C 08 03 A6 */	mtlr r0
/* 801DD5A0 001D9200  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801DD5A4 001D9204  4E 80 00 20 */	blr
}
#pragma peephole on
#endif


} //extern "C"
