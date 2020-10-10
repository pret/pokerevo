.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFiPFFATFS_initializeFATFS
VFiPFFATFS_initializeFATFS:
/* 80312810 0030E470  48 00 69 D0 */	b lbl_803191E0
