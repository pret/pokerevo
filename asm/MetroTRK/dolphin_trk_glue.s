.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRKLoadContext
TRKLoadContext:
/* 801D9498 001D50F8  80 03 00 00 */	lwz r0, 0(r3)
/* 801D949C 001D50FC  80 23 00 04 */	lwz r1, 4(r3)
/* 801D94A0 001D5100  80 43 00 08 */	lwz r2, 8(r3)
/* 801D94A4 001D5104  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 801D94A8 001D5108  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 801D94AC 001D510C  41 82 00 14 */	beq lbl_801D94C0
/* 801D94B0 001D5110  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 801D94B4 001D5114  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 801D94B8 001D5118  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 801D94BC 001D511C  48 00 00 08 */	b lbl_801D94C4
lbl_801D94C0:
/* 801D94C0 001D5120  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_801D94C4:
/* 801D94C4 001D5124  7C 7F 1B 78 */	mr r31, r3
/* 801D94C8 001D5128  7C 83 23 78 */	mr r3, r4
/* 801D94CC 001D512C  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 801D94D0 001D5130  7C 8F F1 20 */	mtcrf 0xff, r4
/* 801D94D4 001D5134  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 801D94D8 001D5138  7C 88 03 A6 */	mtlr r4
/* 801D94DC 001D513C  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 801D94E0 001D5140  7C 89 03 A6 */	mtctr r4
/* 801D94E4 001D5144  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 801D94E8 001D5148  7C 81 03 A6 */	mtxer r4
/* 801D94EC 001D514C  7C 80 00 A6 */	mfmsr r4
/* 801D94F0 001D5150  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 801D94F4 001D5154  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 801D94F8 001D5158  7C 80 01 24 */	mtmsr r4
/* 801D94FC 001D515C  7C 51 43 A6 */	mtspr 0x111, r2
/* 801D9500 001D5160  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801D9504 001D5164  7C 92 43 A6 */	mtspr 0x112, r4
/* 801D9508 001D5168  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801D950C 001D516C  7C 93 43 A6 */	mtspr 0x113, r4
/* 801D9510 001D5170  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 801D9514 001D5174  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 801D9518 001D5178  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 801D951C 001D517C  4B FF DD 40 */	b TRKInterruptHandler

.global TRKUARTInterruptHandler
TRKUARTInterruptHandler:
/* 801D9520 001D5180  4E 80 00 20 */	blr

.global InitializeProgramEndTrap
InitializeProgramEndTrap:
/* 801D9524 001D5184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9528 001D5188  7C 08 02 A6 */	mflr r0
/* 801D952C 001D518C  3C 80 80 27 */	lis r4, PPCHalt@ha
/* 801D9530 001D5190  3C 60 80 40 */	lis r3, lbl_803FD740@ha
/* 801D9534 001D5194  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9538 001D5198  38 A0 00 04 */	li r5, 4
/* 801D953C 001D519C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9540 001D51A0  3B E4 82 68 */	addi r31, r4, PPCHalt@l
/* 801D9544 001D51A4  38 83 D7 40 */	addi r4, r3, lbl_803FD740@l
/* 801D9548 001D51A8  38 7F 00 04 */	addi r3, r31, 4
/* 801D954C 001D51AC  4B E2 AC 19 */	bl TRK_memcpy
/* 801D9550 001D51B0  38 7F 00 04 */	addi r3, r31, 4
/* 801D9554 001D51B4  38 80 00 04 */	li r4, 4
/* 801D9558 001D51B8  48 09 11 E1 */	bl ICInvalidateRange
/* 801D955C 001D51BC  38 7F 00 04 */	addi r3, r31, 4
/* 801D9560 001D51C0  38 80 00 04 */	li r4, 4
/* 801D9564 001D51C4  48 09 10 F1 */	bl DCFlushRange
/* 801D9568 001D51C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D956C 001D51CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9570 001D51D0  7C 08 03 A6 */	mtlr r0
/* 801D9574 001D51D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9578 001D51D8  4E 80 00 20 */	blr

