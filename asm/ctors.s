.include "macros.inc"

.section .ctors, "wa"  # 0x803E1E60 - 0x803E22A0

.global lbl_803E1E60
lbl_803E1E60:
	.4byte func_801C77C0, func_8000746C, func_80007920, func_800097B8
	.4byte func_8000A7A4, func_8000AAA4, func_8000AD5C, func_80024900
	.incbin "baserom.dol", 0x3DDF80, 0x420
