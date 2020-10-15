.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8025B6AC
func_8025B6AC:
/* 8025B6AC 0025730C  4E 80 00 20 */	blr

.global func_8025B6B0
func_8025B6B0:
/* 8025B6B0 00257310  4E 80 00 20 */	blr

.global func_8025B6B4
func_8025B6B4:
/* 8025B6B4 00257314  4E 80 00 20 */	blr

.global func_8025B6B8
func_8025B6B8:
/* 8025B6B8 00257318  C0 02 9F E8 */	lfs f0, lbl_806425E8-_SDA2_BASE_(r2)
/* 8025B6BC 0025731C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8025B6C0 00257320  D0 04 00 00 */	stfs f0, 0(r4)
/* 8025B6C4 00257324  4E 80 00 20 */	blr

.global func_8025B6C8
func_8025B6C8:
/* 8025B6C8 00257328  38 A0 00 01 */	li r5, 1
/* 8025B6CC 0025732C  38 6D A6 90 */	addi r3, r13, lbl_8063F950-_SDA_BASE_
/* 8025B6D0 00257330  38 80 00 04 */	li r4, 4
/* 8025B6D4 00257334  38 00 00 00 */	li r0, 0
/* 8025B6D8 00257338  98 AD A6 90 */	stb r5, lbl_8063F950-_SDA_BASE_(r13)
/* 8025B6DC 0025733C  B0 83 00 02 */	sth r4, 2(r3)
/* 8025B6E0 00257340  98 03 00 04 */	stb r0, 4(r3)
/* 8025B6E4 00257344  4E 80 00 20 */	blr
