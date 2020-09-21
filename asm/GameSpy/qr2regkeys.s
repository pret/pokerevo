.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global qr2_register_keyA
qr2_register_keyA:
/* 803507CC 0034C42C  2C 03 00 32 */	cmpwi r3, 0x32
/* 803507D0 0034C430  4D 80 00 20 */	bltlr
/* 803507D4 0034C434  2C 03 00 FE */	cmpwi r3, 0xfe
/* 803507D8 0034C438  40 81 00 08 */	ble lbl_803507E0
/* 803507DC 0034C43C  4E 80 00 20 */	blr
lbl_803507E0:
/* 803507E0 0034C440  3C A0 80 45 */	lis r5, lbl_8044BB78@ha
/* 803507E4 0034C444  54 60 10 3A */	slwi r0, r3, 2
/* 803507E8 0034C448  38 A5 BB 78 */	addi r5, r5, lbl_8044BB78@l
/* 803507EC 0034C44C  7C 85 01 2E */	stwx r4, r5, r0
/* 803507F0 0034C450  4E 80 00 20 */	blr
