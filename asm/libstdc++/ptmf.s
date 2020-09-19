.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ptmf_scall
__ptmf_scall:
/* 801C6FD8 001C2C38  80 0C 00 00 */	lwz r0, 0(r12)
/* 801C6FDC 001C2C3C  81 6C 00 04 */	lwz r11, 4(r12)
/* 801C6FE0 001C2C40  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C6FE4 001C2C44  7C 63 02 14 */	add r3, r3, r0
/* 801C6FE8 001C2C48  2C 0B 00 00 */	cmpwi r11, 0
/* 801C6FEC 001C2C4C  41 80 00 0C */	blt lbl_801C6FF8
/* 801C6FF0 001C2C50  7D 83 60 2E */	lwzx r12, r3, r12
/* 801C6FF4 001C2C54  7D 8C 58 2E */	lwzx r12, r12, r11
lbl_801C6FF8:
/* 801C6FF8 001C2C58  7D 89 03 A6 */	mtctr r12
/* 801C6FFC 001C2C5C  4E 80 04 20 */	bctr
