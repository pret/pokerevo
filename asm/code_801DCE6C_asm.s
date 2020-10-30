.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801DD5A8
func_801DD5A8:
/* 801DD5A8 001D9208  38 A0 00 01 */	li r5, 1
/* 801DD5AC 001D920C  38 6D A0 80 */	addi r3, r13, lbl_8063F340-_SDA_BASE_
/* 801DD5B0 001D9210  38 80 00 04 */	li r4, 4
/* 801DD5B4 001D9214  38 00 00 00 */	li r0, 0
/* 801DD5B8 001D9218  98 AD A0 80 */	stb r5, lbl_8063F340-_SDA_BASE_(r13)
/* 801DD5BC 001D921C  B0 83 00 02 */	sth r4, 2(r3)
/* 801DD5C0 001D9220  98 03 00 04 */	stb r0, 4(r3)
/* 801DD5C4 001D9224  4E 80 00 20 */	blr
