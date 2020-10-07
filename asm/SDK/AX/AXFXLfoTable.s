.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __AXFXGetLfoSinTable
__AXFXGetLfoSinTable:
/* 80296474 002920D4  3C 60 80 44 */	lis r3, lbl_8043A770@ha
/* 80296478 002920D8  38 63 A7 70 */	addi r3, r3, lbl_8043A770@l
/* 8029647C 002920DC  4E 80 00 20 */	blr
