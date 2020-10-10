.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_finfo
VFipf2_finfo:
/* 8031A2A0 00315F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A2A4 00315F04  7C 08 02 A6 */	mflr r0
/* 8031A2A8 00315F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A2AC 00315F0C  4B FF B7 4D */	bl VFiPFFILE_finfo
/* 8031A2B0 00315F10  4B FF FF 81 */	bl VFiPFAPI_convertReturnValue
/* 8031A2B4 00315F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A2B8 00315F18  7C 08 03 A6 */	mtlr r0
/* 8031A2BC 00315F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A2C0 00315F20  4E 80 00 20 */	blr
