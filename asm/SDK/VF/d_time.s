.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global dTM_GetNowTime
dTM_GetNowTime:
/* 8031BB50 003177B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8031BB54 003177B4  7C 08 02 A6 */	mflr r0
/* 8031BB58 003177B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031BB5C 003177BC  38 00 00 00 */	li r0, 0
/* 8031BB60 003177C0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8031BB64 003177C4  7C 9F 23 78 */	mr r31, r4
/* 8031BB68 003177C8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8031BB6C 003177CC  7C 7E 1B 78 */	mr r30, r3
/* 8031BB70 003177D0  B0 03 00 00 */	sth r0, 0(r3)
/* 8031BB74 003177D4  B0 03 00 02 */	sth r0, 2(r3)
/* 8031BB78 003177D8  B0 03 00 04 */	sth r0, 4(r3)
/* 8031BB7C 003177DC  B0 04 00 00 */	sth r0, 0(r4)
/* 8031BB80 003177E0  B0 04 00 02 */	sth r0, 2(r4)
/* 8031BB84 003177E4  B0 04 00 04 */	sth r0, 4(r4)
/* 8031BB88 003177E8  4B F5 6C 31 */	bl OSGetTime
/* 8031BB8C 003177EC  38 A1 00 08 */	addi r5, r1, 8
/* 8031BB90 003177F0  4B F5 6E 75 */	bl OSTicksToCalendarTime
/* 8031BB94 003177F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8031BB98 003177F8  B0 1E 00 00 */	sth r0, 0(r30)
/* 8031BB9C 003177FC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8031BBA0 00317800  38 03 00 01 */	addi r0, r3, 1
/* 8031BBA4 00317804  B0 1E 00 02 */	sth r0, 2(r30)
/* 8031BBA8 00317808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031BBAC 0031780C  B0 1E 00 04 */	sth r0, 4(r30)
/* 8031BBB0 00317810  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8031BBB4 00317814  B0 1F 00 00 */	sth r0, 0(r31)
/* 8031BBB8 00317818  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8031BBBC 0031781C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8031BBC0 00317820  80 01 00 08 */	lwz r0, 8(r1)
/* 8031BBC4 00317824  B0 1F 00 04 */	sth r0, 4(r31)
/* 8031BBC8 00317828  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8031BBCC 0031782C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8031BBD0 00317830  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8031BBD4 00317834  7C 08 03 A6 */	mtlr r0
/* 8031BBD8 00317838  38 21 00 40 */	addi r1, r1, 0x40
/* 8031BBDC 0031783C  4E 80 00 20 */	blr