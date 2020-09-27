.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DetachSound__Q34nw4r3snd15WaveSoundHandleFv
DetachSound__Q34nw4r3snd15WaveSoundHandleFv:
/* 803839A4 0037F604  80 83 00 00 */	lwz r4, 0(r3)
/* 803839A8 0037F608  2C 04 00 00 */	cmpwi r4, 0
/* 803839AC 0037F60C  41 82 00 18 */	beq lbl_803839C4
/* 803839B0 0037F610  80 04 01 C8 */	lwz r0, 0x1c8(r4)
/* 803839B4 0037F614  7C 00 18 40 */	cmplw r0, r3
/* 803839B8 0037F618  40 82 00 0C */	bne lbl_803839C4
/* 803839BC 0037F61C  38 00 00 00 */	li r0, 0
/* 803839C0 0037F620  90 04 01 C8 */	stw r0, 0x1c8(r4)
lbl_803839C4:
/* 803839C4 0037F624  80 03 00 00 */	lwz r0, 0(r3)
/* 803839C8 0037F628  2C 00 00 00 */	cmpwi r0, 0
/* 803839CC 0037F62C  4D 82 00 20 */	beqlr 
/* 803839D0 0037F630  38 00 00 00 */	li r0, 0
/* 803839D4 0037F634  90 03 00 00 */	stw r0, 0(r3)
/* 803839D8 0037F638  4E 80 00 20 */	blr 
