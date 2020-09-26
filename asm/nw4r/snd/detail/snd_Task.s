.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __dt__Q44nw4r3snd6detail4TaskFv
__dt__Q44nw4r3snd6detail4TaskFv:
/* 8037F940 0037B5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F944 0037B5A4  7C 08 02 A6 */	mflr r0
/* 8037F948 0037B5A8  2C 03 00 00 */	cmpwi r3, 0
/* 8037F94C 0037B5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F950 0037B5B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F954 0037B5B4  7C 7F 1B 78 */	mr r31, r3
/* 8037F958 0037B5B8  41 82 00 10 */	beq lbl_8037F968
/* 8037F95C 0037B5BC  2C 04 00 00 */	cmpwi r4, 0
/* 8037F960 0037B5C0  40 81 00 08 */	ble lbl_8037F968
/* 8037F964 0037B5C4  4B E5 B1 55 */	bl func_801DAAB8
lbl_8037F968:
/* 8037F968 0037B5C8  7F E3 FB 78 */	mr r3, r31
/* 8037F96C 0037B5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F970 0037B5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F974 0037B5D4  7C 08 03 A6 */	mtlr r0
/* 8037F978 0037B5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F97C 0037B5DC  4E 80 00 20 */	blr
