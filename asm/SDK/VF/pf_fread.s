.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_fread
VFipf2_fread:
/* 8031A360 00315FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A364 00315FC4  7C 08 02 A6 */	mflr r0
/* 8031A368 00315FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A36C 00315FCC  38 E1 00 08 */	addi r7, r1, 8
/* 8031A370 00315FD0  4B FF AE A5 */	bl VFiPFFILE_fread
/* 8031A374 00315FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A378 00315FD8  80 61 00 08 */	lwz r3, 8(r1)
/* 8031A37C 00315FDC  7C 08 03 A6 */	mtlr r0
/* 8031A380 00315FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A384 00315FE4  4E 80 00 20 */	blr
