.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRKDoNotifyStopped
TRKDoNotifyStopped:
/* 801D706C 001D2CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7070 001D2CD0  7C 08 02 A6 */	mflr r0
/* 801D7074 001D2CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7078 001D2CD8  38 81 00 08 */	addi r4, r1, 8
/* 801D707C 001D2CDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D7080 001D2CE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D7084 001D2CE4  7C 7E 1B 78 */	mr r30, r3
/* 801D7088 001D2CE8  38 61 00 0C */	addi r3, r1, 0xc
/* 801D708C 001D2CEC  4B FF E3 7D */	bl TRKGetFreeBuffer
/* 801D7090 001D2CF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D7094 001D2CF4  40 82 00 54 */	bne lbl_801D70E8
/* 801D7098 001D2CF8  40 82 00 20 */	bne lbl_801D70B8
/* 801D709C 001D2CFC  2C 1E 00 90 */	cmpwi r30, 0x90
/* 801D70A0 001D2D00  40 82 00 10 */	bne lbl_801D70B0
/* 801D70A4 001D2D04  80 61 00 08 */	lwz r3, 8(r1)
/* 801D70A8 001D2D08  48 00 09 09 */	bl TRKTargetAddStopInfo
/* 801D70AC 001D2D0C  48 00 00 0C */	b lbl_801D70B8
lbl_801D70B0:
/* 801D70B0 001D2D10  80 61 00 08 */	lwz r3, 8(r1)
/* 801D70B4 001D2D14  48 00 08 79 */	bl TRKTargetAddExceptionInfo
lbl_801D70B8:
/* 801D70B8 001D2D18  80 61 00 08 */	lwz r3, 8(r1)
/* 801D70BC 001D2D1C  38 81 00 10 */	addi r4, r1, 0x10
/* 801D70C0 001D2D20  38 A0 00 02 */	li r5, 2
/* 801D70C4 001D2D24  38 C0 00 03 */	li r6, 3
/* 801D70C8 001D2D28  38 E0 00 01 */	li r7, 1
/* 801D70CC 001D2D2C  4B FF FB E9 */	bl TRKRequestSend
/* 801D70D0 001D2D30  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D70D4 001D2D34  40 82 00 0C */	bne lbl_801D70E0
/* 801D70D8 001D2D38  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801D70DC 001D2D3C  4B FF E2 9D */	bl TRKReleaseBuffer
lbl_801D70E0:
/* 801D70E0 001D2D40  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801D70E4 001D2D44  4B FF E2 95 */	bl TRKReleaseBuffer
lbl_801D70E8:
/* 801D70E8 001D2D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D70EC 001D2D4C  7F E3 FB 78 */	mr r3, r31
/* 801D70F0 001D2D50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D70F4 001D2D54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D70F8 001D2D58  7C 08 03 A6 */	mtlr r0
/* 801D70FC 001D2D5C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7100 001D2D60  4E 80 00 20 */	blr