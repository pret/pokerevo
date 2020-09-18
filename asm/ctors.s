.include "macros.inc"

.section .ctors, "wa"  # 0x803E1E60 - 0x803E22A0

.global lbl_803E1E60
lbl_803E1E60:
	.4byte __init_cpp_exceptions_tmp, func_8000746C, func_80007920, func_800097B8
	.4byte func_8000A7A4, func_8000AAA4, func_8000AD5C, func_80024900
	.4byte func_80025370, func_80028490, func_8002A8F0, func_8002ABC8
	.4byte func_8002BB24, func_8002CAE0, func_8002DE0C, func_80030114
	.incbin "baserom.dol", 0x3DDFA0, 0x400
