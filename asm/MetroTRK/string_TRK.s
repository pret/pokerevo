.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRK_strlen
TRK_strlen:
/* 801D71F4 001D2E54  38 83 FF FF */	addi r4, r3, -1
/* 801D71F8 001D2E58  38 60 FF FF */	li r3, -1
lbl_801D71FC:
/* 801D71FC 001D2E5C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 801D7200 001D2E60  38 63 00 01 */	addi r3, r3, 1
/* 801D7204 001D2E64  28 00 00 00 */	cmplwi r0, 0
/* 801D7208 001D2E68  40 82 FF F4 */	bne lbl_801D71FC
/* 801D720C 001D2E6C  4E 80 00 20 */	blr