.global TRK_board_display
TRK_board_display:
/* 801D957C 001D51DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9580 001D51E0  7C 08 02 A6 */	mflr r0
/* 801D9584 001D51E4  3C A0 80 40 */	lis r5, lbl_803FD744@ha
/* 801D9588 001D51E8  7C 64 1B 78 */	mr r4, r3
/* 801D958C 001D51EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9590 001D51F0  38 65 D7 44 */	addi r3, r5, lbl_803FD744@l
/* 801D9594 001D51F4  4C C6 31 82 */	crclr 6
/* 801D9598 001D51F8  4B E2 E5 2D */	bl OSReport
/* 801D959C 001D51FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D95A0 001D5200  7C 08 03 A6 */	mtlr r0
/* 801D95A4 001D5204  38 21 00 10 */	addi r1, r1, 0x10
/* 801D95A8 001D5208  4E 80 00 20 */	blr

.global UnreserveEXI2Port
UnreserveEXI2Port:
/* 801D95AC 001D520C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D95B0 001D5210  7C 08 02 A6 */	mflr r0
/* 801D95B4 001D5214  3C 60 80 42 */	lis r3, lbl_804232A0@ha
/* 801D95B8 001D5218  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D95BC 001D521C  38 63 32 A0 */	addi r3, r3, lbl_804232A0@l
/* 801D95C0 001D5220  81 83 00 20 */	lwz r12, 0x20(r3)
/* 801D95C4 001D5224  7D 89 03 A6 */	mtctr r12
/* 801D95C8 001D5228  4E 80 04 21 */	bctrl
/* 801D95CC 001D522C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D95D0 001D5230  7C 08 03 A6 */	mtlr r0
/* 801D95D4 001D5234  38 21 00 10 */	addi r1, r1, 0x10
/* 801D95D8 001D5238  4E 80 00 20 */	blr

.global ReserveEXI2Port
ReserveEXI2Port:
/* 801D95DC 001D523C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D95E0 001D5240  7C 08 02 A6 */	mflr r0
/* 801D95E4 001D5244  3C 60 80 42 */	lis r3, lbl_804232A0@ha
/* 801D95E8 001D5248  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D95EC 001D524C  38 63 32 A0 */	addi r3, r3, lbl_804232A0@l
/* 801D95F0 001D5250  81 83 00 24 */	lwz r12, 0x24(r3)
/* 801D95F4 001D5254  7D 89 03 A6 */	mtctr r12
/* 801D95F8 001D5258  4E 80 04 21 */	bctrl
/* 801D95FC 001D525C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9600 001D5260  7C 08 03 A6 */	mtlr r0
/* 801D9604 001D5264  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9608 001D5268  4E 80 00 20 */	blr

.global TRKWriteUARTN
TRKWriteUARTN:
/* 801D960C 001D526C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9610 001D5270  7C 08 02 A6 */	mflr r0
/* 801D9614 001D5274  3C A0 80 42 */	lis r5, lbl_804232A0@ha
/* 801D9618 001D5278  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D961C 001D527C  38 A5 32 A0 */	addi r5, r5, lbl_804232A0@l
/* 801D9620 001D5280  81 85 00 14 */	lwz r12, 0x14(r5)
/* 801D9624 001D5284  7D 89 03 A6 */	mtctr r12
/* 801D9628 001D5288  4E 80 04 21 */	bctrl
/* 801D962C 001D528C  7C 03 00 D0 */	neg r0, r3
/* 801D9630 001D5290  7C 00 1B 78 */	or r0, r0, r3
/* 801D9634 001D5294  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 801D9638 001D5298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D963C 001D529C  7C 08 03 A6 */	mtlr r0
/* 801D9640 001D52A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9644 001D52A4  4E 80 00 20 */	blr


