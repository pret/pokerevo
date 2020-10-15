.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80249BA0
func_80249BA0:
/* 80249BA0 00245800  38 60 00 01 */	li r3, 1
/* 80249BA4 00245804  4E 80 00 20 */	blr

.global func_80249BA8
func_80249BA8:
/* 80249BA8 00245808  38 A0 00 01 */	li r5, 1
/* 80249BAC 0024580C  38 6D A5 E0 */	addi r3, r13, lbl_8063F8A0-_SDA_BASE_
/* 80249BB0 00245810  38 80 00 04 */	li r4, 4
/* 80249BB4 00245814  38 00 00 00 */	li r0, 0
/* 80249BB8 00245818  98 AD A5 E0 */	stb r5, lbl_8063F8A0-_SDA_BASE_(r13)
/* 80249BBC 0024581C  B0 83 00 02 */	sth r4, 2(r3)
/* 80249BC0 00245820  98 03 00 04 */	stb r0, 4(r3)
/* 80249BC4 00245824  4E 80 00 20 */	blr
