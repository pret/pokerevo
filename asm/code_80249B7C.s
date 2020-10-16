.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80249B7C
func_80249B7C:
/* 80249B7C 002457DC  48 02 8C 54 */	b OSGetTick

.global func_80249B80
func_80249B80:
/* 80249B80 002457E0  38 A0 00 01 */	li r5, 1
/* 80249B84 002457E4  38 6D A5 D8 */	addi r3, r13, lbl_8063F898-_SDA_BASE_
/* 80249B88 002457E8  38 80 00 04 */	li r4, 4
/* 80249B8C 002457EC  38 00 00 00 */	li r0, 0
/* 80249B90 002457F0  98 AD A5 D8 */	stb r5, lbl_8063F898-_SDA_BASE_(r13)
/* 80249B94 002457F4  B0 83 00 02 */	sth r4, 2(r3)
/* 80249B98 002457F8  98 03 00 04 */	stb r0, 4(r3)
/* 80249B9C 002457FC  4E 80 00 20 */	blr
