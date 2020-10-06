.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global btu_init_core
btu_init_core:
/* 802CEAD8 002CA738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEADC 002CA73C  7C 08 02 A6 */	mflr r0
/* 802CEAE0 002CA740  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEAE4 002CA744  4B FF A2 AD */	bl btm_init
/* 802CEAE8 002CA748  48 00 9F 7D */	bl func_802D8A64
/* 802CEAEC 002CA74C  48 01 60 A9 */	bl func_802E4B94
/* 802CEAF0 002CA750  4B FF 86 D5 */	bl btm_discovery_db_init
/* 802CEAF4 002CA754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEAF8 002CA758  7C 08 03 A6 */	mtlr r0
/* 802CEAFC 002CA75C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEB00 002CA760  4E 80 00 20 */	blr

.global BTE_Init
BTE_Init:
/* 802CEB04 002CA764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEB08 002CA768  7C 08 02 A6 */	mflr r0
/* 802CEB0C 002CA76C  38 80 00 00 */	li r4, 0
/* 802CEB10 002CA770  38 A0 00 84 */	li r5, 0x84
/* 802CEB14 002CA774  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEB18 002CA778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CEB1C 002CA77C  3F E0 80 57 */	lis r31, lbl_80568650@ha
/* 802CEB20 002CA780  38 7F 86 50 */	addi r3, r31, lbl_80568650@l
/* 802CEB24 002CA784  4B D3 55 E1 */	bl memset
/* 802CEB28 002CA788  38 7F 86 50 */	addi r3, r31, -31152
/* 802CEB2C 002CA78C  38 80 02 A4 */	li r4, 0x2a4
/* 802CEB30 002CA790  38 00 00 01 */	li r0, 1
/* 802CEB34 002CA794  B0 83 00 7E */	sth r4, 0x7e(r3)
/* 802CEB38 002CA798  B0 03 00 80 */	sth r0, 0x80(r3)
/* 802CEB3C 002CA79C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CEB40 002CA7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEB44 002CA7A4  7C 08 03 A6 */	mtlr r0
/* 802CEB48 002CA7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEB4C 002CA7AC  4E 80 00 20 */	blr
