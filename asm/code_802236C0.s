.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_802236C0
func_802236C0:
/* 802236C0 0021F320  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802236C4 0021F324  7C 08 02 A6 */	mflr r0
/* 802236C8 0021F328  90 01 00 74 */	stw r0, 0x74(r1)
/* 802236CC 0021F32C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802236D0 0021F330  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 802236D4 0021F334  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802236D8 0021F338  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 802236DC 0021F33C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802236E0 0021F340  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 802236E4 0021F344  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 802236E8 0021F348  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 802236EC 0021F34C  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 802236F0 0021F350  F3 61 00 28 */	psq_st f27, 40(r1), 0, qr0
/* 802236F4 0021F354  C0 22 9C 28 */	lfs f1, lbl_80642228-_SDA2_BASE_(r2)
/* 802236F8 0021F358  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802236FC 0021F35C  7C 7F 1B 78 */	mr r31, r3
/* 80223700 0021F360  7C 83 23 78 */	mr r3, r4
/* 80223704 0021F364  38 81 00 08 */	addi r4, r1, 8
/* 80223708 0021F368  48 05 96 05 */	bl PSVECScale
/* 8022370C 0021F36C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80223710 0021F370  4B FB 09 69 */	bl cos
/* 80223714 0021F374  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80223718 0021F378  FF E0 08 18 */	frsp f31, f1
/* 8022371C 0021F37C  FC 20 00 90 */	fmr f1, f0
/* 80223720 0021F380  4B FB 09 59 */	bl cos
/* 80223724 0021F384  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80223728 0021F388  FF C0 08 18 */	frsp f30, f1
/* 8022372C 0021F38C  FC 20 00 90 */	fmr f1, f0
/* 80223730 0021F390  4B FB 09 49 */	bl cos
/* 80223734 0021F394  FF A0 08 18 */	frsp f29, f1
/* 80223738 0021F398  C0 21 00 08 */	lfs f1, 8(r1)
/* 8022373C 0021F39C  4B FB 0D 49 */	bl sin
/* 80223740 0021F3A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80223744 0021F3A4  FF 80 08 18 */	frsp f28, f1
/* 80223748 0021F3A8  FC 20 00 90 */	fmr f1, f0
/* 8022374C 0021F3AC  4B FB 0D 39 */	bl sin
/* 80223750 0021F3B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80223754 0021F3B4  FF 60 08 18 */	frsp f27, f1
/* 80223758 0021F3B8  FC 20 00 90 */	fmr f1, f0
/* 8022375C 0021F3BC  4B FB 0D 29 */	bl sin
/* 80223760 0021F3C0  FC 00 08 18 */	frsp f0, f1
/* 80223764 0021F3C4  EC 3E 07 72 */	fmuls f1, f30, f29
/* 80223768 0021F3C8  EC FB 07 72 */	fmuls f7, f27, f29
/* 8022376C 0021F3CC  EC 9B 00 32 */	fmuls f4, f27, f0
/* 80223770 0021F3D0  EC DE 00 32 */	fmuls f6, f30, f0
/* 80223774 0021F3D4  EC 7F 00 72 */	fmuls f3, f31, f1
/* 80223778 0021F3D8  EC 5C 01 32 */	fmuls f2, f28, f4
/* 8022377C 0021F3DC  EC 3C 00 72 */	fmuls f1, f28, f1
/* 80223780 0021F3E0  EC 1F 01 32 */	fmuls f0, f31, f4
/* 80223784 0021F3E4  EC A3 10 2A */	fadds f5, f3, f2
/* 80223788 0021F3E8  EC 7F 01 F2 */	fmuls f3, f31, f7
/* 8022378C 0021F3EC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80223790 0021F3F0  EC 5C 01 B2 */	fmuls f2, f28, f6
/* 80223794 0021F3F4  D0 BF 00 0C */	stfs f5, 0xc(r31)
/* 80223798 0021F3F8  EC 3F 01 B2 */	fmuls f1, f31, f6
/* 8022379C 0021F3FC  EC 1C 01 F2 */	fmuls f0, f28, f7
/* 802237A0 0021F400  D0 9F 00 00 */	stfs f4, 0(r31)
/* 802237A4 0021F404  EC 43 10 2A */	fadds f2, f3, f2
/* 802237A8 0021F408  EC 01 00 28 */	fsubs f0, f1, f0
/* 802237AC 0021F40C  D0 5F 00 04 */	stfs f2, 4(r31)
/* 802237B0 0021F410  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802237B4 0021F414  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 802237B8 0021F418  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802237BC 0021F41C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 802237C0 0021F420  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 802237C4 0021F424  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 802237C8 0021F428  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 802237CC 0021F42C  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 802237D0 0021F430  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 802237D4 0021F434  E3 61 00 28 */	psq_l f27, 40(r1), 0, qr0
/* 802237D8 0021F438  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 802237DC 0021F43C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802237E0 0021F440  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802237E4 0021F444  7C 08 03 A6 */	mtlr r0
/* 802237E8 0021F448  38 21 00 70 */	addi r1, r1, 0x70
/* 802237EC 0021F44C  4E 80 00 20 */	blr

.global func_802237F0
func_802237F0:
/* 802237F0 0021F450  3C 80 80 49 */	lis r4, lbl_80493310@ha
/* 802237F4 0021F454  C0 22 9C 2C */	lfs f1, lbl_8064222C-_SDA2_BASE_(r2)
/* 802237F8 0021F458  38 64 33 10 */	addi r3, r4, lbl_80493310@l
/* 802237FC 0021F45C  C0 02 9C 30 */	lfs f0, lbl_80642230-_SDA2_BASE_(r2)
/* 80223800 0021F460  38 E0 00 01 */	li r7, 1
/* 80223804 0021F464  38 AD A2 D0 */	addi r5, r13, lbl_8063F590-_SDA_BASE_
/* 80223808 0021F468  38 C0 00 04 */	li r6, 4
/* 8022380C 0021F46C  38 00 00 00 */	li r0, 0
/* 80223810 0021F470  98 ED A2 D0 */	stb r7, lbl_8063F590-_SDA_BASE_(r13)
/* 80223814 0021F474  B0 C5 00 02 */	sth r6, 2(r5)
/* 80223818 0021F478  98 05 00 04 */	stb r0, 4(r5)
/* 8022381C 0021F47C  D0 24 33 10 */	stfs f1, 0x3310(r4)
/* 80223820 0021F480  D0 23 00 04 */	stfs f1, 4(r3)
/* 80223824 0021F484  D0 23 00 08 */	stfs f1, 8(r3)
/* 80223828 0021F488  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8022382C 0021F48C  4E 80 00 20 */	blr
