.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __AXFXGetSrcCoef
__AXFXGetSrcCoef:
/* 80296480 002920E0  3C 80 80 44 */	lis r4, lbl_8043A970@ha
/* 80296484 002920E4  54 60 20 36 */	slwi r0, r3, 4
/* 80296488 002920E8  38 84 A9 70 */	addi r4, r4, lbl_8043A970@l
/* 8029648C 002920EC  7C 64 02 14 */	add r3, r4, r0
/* 80296490 002920F0  4E 80 00 20 */	blr
