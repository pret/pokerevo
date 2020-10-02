.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global SystemCallVector
SystemCallVector:
/* 80270FE0 0026CC40  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 80270FE4 0026CC44  61 2A 00 08 */	ori r10, r9, 8
/* 80270FE8 0026CC48  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 80270FEC 0026CC4C  4C 00 01 2C */	isync
/* 80270FF0 0026CC50  7C 00 04 AC */	sync 0
/* 80270FF4 0026CC54  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 80270FF8 0026CC58  4C 00 00 64 */	rfi

.global __OSSystemCallVectorEnd
__OSSystemCallVectorEnd:
/* 80270FFC 0026CC5C  60 00 00 00 */	nop

.global __OSInitSystemCall
__OSInitSystemCall:
/* 80271000 0026CC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271004 0026CC64  7C 08 02 A6 */	mflr r0
/* 80271008 0026CC68  3C 80 80 27 */	lis r4, SystemCallVector@ha
/* 8027100C 0026CC6C  3C A0 80 27 */	lis r5, __OSSystemCallVectorEnd@ha
/* 80271010 0026CC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271014 0026CC74  38 84 0F E0 */	addi r4, r4, SystemCallVector@l
/* 80271018 0026CC78  38 A5 0F FC */	addi r5, r5, __OSSystemCallVectorEnd@l
/* 8027101C 0026CC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80271020 0026CC80  3F E0 80 00 */	lis r31, 0x80000C00@ha
/* 80271024 0026CC84  38 7F 0C 00 */	addi r3, r31, 0x80000C00@l
/* 80271028 0026CC88  7C A4 28 50 */	subf r5, r4, r5
/* 8027102C 0026CC8C  4B D9 2F D5 */	bl memcpy
/* 80271030 0026CC90  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 80271034 0026CC94  38 80 01 00 */	li r4, 0x100
/* 80271038 0026CC98  4B FF 96 7D */	bl DCFlushRangeNoSync
/* 8027103C 0026CC9C  7C 00 04 AC */	sync 0
/* 80271040 0026CCA0  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 80271044 0026CCA4  38 80 01 00 */	li r4, 0x100
/* 80271048 0026CCA8  4B FF 96 F1 */	bl ICInvalidateRange
/* 8027104C 0026CCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271050 0026CCB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80271054 0026CCB4  7C 08 03 A6 */	mtlr r0
/* 80271058 0026CCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027105C 0026CCBC  4E 80 00 20 */	blr
