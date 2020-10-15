.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801E07E8
func_801E07E8:
/* 801E07E8 001DC448  38 60 00 00 */	li r3, 0
/* 801E07EC 001DC44C  4E 80 00 20 */	blr

.global func_801E07F0
func_801E07F0:
/* 801E07F0 001DC450  38 A0 00 01 */	li r5, 1
/* 801E07F4 001DC454  38 6D A0 A8 */	addi r3, r13, lbl_8063F368-_SDA_BASE_
/* 801E07F8 001DC458  38 80 00 04 */	li r4, 4
/* 801E07FC 001DC45C  38 00 00 00 */	li r0, 0
/* 801E0800 001DC460  98 AD A0 A8 */	stb r5, lbl_8063F368-_SDA_BASE_(r13)
/* 801E0804 001DC464  B0 83 00 02 */	sth r4, 2(r3)
/* 801E0808 001DC468  98 03 00 04 */	stb r0, 4(r3)
/* 801E080C 001DC46C  4E 80 00 20 */	blr
