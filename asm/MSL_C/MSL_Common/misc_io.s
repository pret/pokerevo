.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __stdio_atexit
__stdio_atexit:
/* 801CA7B0 001C6410  3C 60 80 1C */	lis r3, __close_all@ha
/* 801CA7B4 001C6414  38 63 78 94 */	addi r3, r3, __close_all@l
/* 801CA7B8 001C6418  90 6D 9F D8 */	stw r3, lbl_8063F298-_SDA_BASE_(r13)
/* 801CA7BC 001C641C  4E 80 00 20 */	blr
