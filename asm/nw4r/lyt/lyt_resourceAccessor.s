.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __dt__Q34nw4r3lyt16ResourceAccessorFv
__dt__Q34nw4r3lyt16ResourceAccessorFv:
/* 8038E2E0 00389F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038E2E4 00389F44  7C 08 02 A6 */	mflr r0
/* 8038E2E8 00389F48  2C 03 00 00 */	cmpwi r3, 0
/* 8038E2EC 00389F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038E2F0 00389F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038E2F4 00389F54  7C 7F 1B 78 */	mr r31, r3
/* 8038E2F8 00389F58  41 82 00 10 */	beq lbl_8038E308
/* 8038E2FC 00389F5C  2C 04 00 00 */	cmpwi r4, 0
/* 8038E300 00389F60  40 81 00 08 */	ble lbl_8038E308
/* 8038E304 00389F64  4B E4 C7 B5 */	bl __dl__FPv
lbl_8038E308:
/* 8038E308 00389F68  7F E3 FB 78 */	mr r3, r31
/* 8038E30C 00389F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038E310 00389F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038E314 00389F74  7C 08 03 A6 */	mtlr r0
/* 8038E318 00389F78  38 21 00 10 */	addi r1, r1, 0x10
/* 8038E31C 00389F7C  4E 80 00 20 */	blr 

.global __ct__Q34nw4r3lyt16ResourceAccessorFv
__ct__Q34nw4r3lyt16ResourceAccessorFv:
/* 8038E320 00389F80  3C 80 80 45 */	lis r4, lbl_8044E580@ha
/* 8038E324 00389F84  38 84 E5 80 */	addi r4, r4, lbl_8044E580@l
/* 8038E328 00389F88  90 83 00 00 */	stw r4, 0(r3)
/* 8038E32C 00389F8C  4E 80 00 20 */	blr 

.global GetFont__Q34nw4r3lyt16ResourceAccessorFPCc
GetFont__Q34nw4r3lyt16ResourceAccessorFPCc:
/* 8038E330 00389F90  38 60 00 00 */	li r3, 0
/* 8038E334 00389F94  4E 80 00 20 */	blr 
