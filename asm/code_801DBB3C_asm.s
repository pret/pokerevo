.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801DBE70
func_801DBE70:
/* 801DBE70 001D7AD0  38 A0 00 01 */	li r5, 1
/* 801DBE74 001D7AD4  38 6D A0 50 */	addi r3, r13, lbl_8063F310-_SDA_BASE_
/* 801DBE78 001D7AD8  38 80 00 04 */	li r4, 4
/* 801DBE7C 001D7ADC  38 00 00 00 */	li r0, 0
/* 801DBE80 001D7AE0  98 AD A0 50 */	stb r5, lbl_8063F310-_SDA_BASE_(r13)
/* 801DBE84 001D7AE4  B0 83 00 02 */	sth r4, 2(r3)
/* 801DBE88 001D7AE8  98 03 00 04 */	stb r0, 4(r3)
/* 801DBE8C 001D7AEC  4E 80 00 20 */	blr
