.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRK_flush_cache
TRK_flush_cache:
/* 801D7104 001D2D64  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 801D7108 001D2D68  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 801D710C 001D2D6C  7C A5 18 38 */	and r5, r5, r3
/* 801D7110 001D2D70  7C 65 18 50 */	subf r3, r5, r3
/* 801D7114 001D2D74  7C 84 1A 14 */	add r4, r4, r3
lbl_801D7118:
/* 801D7118 001D2D78  7C 00 28 6C */	dcbst 0, r5
/* 801D711C 001D2D7C  7C 00 28 AC */	dcbf 0, r5
/* 801D7120 001D2D80  7C 00 04 AC */	sync 0
/* 801D7124 001D2D84  7C 00 2F AC */	icbi 0, r5
/* 801D7128 001D2D88  30 A5 00 08 */	addic r5, r5, 8
/* 801D712C 001D2D8C  34 84 FF F8 */	addic. r4, r4, -8
/* 801D7130 001D2D90  40 80 FF E8 */	bge lbl_801D7118
/* 801D7134 001D2D94  4C 00 01 2C */	isync
/* 801D7138 001D2D98  4E 80 00 20 */	blr
