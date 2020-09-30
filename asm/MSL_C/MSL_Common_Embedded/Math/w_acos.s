.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global acos
acos:
/* 801D45D4 001D0234  4B FF C6 28 */	b __ieee754_acos
