.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q34nw4r3snd15Sound3DListenerFv
__ct__Q34nw4r3snd15Sound3DListenerFv:
/* 80376568 003721C8  C0 02 A6 F8 */	lfs f0, lbl_80642CF8-_SDA2_BASE_(r2)
/* 8037656C 003721CC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80376570 003721D0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80376574 003721D4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80376578 003721D8  4E 80 00 20 */	blr
