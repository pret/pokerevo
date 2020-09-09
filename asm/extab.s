.include "macros.inc"

.section extab_, "wa"  # 0x800064E0 - 0x800066C0

	.global lbl_800064E0
lbl_800064E0:
	.incbin "baserom.dol", 0x3DDAC0, 0x1E0
