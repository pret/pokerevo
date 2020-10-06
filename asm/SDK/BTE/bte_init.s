.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global BTE_InitStack
BTE_InitStack:
/* 802BCE28 002B8A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCE2C 002B8A8C  7C 08 02 A6 */	mflr r0
/* 802BCE30 002B8A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCE34 002B8A94  48 01 EB 25 */	bl func_802DB958
/* 802BCE38 002B8A98  48 01 1D F9 */	bl func_802CEC30
/* 802BCE3C 002B8A9C  48 01 56 C9 */	bl func_802D2504
/* 802BCE40 002B8AA0  48 01 61 49 */	bl func_802D2F88
/* 802BCE44 002B8AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCE48 002B8AA8  7C 08 03 A6 */	mtlr r0
/* 802BCE4C 002B8AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCE50 002B8AB0  4E 80 00 20 */	blr
