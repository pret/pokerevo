.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFiPFCODE_Combine_Width
VFiPFCODE_Combine_Width:
/* 80305194 00300DF4  54 60 80 1E */	slwi r0, r3, 0x10
/* 80305198 00300DF8  7C 60 22 14 */	add r3, r0, r4
/* 8030519C 00300DFC  4E 80 00 20 */	blr

.global VFiPFCODE_Divide_Width
VFiPFCODE_Divide_Width:
/* 803051A0 00300E00  54 60 84 3E */	srwi r0, r3, 0x10
/* 803051A4 00300E04  B0 04 00 00 */	sth r0, 0(r4)
/* 803051A8 00300E08  B0 65 00 00 */	sth r3, 0(r5)
/* 803051AC 00300E0C  4E 80 00 20 */	blr
