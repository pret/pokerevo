.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global gpiResetProfile
gpiResetProfile:
/* 8033DD6C 003399CC  38 00 00 00 */	li r0, 0
/* 8033DD70 003399D0  38 60 00 01 */	li r3, 1
/* 8033DD74 003399D4  90 04 00 08 */	stw r0, 8(r4)
/* 8033DD78 003399D8  90 04 00 10 */	stw r0, 0x10(r4)
/* 8033DD7C 003399DC  90 04 00 14 */	stw r0, 0x14(r4)
/* 8033DD80 003399E0  90 04 00 18 */	stw r0, 0x18(r4)
/* 8033DD84 003399E4  4E 80 00 20 */	blr
