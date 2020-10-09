.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global MATH_CountPopulation
MATH_CountPopulation:
/* 802EE98C 002EA5EC  3C C0 55 55 */	lis r6, 0x55555555@ha
/* 802EE990 002EA5F0  3C A0 33 33 */	lis r5, 0x33333333@ha
/* 802EE994 002EA5F4  54 67 F8 7E */	srwi r7, r3, 1
/* 802EE998 002EA5F8  3C 80 0F 0F */	lis r4, 0x0F0F0F0F@ha
/* 802EE99C 002EA5FC  38 06 55 55 */	addi r0, r6, 0x55555555@l
/* 802EE9A0 002EA600  38 A5 33 33 */	addi r5, r5, 0x33333333@l
/* 802EE9A4 002EA604  7C E6 00 38 */	and r6, r7, r0
/* 802EE9A8 002EA608  38 04 0F 0F */	addi r0, r4, 0x0F0F0F0F@l
/* 802EE9AC 002EA60C  7C 86 18 50 */	subf r4, r6, r3
/* 802EE9B0 002EA610  54 83 F0 BE */	srwi r3, r4, 2
/* 802EE9B4 002EA614  7C 84 28 38 */	and r4, r4, r5
/* 802EE9B8 002EA618  7C 63 28 38 */	and r3, r3, r5
/* 802EE9BC 002EA61C  7C 84 1A 14 */	add r4, r4, r3
/* 802EE9C0 002EA620  54 83 E1 3E */	srwi r3, r4, 4
/* 802EE9C4 002EA624  7C 84 1A 14 */	add r4, r4, r3
/* 802EE9C8 002EA628  7C 84 00 38 */	and r4, r4, r0
/* 802EE9CC 002EA62C  54 80 C2 3E */	srwi r0, r4, 8
/* 802EE9D0 002EA630  7C 84 02 14 */	add r4, r4, r0
/* 802EE9D4 002EA634  54 80 84 3E */	srwi r0, r4, 0x10
/* 802EE9D8 002EA638  7C 84 02 14 */	add r4, r4, r0
/* 802EE9DC 002EA63C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802EE9E0 002EA640  4E 80 00 20 */	blr
