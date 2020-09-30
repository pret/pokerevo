.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global atan2
atan2:
/* 801D45DC 001D023C  4B FF CB 7C */	b __ieee754_atan2
