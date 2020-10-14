.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global Console_Printf__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHeadPCce
Console_Printf__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHeadPCce:
/* 803625C4 0035E224  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803625C8 0035E228  40 86 00 24 */	bne cr1, lbl_803625EC
/* 803625CC 0035E22C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803625D0 0035E230  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803625D4 0035E234  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803625D8 0035E238  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803625DC 0035E23C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803625E0 0035E240  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803625E4 0035E244  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803625E8 0035E248  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_803625EC:
/* 803625EC 0035E24C  39 61 00 88 */	addi r11, r1, 0x88
/* 803625F0 0035E250  38 01 00 08 */	addi r0, r1, 8
/* 803625F4 0035E254  3D 80 02 00 */	lis r12, 0x200
/* 803625F8 0035E258  90 61 00 08 */	stw r3, 8(r1)
/* 803625FC 0035E25C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80362600 0035E260  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80362604 0035E264  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80362608 0035E268  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8036260C 0035E26C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80362610 0035E270  91 21 00 20 */	stw r9, 0x20(r1)
/* 80362614 0035E274  91 41 00 24 */	stw r10, 0x24(r1)
/* 80362618 0035E278  91 81 00 68 */	stw r12, 0x68(r1)
/* 8036261C 0035E27C  91 61 00 6C */	stw r11, 0x6c(r1)
/* 80362620 0035E280  90 01 00 70 */	stw r0, 0x70(r1)
/* 80362624 0035E284  38 21 00 80 */	addi r1, r1, 0x80
/* 80362628 0035E288  4E 80 00 20 */	blr

/* NOTE: contains inlined calls to GetActiveLines_ and GetRingUsedLines_ */
.global Console_GetTotalLines__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHead
Console_GetTotalLines__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHead:
/* 8036262C 0035E28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80362630 0035E290  7C 08 02 A6 */	mflr r0
/* 80362634 0035E294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80362638 0035E298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036263C 0035E29C  7C 7F 1B 78 */	mr r31, r3
/* 80362640 0035E2A0  4B F0 C1 1D */	bl OSDisableInterrupts
/* 80362644 0035E2A4  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 80362648 0035E2A8  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8036264C 0035E2AC  7C 84 00 51 */	subf. r4, r4, r0
/* 80362650 0035E2B0  40 80 00 0C */	bge lbl_8036265C
/* 80362654 0035E2B4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80362658 0035E2B8  7C 84 02 14 */	add r4, r4, r0
lbl_8036265C:
/* 8036265C 0035E2BC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 80362660 0035E2C0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80362664 0035E2C4  2C 00 00 00 */	cmpwi r0, 0
/* 80362668 0035E2C8  41 82 00 0C */	beq lbl_80362674
/* 8036266C 0035E2CC  38 04 00 01 */	addi r0, r4, 1
/* 80362670 0035E2D0  54 04 04 3E */	clrlwi r4, r0, 0x10
lbl_80362674:
/* 80362674 0035E2D4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80362678 0035E2D8  7F E0 22 14 */	add r31, r0, r4
/* 8036267C 0035E2DC  4B F0 C1 09 */	bl OSRestoreInterrupts
/* 80362680 0035E2E0  7F E3 FB 78 */	mr r3, r31
/* 80362684 0035E2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80362688 0035E2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036268C 0035E2EC  7C 08 03 A6 */	mtlr r0
/* 80362690 0035E2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80362694 0035E2F4  4E 80 00 20 */	blr
