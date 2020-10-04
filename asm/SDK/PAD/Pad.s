.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __PADDisableRecalibration
__PADDisableRecalibration:
/* 802A5B28 002A1788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5B2C 002A178C  7C 08 02 A6 */	mflr r0
/* 802A5B30 002A1790  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5B34 002A1794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5B38 002A1798  7C 7F 1B 78 */	mr r31, r3
/* 802A5B3C 002A179C  4B FC 8C 21 */	bl OSDisableInterrupts
/* 802A5B40 002A17A0  3C A0 80 00 */	lis r5, 0x800030E3@ha
/* 802A5B44 002A17A4  2C 1F 00 00 */	cmpwi r31, 0
/* 802A5B48 002A17A8  88 85 30 E3 */	lbz r4, 0x800030E3@l(r5)
/* 802A5B4C 002A17AC  54 80 06 B0 */	rlwinm r0, r4, 0, 0x1a, 0x18
/* 802A5B50 002A17B0  54 9F D7 FE */	rlwinm r31, r4, 0x1a, 0x1f, 0x1f
/* 802A5B54 002A17B4  98 05 30 E3 */	stb r0, 0x30e3(r5)
/* 802A5B58 002A17B8  41 82 00 10 */	beq lbl_802A5B68
/* 802A5B5C 002A17BC  88 05 30 E3 */	lbz r0, 0x30e3(r5)
/* 802A5B60 002A17C0  60 00 00 40 */	ori r0, r0, 0x40
/* 802A5B64 002A17C4  98 05 30 E3 */	stb r0, 0x30e3(r5)
lbl_802A5B68:
/* 802A5B68 002A17C8  4B FC 8C 1D */	bl OSRestoreInterrupts
/* 802A5B6C 002A17CC  7F E3 FB 78 */	mr r3, r31
/* 802A5B70 002A17D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5B74 002A17D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5B78 002A17D8  7C 08 03 A6 */	mtlr r0
/* 802A5B7C 002A17DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5B80 002A17E0  4E 80 00 20 */	blr
