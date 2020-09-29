.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global fmod
fmod:
/* 801D45E0 001D0240  4B FF CD E8 */	b __ieee754_fmod
