#include "types.h"
#include "ctorStruct.h"
#include "SDK/mem.h"
#include "SDK/os.h"
#include "SDK/dvd.h"
#include "SDK/nand.h"
#include "code_801DAAE0.h"


namespace
{
    struct unkClass;
    typedef void (*funcPtr)(u32, unkClass*);
    
    struct unkClass2
    {
        u8 unk0[0x40];
        funcPtr unk40;
        void* unk44; //data cache start addr to invalidate
        u32 unk48; // data cache region size
    };
    
    //TODO: header/source
    struct unkClass
    {
        u8 unk0;
        u8 unk1;
        u8 unk2[0x2];
        unkClass2 unk4;
    };
    
   

    
}


extern MEMHeapHandle lbl_8063E8EC;


//TODO: internal linkage
extern u8 lbl_8063F31E;
extern u8 lbl_8063F31F;
extern size_t lbl_8063F320;
extern unkClass* lbl_8063F324;
extern u32 lbl_8063F338;



extern "C"
{
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
  int new_var;
  OSDisableInterrupts();
  unkClass *r31 = 0;
  size_t i;
  for (i = 0; i < lbl_8063F320; i++)
  {
    if (lbl_8063F324[i].unk0 != 1)
    {
      new_var = 1;
      lbl_8063F324[i].unk0 = new_var;
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
unkClass* func_801DBF98(unkClass2* p1)
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
asm unkClass* func_801DBF98(unkClass2* p1)
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
void lbl_801DBFEC(u32 p1, unkClass2* p2)
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
void lbl_801DC068(u32 p1, unkClass2* p2)
{
    if (lbl_8063F31F == 0) {
        unkClass* r3 = func_801DBF98(p2);
        if (r3 && r3->unk4.unk40)
            r3->unk4.unk40(p1, r3);
    }
}

BOOL func_801DC0C8(size_t p1)
{
    if (lbl_8063F31E != 1) {
        lbl_8063F31F = 0;
        lbl_8063F338 = 0;
        NANDInit();
        if (!lbl_8063F338) {
            // new , 801DCE7C constructor
        }
    } else {
        return FALSE;
    }
}
























} //extern "C"
