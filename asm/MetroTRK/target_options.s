.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GetUseSerialIO
GetUseSerialIO:
/* 801D998C 001D55EC  3C 60 80 49 */	lis r3, lbl_80490D88@ha
/* 801D9990 001D55F0  38 63 0D 88 */	addi r3, r3, lbl_80490D88@l
/* 801D9994 001D55F4  88 63 00 00 */	lbz r3, 0(r3)
/* 801D9998 001D55F8  4E 80 00 20 */	blr

.global SetUseSerialIO
SetUseSerialIO:
/* 801D999C 001D55FC  3C 80 80 49 */	lis r4, lbl_80490D88@ha
/* 801D99A0 001D5600  98 64 0D 88 */	stb r3, lbl_80490D88@l(r4)
/* 801D99A4 001D5604  4E 80 00 20 */	blr
