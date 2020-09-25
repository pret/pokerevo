.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DetachSound__Q34nw4r3snd14SeqSoundHandleFv
DetachSound__Q34nw4r3snd14SeqSoundHandleFv:
/* 8037536C 00370FCC  80 83 00 00 */	lwz r4, 0(r3)
/* 80375370 00370FD0  2C 04 00 00 */	cmpwi r4, 0
/* 80375374 00370FD4  41 82 00 18 */	beq lbl_8037538C
/* 80375378 00370FD8  80 04 02 0C */	lwz r0, 0x20c(r4)
/* 8037537C 00370FDC  7C 00 18 40 */	cmplw r0, r3
/* 80375380 00370FE0  40 82 00 0C */	bne lbl_8037538C
/* 80375384 00370FE4  38 00 00 00 */	li r0, 0
/* 80375388 00370FE8  90 04 02 0C */	stw r0, 0x20c(r4)
lbl_8037538C:
/* 8037538C 00370FEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80375390 00370FF0  2C 00 00 00 */	cmpwi r0, 0
/* 80375394 00370FF4  4D 82 00 20 */	beqlr
/* 80375398 00370FF8  38 00 00 00 */	li r0, 0
/* 8037539C 00370FFC  90 03 00 00 */	stw r0, 0(r3)
/* 803753A0 00371000  4E 80 00 20 */	blr
