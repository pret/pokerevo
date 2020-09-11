.include "macros.inc"

.section .dtors, "wa"  # 0x803E22A0 - 0x803E22C0

	.global lbl_803E22A0
lbl_803E22A0:
	.4byte func_801C6C60, func_801C77FC

    .balign 0x20, 0