.global TRKReadUARTN
TRKReadUARTN:
/* 801D9648 001D52A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D964C 001D52AC  7C 08 02 A6 */	mflr r0
/* 801D9650 001D52B0  3C A0 80 42 */	lis r5, lbl_804232A0@ha
/* 801D9654 001D52B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9658 001D52B8  38 A5 32 A0 */	addi r5, r5, lbl_804232A0@l
/* 801D965C 001D52BC  81 85 00 10 */	lwz r12, 0x10(r5)
/* 801D9660 001D52C0  7D 89 03 A6 */	mtctr r12
/* 801D9664 001D52C4  4E 80 04 21 */	bctrl
/* 801D9668 001D52C8  7C 03 00 D0 */	neg r0, r3
/* 801D966C 001D52CC  7C 00 1B 78 */	or r0, r0, r3
/* 801D9670 001D52D0  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 801D9674 001D52D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9678 001D52D8  7C 08 03 A6 */	mtlr r0
/* 801D967C 001D52DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9680 001D52E0  4E 80 00 20 */	blr

.global TRKPollUART
TRKPollUART:
/* 801D9684 001D52E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9688 001D52E8  7C 08 02 A6 */	mflr r0
/* 801D968C 001D52EC  3C 60 80 42 */	lis r3, lbl_804232A0@ha
/* 801D9690 001D52F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9694 001D52F4  38 63 32 A0 */	addi r3, r3, lbl_804232A0@l
/* 801D9698 001D52F8  81 83 00 0C */	lwz r12, 0xc(r3)
/* 801D969C 001D52FC  7D 89 03 A6 */	mtctr r12
/* 801D96A0 001D5300  4E 80 04 21 */	bctrl
/* 801D96A4 001D5304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D96A8 001D5308  7C 08 03 A6 */	mtlr r0
/* 801D96AC 001D530C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D96B0 001D5310  4E 80 00 20 */	blr

.global EnableEXI2Interrupts
EnableEXI2Interrupts:
/* 801D96B4 001D5314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D96B8 001D5318  7C 08 02 A6 */	mflr r0
/* 801D96BC 001D531C  3C 60 80 49 */	lis r3, lbl_80490D80@ha
/* 801D96C0 001D5320  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D96C4 001D5324  88 03 0D 80 */	lbz r0, lbl_80490D80@l(r3)
/* 801D96C8 001D5328  28 00 00 00 */	cmplwi r0, 0
/* 801D96CC 001D532C  40 82 00 20 */	bne lbl_801D96EC
/* 801D96D0 001D5330  3C 60 80 42 */	lis r3, lbl_804232A0@ha
/* 801D96D4 001D5334  38 63 32 A0 */	addi r3, r3, lbl_804232A0@l
/* 801D96D8 001D5338  81 83 00 04 */	lwz r12, 4(r3)
/* 801D96DC 001D533C  28 0C 00 00 */	cmplwi r12, 0
/* 801D96E0 001D5340  41 82 00 0C */	beq lbl_801D96EC
/* 801D96E4 001D5344  7D 89 03 A6 */	mtctr r12
/* 801D96E8 001D5348  4E 80 04 21 */	bctrl
lbl_801D96EC:
/* 801D96EC 001D534C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D96F0 001D5350  7C 08 03 A6 */	mtlr r0
/* 801D96F4 001D5354  38 21 00 10 */	addi r1, r1, 0x10
/* 801D96F8 001D5358  4E 80 00 20 */	blr

.global TRKInitializeIntDrivenUART
TRKInitializeIntDrivenUART:
/* 801D96FC 001D535C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9700 001D5360  7C 08 02 A6 */	mflr r0
/* 801D9704 001D5364  3C 80 80 1E */	lis r4, TRKEXICallBack@ha
/* 801D9708 001D5368  3C 60 80 42 */	lis r3, lbl_804232A0@ha
/* 801D970C 001D536C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9710 001D5370  38 84 99 20 */	addi r4, r4, TRKEXICallBack@l
/* 801D9714 001D5374  81 83 32 A0 */	lwz r12, lbl_804232A0@l(r3)
/* 801D9718 001D5378  7C C3 33 78 */	mr r3, r6
/* 801D971C 001D537C  7D 89 03 A6 */	mtctr r12
/* 801D9720 001D5380  4E 80 04 21 */	bctrl
/* 801D9724 001D5384  3C 60 80 42 */	lis r3, lbl_804232A0@ha
/* 801D9728 001D5388  38 63 32 A0 */	addi r3, r3, lbl_804232A0@l
/* 801D972C 001D538C  81 83 00 18 */	lwz r12, 0x18(r3)
/* 801D9730 001D5390  7D 89 03 A6 */	mtctr r12
/* 801D9734 001D5394  4E 80 04 21 */	bctrl
/* 801D9738 001D5398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D973C 001D539C  38 60 00 00 */	li r3, 0
/* 801D9740 001D53A0  7C 08 03 A6 */	mtlr r0
/* 801D9744 001D53A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9748 001D53A8  4E 80 00 20 */	blr

