.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global rand
rand:
/* 801CCD3C 001C899C  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 801CCD40 001C89A0  80 8D 83 E8 */	lwz r4, lbl_8063D6A8-_SDA_BASE_(r13)
/* 801CCD44 001C89A4  38 03 4E 6D */	addi r0, r3, 0x41C64E6D@l
/* 801CCD48 001C89A8  7C 64 01 D6 */	mullw r3, r4, r0
/* 801CCD4C 001C89AC  38 03 30 39 */	addi r0, r3, 0x3039
/* 801CCD50 001C89B0  90 0D 83 E8 */	stw r0, lbl_8063D6A8-_SDA_BASE_(r13)
/* 801CCD54 001C89B4  54 03 84 7E */	rlwinm r3, r0, 0x10, 0x11, 0x1f
/* 801CCD58 001C89B8  4E 80 00 20 */	blr

.global srand
srand:
/* 801CCD5C 001C89BC  90 6D 83 E8 */	stw r3, lbl_8063D6A8-_SDA_BASE_(r13)
/* 801CCD60 001C89C0  4E 80 00 20 */	blr
