.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GAP_Init
GAP_Init:
/* 802CEC30 002CA890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEC34 002CA894  7C 08 02 A6 */	mflr r0
/* 802CEC38 002CA898  38 80 00 00 */	li r4, 0
/* 802CEC3C 002CA89C  38 A0 03 AC */	li r5, 0x3ac
/* 802CEC40 002CA8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEC44 002CA8A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CEC48 002CA8A8  3F E0 80 57 */	lis r31, lbl_8056B340@ha
/* 802CEC4C 002CA8AC  38 7F B3 40 */	addi r3, r31, lbl_8056B340@l
/* 802CEC50 002CA8B0  4B D3 54 B5 */	bl memset
/* 802CEC54 002CA8B4  3C A0 80 2D */	lis r5, gap_btm_cback0@ha
/* 802CEC58 002CA8B8  3C 60 80 2D */	lis r3, gap_btm_cback1@ha
/* 802CEC5C 002CA8BC  38 A5 F9 A4 */	addi r5, r5, gap_btm_cback0@l
/* 802CEC60 002CA8C0  38 9F B3 40 */	addi r4, r31, -19648
/* 802CEC64 002CA8C4  38 63 F9 B0 */	addi r3, r3, gap_btm_cback1@l
/* 802CEC68 002CA8C8  38 00 00 05 */	li r0, 5
/* 802CEC6C 002CA8CC  90 A4 00 20 */	stw r5, 0x20(r4)
/* 802CEC70 002CA8D0  90 64 00 24 */	stw r3, 0x24(r4)
/* 802CEC74 002CA8D4  98 04 00 28 */	stb r0, 0x28(r4)
/* 802CEC78 002CA8D8  48 00 00 19 */	bl gap_conn_init
/* 802CEC7C 002CA8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEC80 002CA8E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CEC84 002CA8E4  7C 08 03 A6 */	mtlr r0
/* 802CEC88 002CA8E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEC8C 002CA8EC  4E 80 00 20 */	blr
