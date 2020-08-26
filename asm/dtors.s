.include "macros.inc"

.section .dtors, "wa"  # 0x803E22A0 - 0x803E22C0

.global lbl_803E22A0
lbl_803E22A0:
	.incbin "baserom.dol", 0x3DE3A0, 0x20
