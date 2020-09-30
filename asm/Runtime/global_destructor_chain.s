.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __register_global_object_tmp
__register_global_object_tmp:
/* 801C6C48 001C28A8  80 0D 9F C0 */	lwz r0, lbl_8063F280-_SDA_BASE_(r13)
/* 801C6C4C 001C28AC  90 05 00 00 */	stw r0, 0(r5)
/* 801C6C50 001C28B0  90 85 00 04 */	stw r4, 4(r5)
/* 801C6C54 001C28B4  90 65 00 08 */	stw r3, 8(r5)
/* 801C6C58 001C28B8  90 AD 9F C0 */	stw r5, lbl_8063F280-_SDA_BASE_(r13)
/* 801C6C5C 001C28BC  4E 80 00 20 */	blr

.global __destroy_global_chain_tmp
__destroy_global_chain_tmp:
/* 801C6C60 001C28C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C6C64 001C28C4  7C 08 02 A6 */	mflr r0
/* 801C6C68 001C28C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C6C6C 001C28CC  48 00 00 20 */	b lbl_801C6C8C
lbl_801C6C70:
/* 801C6C70 001C28D0  80 03 00 00 */	lwz r0, 0(r3)
/* 801C6C74 001C28D4  38 80 FF FF */	li r4, -1
/* 801C6C78 001C28D8  90 0D 9F C0 */	stw r0, lbl_8063F280-_SDA_BASE_(r13)
/* 801C6C7C 001C28DC  81 83 00 04 */	lwz r12, 4(r3)
/* 801C6C80 001C28E0  80 63 00 08 */	lwz r3, 8(r3)
/* 801C6C84 001C28E4  7D 89 03 A6 */	mtctr r12
/* 801C6C88 001C28E8  4E 80 04 21 */	bctrl
lbl_801C6C8C:
/* 801C6C8C 001C28EC  80 6D 9F C0 */	lwz r3, lbl_8063F280-_SDA_BASE_(r13)
/* 801C6C90 001C28F0  2C 03 00 00 */	cmpwi r3, 0
/* 801C6C94 001C28F4  40 82 FF DC */	bne lbl_801C6C70
/* 801C6C98 001C28F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C6C9C 001C28FC  7C 08 03 A6 */	mtlr r0
/* 801C6CA0 001C2900  38 21 00 10 */	addi r1, r1, 0x10
/* 801C6CA4 001C2904  4E 80 00 20 */	blr
