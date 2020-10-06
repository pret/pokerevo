.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global hidd_proc_repage_timeout
hidd_proc_repage_timeout:
/* 802D262C 002CE28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2630 002CE290  7C 08 02 A6 */	mflr r0
/* 802D2634 002CE294  3C 60 80 57 */	lis r3, lbl_8056B6F0@ha
/* 802D2638 002CE298  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D263C 002CE29C  38 63 B6 F0 */	addi r3, r3, lbl_8056B6F0@l
/* 802D2640 002CE2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2644 002CE2A4  88 03 01 41 */	lbz r0, 0x141(r3)
/* 802D2648 002CE2A8  28 00 00 05 */	cmplwi r0, 5
/* 802D264C 002CE2AC  41 80 00 18 */	blt lbl_802D2664
/* 802D2650 002CE2B0  3C 60 00 1E */	lis r3, 0x001E0004@ha
/* 802D2654 002CE2B4  3C 80 80 44 */	lis r4, lbl_80442720@ha
/* 802D2658 002CE2B8  38 63 00 04 */	addi r3, r3, 0x001E0004@l
/* 802D265C 002CE2BC  38 84 27 20 */	addi r4, r4, lbl_80442720@l
/* 802D2660 002CE2C0  4B FE A8 B1 */	bl LogMsg_0
lbl_802D2664:
/* 802D2664 002CE2C4  3F E0 80 57 */	lis r31, lbl_8056B6F0@ha
/* 802D2668 002CE2C8  3B FF B6 F0 */	addi r31, r31, lbl_8056B6F0@l
/* 802D266C 002CE2CC  88 7F 00 09 */	lbz r3, 9(r31)
/* 802D2670 002CE2D0  38 03 00 01 */	addi r0, r3, 1
/* 802D2674 002CE2D4  98 1F 00 09 */	stb r0, 9(r31)
/* 802D2678 002CE2D8  4B FF FE F5 */	bl hidd_conn_initiate
/* 802D267C 002CE2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D2680 002CE2E0  41 82 00 48 */	beq lbl_802D26C8
/* 802D2684 002CE2E4  88 1F 00 09 */	lbz r0, 9(r31)
/* 802D2688 002CE2E8  28 00 00 0F */	cmplwi r0, 0xf
/* 802D268C 002CE2EC  40 81 00 28 */	ble lbl_802D26B4
/* 802D2690 002CE2F0  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802D2694 002CE2F4  38 00 00 00 */	li r0, 0
/* 802D2698 002CE2F8  98 1F 00 08 */	stb r0, 8(r31)
/* 802D269C 002CE2FC  38 60 00 01 */	li r3, 1
/* 802D26A0 002CE300  38 80 00 00 */	li r4, 0
/* 802D26A4 002CE304  38 A0 00 00 */	li r5, 0
/* 802D26A8 002CE308  7D 89 03 A6 */	mtctr r12
/* 802D26AC 002CE30C  4E 80 04 21 */	bctrl
/* 802D26B0 002CE310  48 00 00 30 */	b lbl_802D26E0
lbl_802D26B4:
/* 802D26B4 002CE314  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D26B8 002CE318  38 80 00 16 */	li r4, 0x16
/* 802D26BC 002CE31C  38 A0 00 01 */	li r5, 1
/* 802D26C0 002CE320  4B FE AE 1D */	bl btu_start_timer
/* 802D26C4 002CE324  48 00 00 1C */	b lbl_802D26E0
lbl_802D26C8:
/* 802D26C8 002CE328  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802D26CC 002CE32C  38 60 00 02 */	li r3, 2
/* 802D26D0 002CE330  88 9F 00 09 */	lbz r4, 9(r31)
/* 802D26D4 002CE334  38 A0 00 00 */	li r5, 0
/* 802D26D8 002CE338  7D 89 03 A6 */	mtctr r12
/* 802D26DC 002CE33C  4E 80 04 21 */	bctrl
lbl_802D26E0:
/* 802D26E0 002CE340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D26E4 002CE344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D26E8 002CE348  7C 08 03 A6 */	mtlr r0
/* 802D26EC 002CE34C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D26F0 002CE350  4E 80 00 20 */	blr