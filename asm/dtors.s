.include "macros.inc"

.section .dtors, "wa"  # 0x803E22A0 - 0x803E22C0

	.global lbl_803E22A0
lbl_803E22A0:
	.4byte __destroy_global_chain_tmp, __fini_cpp_exceptions_tmp

    .balign 0x20, 0
