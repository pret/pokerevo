.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global abs
abs:
/* 801C9398 001C4FF8  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 801C939C 001C4FFC  7C 80 1A 78 */	xor r0, r4, r3
/* 801C93A0 001C5000  7C 64 00 50 */	subf r3, r4, r0
/* 801C93A4 001C5004  4E 80 00 20 */	blr
