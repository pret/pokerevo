.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global copysign
copysign:
/* 801D404C 001CFCAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D4050 001CFCB0  D8 21 00 08 */	stfd f1, 8(r1)
/* 801D4054 001CFCB4  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 801D4058 001CFCB8  80 61 00 08 */	lwz r3, 8(r1)
/* 801D405C 001CFCBC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D4060 001CFCC0  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 801D4064 001CFCC4  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 801D4068 001CFCC8  90 01 00 08 */	stw r0, 8(r1)
/* 801D406C 001CFCCC  C8 21 00 08 */	lfd f1, 8(r1)
/* 801D4070 001CFCD0  38 21 00 20 */	addi r1, r1, 0x20
/* 801D4074 001CFCD4  4E 80 00 20 */	blr
