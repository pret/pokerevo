.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global asin
asin:
/* 801D45D8 001D0238  4B FF C8 E8 */	b __ieee754_asin
