.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80223694
func_80223694:
/* 80223694 0021F2F4  48 05 94 10 */	b C_MTXFrustum

.global func_80223698
func_80223698:
/* 80223698 0021F2F8  48 05 95 94 */	b C_MTXOrtho

.global func_8022369C
func_8022369C:
/* 8022369C 0021F2FC  48 05 94 A4 */	b C_MTXPerspective

.global func_802236A0
func_802236A0:
/* 802236A0 0021F300  38 A0 00 01 */	li r5, 1
/* 802236A4 0021F304  38 6D A2 C8 */	addi r3, r13, lbl_8063F588-_SDA_BASE_
/* 802236A8 0021F308  38 80 00 04 */	li r4, 4
/* 802236AC 0021F30C  38 00 00 00 */	li r0, 0
/* 802236B0 0021F310  98 AD A2 C8 */	stb r5, lbl_8063F588-_SDA_BASE_(r13)
/* 802236B4 0021F314  B0 83 00 02 */	sth r4, 2(r3)
/* 802236B8 0021F318  98 03 00 04 */	stb r0, 4(r3)
/* 802236BC 0021F31C  4E 80 00 20 */	blr
