.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global btm_init
btm_init:
/* 802C8D90 002C49F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8D94 002C49F4  7C 08 02 A6 */	mflr r0
/* 802C8D98 002C49F8  38 80 00 00 */	li r4, 0
/* 802C8D9C 002C49FC  38 A0 27 C4 */	li r5, 0x27c4
/* 802C8DA0 002C4A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8DA4 002C4A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C8DA8 002C4A08  3F E0 80 57 */	lis r31, lbl_80568B78@ha
/* 802C8DAC 002C4A0C  38 7F 8B 78 */	addi r3, r31, lbl_80568B78@l
/* 802C8DB0 002C4A10  4B D3 B3 55 */	bl memset
/* 802C8DB4 002C4A14  38 7F 8B 78 */	addi r3, r31, -29832
/* 802C8DB8 002C4A18  38 00 00 00 */	li r0, 0
/* 802C8DBC 002C4A1C  98 03 27 C0 */	stb r0, 0x27c0(r3)
/* 802C8DC0 002C4A20  4B FF F4 85 */	bl btm_inq_db_init
/* 802C8DC4 002C4A24  4B FF A6 69 */	bl btm_acl_init
/* 802C8DC8 002C4A28  38 60 00 02 */	li r3, 2
/* 802C8DCC 002C4A2C  48 00 2D 79 */	bl func_802CBB44
/* 802C8DD0 002C4A30  48 00 0C B1 */	bl func_802C9A80
/* 802C8DD4 002C4A34  4B FF CA 69 */	bl btm_dev_init
/* 802C8DD8 002C4A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C8DDC 002C4A3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C8DE0 002C4A40  7C 08 03 A6 */	mtlr r0
/* 802C8DE4 002C4A44  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8DE8 002C4A48  4E 80 00 20 */	blr
