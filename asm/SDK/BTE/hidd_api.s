.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global HID_DevInit
HID_DevInit:
/* 802D2504 002CE164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2508 002CE168  7C 08 02 A6 */	mflr r0
/* 802D250C 002CE16C  38 80 00 00 */	li r4, 0
/* 802D2510 002CE170  38 A0 01 44 */	li r5, 0x144
/* 802D2514 002CE174  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2518 002CE178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D251C 002CE17C  3F E0 80 57 */	lis r31, lbl_8056B6F0@ha
/* 802D2520 002CE180  38 7F B6 F0 */	addi r3, r31, lbl_8056B6F0@l
/* 802D2524 002CE184  4B D3 1B E1 */	bl memset
/* 802D2528 002CE188  3C 60 80 2D */	lis r3, hidd_proc_repage_timeout@ha
/* 802D252C 002CE18C  38 BF B6 F0 */	addi r5, r31, -18704
/* 802D2530 002CE190  38 C0 00 01 */	li r6, 1
/* 802D2534 002CE194  38 80 00 40 */	li r4, 0x40
/* 802D2538 002CE198  38 63 26 2C */	addi r3, r3, hidd_proc_repage_timeout@l
/* 802D253C 002CE19C  38 00 00 00 */	li r0, 0
/* 802D2540 002CE1A0  98 C5 00 CA */	stb r6, 0xca(r5)
/* 802D2544 002CE1A4  B0 85 00 CC */	sth r4, 0xcc(r5)
/* 802D2548 002CE1A8  98 C5 01 06 */	stb r6, 0x106(r5)
/* 802D254C 002CE1AC  B0 85 01 08 */	sth r4, 0x108(r5)
/* 802D2550 002CE1B0  90 65 00 2C */	stw r3, 0x2c(r5)
/* 802D2554 002CE1B4  98 05 01 41 */	stb r0, 0x141(r5)
/* 802D2558 002CE1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D255C 002CE1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2560 002CE1C0  7C 08 03 A6 */	mtlr r0
/* 802D2564 002CE1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2568 002CE1C8  4E 80 00 20 */	blr
