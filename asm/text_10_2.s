.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __dt__Q34nw4r2ut5ColorFv
__dt__Q34nw4r2ut5ColorFv:
/* 80362698 0035E2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036269C 0035E2FC  7C 08 02 A6 */	mflr r0
/* 803626A0 0035E300  2C 03 00 00 */	cmpwi r3, 0
/* 803626A4 0035E304  90 01 00 14 */	stw r0, 0x14(r1)
/* 803626A8 0035E308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803626AC 0035E30C  7C 7F 1B 78 */	mr r31, r3
/* 803626B0 0035E310  41 82 00 10 */	beq lbl_803626C0
/* 803626B4 0035E314  2C 04 00 00 */	cmpwi r4, 0
/* 803626B8 0035E318  40 81 00 08 */	ble lbl_803626C0
/* 803626BC 0035E31C  4B E7 83 FD */	bl __dl__FPv
lbl_803626C0:
/* 803626C0 0035E320  7F E3 FB 78 */	mr r3, r31
/* 803626C4 0035E324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803626C8 0035E328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803626CC 0035E32C  7C 08 03 A6 */	mtlr r0
/* 803626D0 0035E330  38 21 00 10 */	addi r1, r1, 0x10
/* 803626D4 0035E334  4E 80 00 20 */	blr

.global SetTextColor__Q34nw4r2ut10CharWriterFQ34nw4r2ut5Color
SetTextColor__Q34nw4r2ut10CharWriterFQ34nw4r2ut5Color:
/* 803626D8 0035E338  88 E4 00 00 */	lbz r7, 0(r4)
/* 803626DC 0035E33C  88 C4 00 01 */	lbz r6, 1(r4)
/* 803626E0 0035E340  88 A4 00 02 */	lbz r5, 2(r4)
/* 803626E4 0035E344  88 04 00 03 */	lbz r0, 3(r4)
/* 803626E8 0035E348  98 E3 00 18 */	stb r7, 0x18(r3)
/* 803626EC 0035E34C  98 C3 00 19 */	stb r6, 0x19(r3)
/* 803626F0 0035E350  98 A3 00 1A */	stb r5, 0x1a(r3)
/* 803626F4 0035E354  98 03 00 1B */	stb r0, 0x1b(r3)
/* 803626F8 0035E358  48 00 33 D4 */	b UpdateVertexColor__Q34nw4r2ut10CharWriterFv
