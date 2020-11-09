.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801DF020
func_801DF020:
/* 801DF020 001DAC80  38 A0 00 01 */	li r5, 1
/* 801DF024 001DAC84  38 6D A0 98 */	addi r3, r13, lbl_8063F358-_SDA_BASE_
/* 801DF028 001DAC88  38 80 00 04 */	li r4, 4
/* 801DF02C 001DAC8C  38 00 00 00 */	li r0, 0
/* 801DF030 001DAC90  98 AD A0 98 */	stb r5, lbl_8063F358-_SDA_BASE_(r13)
/* 801DF034 001DAC94  B0 83 00 02 */	sth r4, 2(r3)
/* 801DF038 001DAC98  98 03 00 04 */	stb r0, 4(r3)
/* 801DF03C 001DAC9C  4E 80 00 20 */	blr