.global InitMetroTRKCommTable
InitMetroTRKCommTable:
/* 801D974C 001D53AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9750 001D53B0  7C 08 02 A6 */	mflr r0
/* 801D9754 001D53B4  3C 80 80 40 */	lis r4, lbl_803FD740@ha
/* 801D9758 001D53B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D975C 001D53BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D9760 001D53C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9764 001D53C4  7C 7E 1B 78 */	mr r30, r3
/* 801D9768 001D53C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D976C 001D53CC  3B A4 D7 40 */	addi r29, r4, lbl_803FD740@l
/* 801D9770 001D53D0  7F C4 F3 78 */	mr r4, r30
/* 801D9774 001D53D4  38 7D 00 08 */	addi r3, r29, 8
/* 801D9778 001D53D8  4C C6 31 82 */	crclr 6
/* 801D977C 001D53DC  4B E2 E3 49 */	bl OSReport
/* 801D9780 001D53E0  38 7D 00 20 */	addi r3, r29, 0x20
/* 801D9784 001D53E4  38 80 00 40 */	li r4, 0x40
/* 801D9788 001D53E8  4C C6 31 82 */	crclr 6
/* 801D978C 001D53EC  4B E2 E3 39 */	bl OSReport
/* 801D9790 001D53F0  3C 60 80 49 */	lis r3, lbl_80490D80@ha
/* 801D9794 001D53F4  38 00 00 00 */	li r0, 0
/* 801D9798 001D53F8  2C 1E 00 02 */	cmpwi r30, 2
/* 801D979C 001D53FC  98 03 0D 80 */	stb r0, lbl_80490D80@l(r3)
/* 801D97A0 001D5400  40 82 00 A0 */	bne lbl_801D9840
/* 801D97A4 001D5404  38 7D 00 48 */	addi r3, r29, 0x48
/* 801D97A8 001D5408  4C C6 31 82 */	crclr 6
/* 801D97AC 001D540C  4B E2 E3 19 */	bl OSReport
/* 801D97B0 001D5410  3D 80 80 1E */	lis r12, udp_cc_initialize@ha
/* 801D97B4 001D5414  3D 60 80 42 */	lis r11, lbl_804232A0@ha
/* 801D97B8 001D5418  3B EC 99 E8 */	addi r31, r12, udp_cc_initialize@l
/* 801D97BC 001D541C  3D 40 80 1E */	lis r10, udp_cc_open@ha
/* 801D97C0 001D5420  39 8B 32 A0 */	addi r12, r11, lbl_804232A0@l
/* 801D97C4 001D5424  38 00 00 00 */	li r0, 0
/* 801D97C8 001D5428  39 6A 99 D8 */	addi r11, r10, udp_cc_open@l
/* 801D97CC 001D542C  3D 20 80 1E */	lis r9, udp_cc_close@ha
/* 801D97D0 001D5430  39 49 99 D0 */	addi r10, r9, udp_cc_close@l
/* 801D97D4 001D5434  3D 00 80 1E */	lis r8, udp_cc_read@ha
/* 801D97D8 001D5438  39 28 99 C8 */	addi r9, r8, udp_cc_read@l
/* 801D97DC 001D543C  3C E0 80 1E */	lis r7, udp_cc_write@ha
/* 801D97E0 001D5440  39 07 99 C0 */	addi r8, r7, udp_cc_write@l
/* 801D97E4 001D5444  3C C0 80 1E */	lis r6, udp_cc_shutdown@ha
/* 801D97E8 001D5448  38 E6 99 E0 */	addi r7, r6, udp_cc_shutdown@l
/* 801D97EC 001D544C  3C A0 80 1E */	lis r5, udp_cc_peek@ha
/* 801D97F0 001D5450  38 C5 99 B8 */	addi r6, r5, udp_cc_peek@l
/* 801D97F4 001D5454  3C 80 80 1E */	lis r4, udp_cc_pre_continue@ha
/* 801D97F8 001D5458  38 A4 99 B0 */	addi r5, r4, udp_cc_pre_continue@l
/* 801D97FC 001D545C  3C 60 80 1E */	lis r3, udp_cc_post_stop@ha
/* 801D9800 001D5460  38 83 99 A8 */	addi r4, r3, udp_cc_post_stop@l
/* 801D9804 001D5464  3F C0 80 49 */	lis r30, lbl_80490D80@ha
/* 801D9808 001D5468  3B A0 00 01 */	li r29, 1
/* 801D980C 001D546C  93 EC 00 00 */	stw r31, 0(r12)
/* 801D9810 001D5470  38 60 00 00 */	li r3, 0
/* 801D9814 001D5474  9B BE 0D 80 */	stb r29, lbl_80490D80@l(r30)
/* 801D9818 001D5478  91 6C 00 18 */	stw r11, 0x18(r12)
/* 801D981C 001D547C  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 801D9820 001D5480  91 2C 00 10 */	stw r9, 0x10(r12)
/* 801D9824 001D5484  91 0C 00 14 */	stw r8, 0x14(r12)
/* 801D9828 001D5488  90 EC 00 08 */	stw r7, 8(r12)
/* 801D982C 001D548C  90 CC 00 0C */	stw r6, 0xc(r12)
/* 801D9830 001D5490  90 AC 00 20 */	stw r5, 0x20(r12)
/* 801D9834 001D5494  90 8C 00 24 */	stw r4, 0x24(r12)
/* 801D9838 001D5498  90 0C 00 04 */	stw r0, 4(r12)
/* 801D983C 001D549C  48 00 00 C8 */	b lbl_801D9904
lbl_801D9840:
/* 801D9840 001D54A0  2C 1E 00 01 */	cmpwi r30, 1
/* 801D9844 001D54A4  40 82 00 94 */	bne lbl_801D98D8
/* 801D9848 001D54A8  38 7D 00 60 */	addi r3, r29, 0x60
/* 801D984C 001D54AC  4C C6 31 82 */	crclr 6
/* 801D9850 001D54B0  4B E2 E2 75 */	bl OSReport
/* 801D9854 001D54B4  3F E0 80 1E */	lis r31, gdev_cc_initialize@ha
/* 801D9858 001D54B8  3D 60 80 1E */	lis r11, gdev_cc_open@ha
/* 801D985C 001D54BC  3B FF 9C 28 */	addi r31, r31, gdev_cc_initialize@l
/* 801D9860 001D54C0  3D 80 80 42 */	lis r12, lbl_804232A0@ha
/* 801D9864 001D54C4  3D 40 80 1E */	lis r10, gdev_cc_close@ha
/* 801D9868 001D54C8  3D 20 80 1E */	lis r9, gdev_cc_read@ha
/* 801D986C 001D54CC  3D 00 80 1E */	lis r8, gdev_cc_write@ha
/* 801D9870 001D54D0  3C E0 80 1E */	lis r7, gdev_cc_shutdown@ha
/* 801D9874 001D54D4  3C C0 80 1E */	lis r6, gdev_cc_peek@ha
/* 801D9878 001D54D8  3C A0 80 1E */	lis r5, gdev_cc_pre_continue@ha
/* 801D987C 001D54DC  3C 80 80 1E */	lis r4, gdev_cc_post_stop@ha
/* 801D9880 001D54E0  3C 60 80 1E */	lis r3, gdev_cc_initinterrupts@ha
/* 801D9884 001D54E4  38 03 99 F0 */	addi r0, r3, gdev_cc_initinterrupts@l
/* 801D9888 001D54E8  97 EC 32 A0 */	stwu r31, lbl_804232A0@l(r12)
/* 801D988C 001D54EC  39 6B 9B FC */	addi r11, r11, gdev_cc_open@l
/* 801D9890 001D54F0  39 4A 9B F4 */	addi r10, r10, gdev_cc_close@l
/* 801D9894 001D54F4  39 29 9B 40 */	addi r9, r9, gdev_cc_read@l
/* 801D9898 001D54F8  39 08 9A CC */	addi r8, r8, gdev_cc_write@l
/* 801D989C 001D54FC  38 E7 9C 20 */	addi r7, r7, gdev_cc_shutdown@l
/* 801D98A0 001D5500  38 C6 9A 14 */	addi r6, r6, gdev_cc_peek@l
/* 801D98A4 001D5504  38 A5 9A A8 */	addi r5, r5, gdev_cc_pre_continue@l
/* 801D98A8 001D5508  38 84 9A 84 */	addi r4, r4, gdev_cc_post_stop@l
/* 801D98AC 001D550C  91 6C 00 18 */	stw r11, 0x18(r12)
/* 801D98B0 001D5510  38 60 00 00 */	li r3, 0
/* 801D98B4 001D5514  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 801D98B8 001D5518  91 2C 00 10 */	stw r9, 0x10(r12)
/* 801D98BC 001D551C  91 0C 00 14 */	stw r8, 0x14(r12)
/* 801D98C0 001D5520  90 EC 00 08 */	stw r7, 8(r12)
/* 801D98C4 001D5524  90 CC 00 0C */	stw r6, 0xc(r12)
/* 801D98C8 001D5528  90 AC 00 20 */	stw r5, 0x20(r12)
/* 801D98CC 001D552C  90 8C 00 24 */	stw r4, 0x24(r12)
/* 801D98D0 001D5530  90 0C 00 04 */	stw r0, 4(r12)
/* 801D98D4 001D5534  48 00 00 30 */	b lbl_801D9904
lbl_801D98D8:
/* 801D98D8 001D5538  7F C4 F3 78 */	mr r4, r30
/* 801D98DC 001D553C  38 7D 00 84 */	addi r3, r29, 0x84
/* 801D98E0 001D5540  4C C6 31 82 */	crclr 6
/* 801D98E4 001D5544  4B E2 E1 E1 */	bl OSReport
/* 801D98E8 001D5548  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 801D98EC 001D554C  4C C6 31 82 */	crclr 6
/* 801D98F0 001D5550  4B E2 E1 D5 */	bl OSReport
/* 801D98F4 001D5554  38 7D 00 E0 */	addi r3, r29, 0xe0
/* 801D98F8 001D5558  4C C6 31 82 */	crclr 6
/* 801D98FC 001D555C  4B E2 E1 C9 */	bl OSReport
/* 801D9900 001D5560  38 60 00 01 */	li r3, 1
lbl_801D9904:
/* 801D9904 001D5564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9908 001D5568  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D990C 001D556C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D9910 001D5570  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D9914 001D5574  7C 08 03 A6 */	mtlr r0
/* 801D9918 001D5578  38 21 00 20 */	addi r1, r1, 0x20
/* 801D991C 001D557C  4E 80 00 20 */	blr

.global TRKEXICallBack
TRKEXICallBack:
/* 801D9920 001D5580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9924 001D5584  7C 08 02 A6 */	mflr r0
/* 801D9928 001D5588  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D992C 001D558C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9930 001D5590  7C 9F 23 78 */	mr r31, r4
/* 801D9934 001D5594  48 09 7A 4D */	bl OSEnableScheduler
/* 801D9938 001D5598  7F E3 FB 78 */	mr r3, r31
/* 801D993C 001D559C  38 80 05 00 */	li r4, 0x500
/* 801D9940 001D55A0  4B FF FB 59 */	bl TRKLoadContext
/* 801D9944 001D55A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9948 001D55A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D994C 001D55AC  7C 08 03 A6 */	mtlr r0
/* 801D9950 001D55B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9954 001D55B4  4E 80 00 20 */	blr
