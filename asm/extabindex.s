.include "macros.inc"

.section extabindex_, "wa"  # 0x800066C0 - 0x80006980

	.incbin "baserom.dol", 0x3DDCA0, 0x288
.global lbl_80006948
lbl_80006948:
	.incbin "baserom.dol", 0x3DDF28, 0x38
