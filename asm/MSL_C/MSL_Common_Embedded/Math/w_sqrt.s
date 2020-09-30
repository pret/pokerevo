.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global sqrt
sqrt:
/* 801D4834 001D0494  4B FF FD B4 */	b __ieee754_sqrt
