.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8011C954
func_8011C954:
/* 8011C954 001185B4  38 A0 00 01 */	li r5, 1
/* 8011C958 001185B8  38 6D 9C B0 */	addi r3, r13, lbl_8063EF70-_SDA_BASE_
/* 8011C95C 001185BC  38 80 00 04 */	li r4, 4
/* 8011C960 001185C0  38 00 00 00 */	li r0, 0
/* 8011C964 001185C4  98 AD 9C B0 */	stb r5, lbl_8063EF70-_SDA_BASE_(r13)
/* 8011C968 001185C8  B0 83 00 02 */	sth r4, 2(r3)
/* 8011C96C 001185CC  98 03 00 04 */	stb r0, 4(r3)
/* 8011C970 001185D0  4E 80 00 20 */	blr
