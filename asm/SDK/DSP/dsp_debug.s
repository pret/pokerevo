.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __DSP_debug_printf
__DSP_debug_printf:
/* 8029B034 00296C94  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8029B038 00296C98  40 86 00 24 */	bne cr1, lbl_8029B05C
/* 8029B03C 00296C9C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8029B040 00296CA0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8029B044 00296CA4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8029B048 00296CA8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8029B04C 00296CAC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8029B050 00296CB0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8029B054 00296CB4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8029B058 00296CB8  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8029B05C:
/* 8029B05C 00296CBC  90 61 00 08 */	stw r3, 8(r1)
/* 8029B060 00296CC0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029B064 00296CC4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8029B068 00296CC8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8029B06C 00296CCC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8029B070 00296CD0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8029B074 00296CD4  91 21 00 20 */	stw r9, 0x20(r1)
/* 8029B078 00296CD8  91 41 00 24 */	stw r10, 0x24(r1)
/* 8029B07C 00296CDC  38 21 00 70 */	addi r1, r1, 0x70
/* 8029B080 00296CE0  4E 80 00 20 */	blr
