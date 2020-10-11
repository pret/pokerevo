.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_fseek
VFipf2_fseek:
/* 8031A388 00315FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A38C 00315FEC  7C 08 02 A6 */	mflr r0
/* 8031A390 00315FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A394 00315FF4  4B FF B2 F1 */	bl VFiPFFILE_fseek
/* 8031A398 00315FF8  4B FF FE 99 */	bl VFiPFAPI_convertReturnValue
/* 8031A39C 00315FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A3A0 00316000  7C 08 03 A6 */	mtlr r0
/* 8031A3A4 00316004  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A3A8 00316008  4E 80 00 20 */	blr
