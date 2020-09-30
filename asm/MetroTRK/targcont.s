.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRKTargetContinue
TRKTargetContinue:
/* 801D9958 001D55B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D995C 001D55BC  7C 08 02 A6 */	mflr r0
/* 801D9960 001D55C0  38 60 00 00 */	li r3, 0
/* 801D9964 001D55C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9968 001D55C8  4B FF DC AD */	bl TRKTargetSetStopped
/* 801D996C 001D55CC  4B FF FC 41 */	bl UnreserveEXI2Port
/* 801D9970 001D55D0  4B FF DB 1D */	bl TRKSwapAndGo
/* 801D9974 001D55D4  4B FF FC 69 */	bl ReserveEXI2Port
/* 801D9978 001D55D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D997C 001D55DC  38 60 00 00 */	li r3, 0
/* 801D9980 001D55E0  7C 08 03 A6 */	mtlr r0
/* 801D9984 001D55E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9988 001D55E8  4E 80 00 20 */	blr
