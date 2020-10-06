.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global utl_freebuf
utl_freebuf:
/* 802BDCAC 002B990C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDCB0 002B9910  7C 08 02 A6 */	mflr r0
/* 802BDCB4 002B9914  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDCB8 002B9918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BDCBC 002B991C  7C 7F 1B 78 */	mr r31, r3
/* 802BDCC0 002B9920  80 03 00 00 */	lwz r0, 0(r3)
/* 802BDCC4 002B9924  2C 00 00 00 */	cmpwi r0, 0
/* 802BDCC8 002B9928  41 82 00 14 */	beq lbl_802BDCDC
/* 802BDCCC 002B992C  7C 03 03 78 */	mr r3, r0
/* 802BDCD0 002B9930  4B FF C0 65 */	bl GKI_freebuf
/* 802BDCD4 002B9934  38 00 00 00 */	li r0, 0
/* 802BDCD8 002B9938  90 1F 00 00 */	stw r0, 0(r31)
lbl_802BDCDC:
/* 802BDCDC 002B993C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDCE0 002B9940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BDCE4 002B9944  7C 08 03 A6 */	mtlr r0
/* 802BDCE8 002B9948  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDCEC 002B994C  4E 80 00 20 */	blr
