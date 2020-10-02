.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __OSModuleInit
__OSModuleInit:
/* 8026EEE0 0026AB40  38 00 00 00 */	li r0, 0
/* 8026EEE4 0026AB44  3C 60 80 00 */	lis r3, 0x800030CC@ha
/* 8026EEE8 0026AB48  90 03 30 CC */	stw r0, 0x800030CC@l(r3)
/* 8026EEEC 0026AB4C  90 03 30 C8 */	stw r0, 0x30c8(r3)
/* 8026EEF0 0026AB50  90 03 30 D0 */	stw r0, 0x30d0(r3)
/* 8026EEF4 0026AB54  4E 80 00 20 */	blr
