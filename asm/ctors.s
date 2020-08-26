.include "macros.inc"

.section .ctors, "wa"  # 0x803E1E60 - 0x803E22A0

.global lbl_803E1E60
lbl_803E1E60:
	.incbin "baserom.dol", 0x3DDF60, 0x440
