.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global pow
pow:
/* 801D45E4 001D0244  4B FF D1 14 */	b __ieee754_pow
