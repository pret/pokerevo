.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global Close__Q34nw4r3snd16NandSoundArchiveFv
Close__Q34nw4r3snd16NandSoundArchiveFv:
/* 80372F48 0036EBA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372F4C 0036EBAC  7C 08 02 A6 */	mflr r0
/* 80372F50 0036EBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372F54 0036EBB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372F58 0036EBB8  7C 7F 1B 78 */	mr r31, r3
/* 80372F5C 0036EBBC  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 80372F60 0036EBC0  2C 00 00 00 */	cmpwi r0, 0
/* 80372F64 0036EBC4  41 82 00 14 */	beq lbl_80372F78
/* 80372F68 0036EBC8  38 63 01 4C */	addi r3, r3, 0x14c
/* 80372F6C 0036EBCC  4B F7 57 1D */	bl func_802E8688
/* 80372F70 0036EBD0  38 00 00 00 */	li r0, 0
/* 80372F74 0036EBD4  98 1F 01 D8 */	stb r0, 0x1d8(r31)
lbl_80372F78:
/* 80372F78 0036EBD8  7F E3 FB 78 */	mr r3, r31
/* 80372F7C 0036EBDC  48 00 40 91 */	bl Shutdown__Q34nw4r3snd12SoundArchiveFv
/* 80372F80 0036EBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372F84 0036EBE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372F88 0036EBE8  7C 08 03 A6 */	mtlr r0
/* 80372F8C 0036EBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80372F90 0036EBF0  4E 80 00 20 */	blr
