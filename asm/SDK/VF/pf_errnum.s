.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_errnum
VFipf2_errnum:
/* 8031A258 00315EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A25C 00315EBC  7C 08 02 A6 */	mflr r0
/* 8031A260 00315EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A264 00315EC4  4B FF F9 8D */	bl VFiPFVOL_errnum
/* 8031A268 00315EC8  4B FF FF 79 */	bl VFiPFAPI_convertError
/* 8031A26C 00315ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A270 00315ED0  7C 08 03 A6 */	mtlr r0
/* 8031A274 00315ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A278 00315ED8  4E 80 00 20 */	blr
