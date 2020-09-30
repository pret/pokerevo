.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRK_main
TRK_main:
/* 801D9454 001D50B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9458 001D50B8  7C 08 02 A6 */	mflr r0
/* 801D945C 001D50BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9460 001D50C0  4B FF B7 45 */	bl TRKInitializeNub
/* 801D9464 001D50C4  3C 80 80 49 */	lis r4, lbl_80490D78@ha
/* 801D9468 001D50C8  2C 03 00 00 */	cmpwi r3, 0
/* 801D946C 001D50CC  90 64 0D 78 */	stw r3, lbl_80490D78@l(r4)
/* 801D9470 001D50D0  40 82 00 0C */	bne lbl_801D947C
/* 801D9474 001D50D4  4B FF B6 E5 */	bl TRKNubWelcome
/* 801D9478 001D50D8  4B FF B3 C1 */	bl TRKNubMainLoop
lbl_801D947C:
/* 801D947C 001D50DC  4B FF B7 05 */	bl TRKTerminateNub
/* 801D9480 001D50E0  3C 80 80 49 */	lis r4, lbl_80490D78@ha
/* 801D9484 001D50E4  90 64 0D 78 */	stw r3, lbl_80490D78@l(r4)
/* 801D9488 001D50E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D948C 001D50EC  7C 08 03 A6 */	mtlr r0
/* 801D9490 001D50F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9494 001D50F4  4E 80 00 20 */	blr
