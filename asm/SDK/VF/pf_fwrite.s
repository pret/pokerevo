.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_fwrite
VFipf2_fwrite:
/* 8031A3AC 0031600C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A3B0 00316010  7C 08 02 A6 */	mflr r0
/* 8031A3B4 00316014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A3B8 00316018  38 E1 00 08 */	addi r7, r1, 8
/* 8031A3BC 0031601C  4B FF B0 71 */	bl VFiPFFILE_fwrite
/* 8031A3C0 00316020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A3C4 00316024  80 61 00 08 */	lwz r3, 8(r1)
/* 8031A3C8 00316028  7C 08 03 A6 */	mtlr r0
/* 8031A3CC 0031602C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A3D0 00316030  4E 80 00 20 */	blr
