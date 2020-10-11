.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_fclose
VFipf2_fclose:
/* 8031A27C 00315EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A280 00315EE0  7C 08 02 A6 */	mflr r0
/* 8031A284 00315EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A288 00315EE8  4B FF AC 31 */	bl VFiPFFILE_fclose
/* 8031A28C 00315EEC  4B FF FF A5 */	bl VFiPFAPI_convertReturnValue
/* 8031A290 00315EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A294 00315EF4  7C 08 03 A6 */	mtlr r0
/* 8031A298 00315EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A29C 00315EFC  4E 80 00 20 */	blr
