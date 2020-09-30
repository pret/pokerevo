.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRKMessageSend
TRKMessageSend:
/* 801D4CDC 001D093C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D4CE0 001D0940  7C 08 02 A6 */	mflr r0
/* 801D4CE4 001D0944  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D4CE8 001D0948  80 83 00 08 */	lwz r4, 8(r3)
/* 801D4CEC 001D094C  38 63 00 10 */	addi r3, r3, 0x10
/* 801D4CF0 001D0950  48 00 49 1D */	bl TRKWriteUARTN
/* 801D4CF4 001D0954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D4CF8 001D0958  38 60 00 00 */	li r3, 0
/* 801D4CFC 001D095C  7C 08 03 A6 */	mtlr r0
/* 801D4D00 001D0960  38 21 00 10 */	addi r1, r1, 0x10
/* 801D4D04 001D0964  4E 80 00 20 */	blr
