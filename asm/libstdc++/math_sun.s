.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global scalbn
scalbn:
/* 801D09C0 001CC620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D09C4 001CC624  7C 08 02 A6 */	mflr r0
/* 801D09C8 001CC628  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D09CC 001CC62C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D09D0 001CC630  7C 7F 1B 78 */	mr r31, r3
/* 801D09D4 001CC634  38 61 00 08 */	addi r3, r1, 8
/* 801D09D8 001CC638  48 00 38 B9 */	bl frexp
/* 801D09DC 001CC63C  80 01 00 08 */	lwz r0, 8(r1)
/* 801D09E0 001CC640  7C 60 FA 14 */	add r3, r0, r31
/* 801D09E4 001CC644  90 61 00 08 */	stw r3, 8(r1)
/* 801D09E8 001CC648  48 00 39 31 */	bl ldexp
/* 801D09EC 001CC64C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D09F0 001CC650  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D09F4 001CC654  7C 08 03 A6 */	mtlr r0
/* 801D09F8 001CC658  38 21 00 20 */	addi r1, r1, 0x20
/* 801D09FC 001CC65C  4E 80 00 20 */	blr
