.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801E4360
func_801E4360:
/* 801E4360 001DFFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E4364 001DFFC4  7C 08 02 A6 */	mflr r0
/* 801E4368 001DFFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E436C 001DFFCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E4370 001DFFD0  7C BF 2B 78 */	mr r31, r5
/* 801E4374 001DFFD4  93 C1 00 08 */	stw r30, 8(r1)
/* 801E4378 001DFFD8  7C 7E 1B 78 */	mr r30, r3
/* 801E437C 001DFFDC  48 00 D8 4D */	bl __ct__6GSnullFPvP11gUnkClass10
/* 801E4380 001DFFE0  C0 22 96 B0 */	lfs f1, lbl_80641CB0-_SDA2_BASE_(r2)
/* 801E4384 001DFFE4  3C 60 80 42 */	lis r3, lbl_80423500@ha
/* 801E4388 001DFFE8  C0 02 96 B4 */	lfs f0, lbl_80641CB4-_SDA2_BASE_(r2)
/* 801E438C 001DFFEC  38 63 35 00 */	addi r3, r3, lbl_80423500@l
/* 801E4390 001DFFF0  38 00 00 00 */	li r0, 0
/* 801E4394 001DFFF4  90 7E 01 00 */	stw r3, 0x100(r30)
/* 801E4398 001DFFF8  38 7E 01 0C */	addi r3, r30, 0x10c
/* 801E439C 001DFFFC  90 1E 01 04 */	stw r0, 0x104(r30)
/* 801E43A0 001E0000  93 FE 01 08 */	stw r31, 0x108(r30)
/* 801E43A4 001E0004  D0 3E 01 6C */	stfs f1, 0x16c(r30)
/* 801E43A8 001E0008  D0 3E 01 70 */	stfs f1, 0x170(r30)
/* 801E43AC 001E000C  D0 3E 01 74 */	stfs f1, 0x174(r30)
/* 801E43B0 001E0010  D0 1E 01 78 */	stfs f0, 0x178(r30)
/* 801E43B4 001E0014  D0 3E 01 7C */	stfs f1, 0x17c(r30)
/* 801E43B8 001E0018  D0 3E 01 80 */	stfs f1, 0x180(r30)
/* 801E43BC 001E001C  D0 3E 01 84 */	stfs f1, 0x184(r30)
/* 801E43C0 001E0020  48 09 7B 6D */	bl PSMTXIdentity
/* 801E43C4 001E0024  38 7E 01 0C */	addi r3, r30, 0x10c
/* 801E43C8 001E0028  38 9E 01 3C */	addi r4, r30, 0x13c
/* 801E43CC 001E002C  48 09 92 0D */	bl func_8027D5D8
/* 801E43D0 001E0030  7F C3 F3 78 */	mr r3, r30
/* 801E43D4 001E0034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E43D8 001E0038  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E43DC 001E003C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E43E0 001E0040  7C 08 03 A6 */	mtlr r0
/* 801E43E4 001E0044  38 21 00 10 */	addi r1, r1, 0x10
/* 801E43E8 001E0048  4E 80 00 20 */	blr
/* 801E43EC 001E004C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801E43F0 001E0050  7C 08 02 A6 */	mflr r0
/* 801E43F4 001E0054  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801E43F8 001E0058  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801E43FC 001E005C  7C 7F 1B 78 */	mr r31, r3
/* 801E4400 001E0060  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801E4404 001E0064  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 801E4408 001E0068  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 801E440C 001E006C  2C 00 00 01 */	cmpwi r0, 1
/* 801E4410 001E0070  40 82 02 44 */	bne lbl_801E4654
/* 801E4414 001E0074  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801E4418 001E0078  48 00 EA 51 */	bl func_801F2E68
/* 801E441C 001E007C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801E4420 001E0080  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 801E4424 001E0084  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 801E4428 001E0088  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801E442C 001E008C  48 09 81 15 */	bl PSMTXScale
/* 801E4430 001E0090  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 801E4434 001E0094  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801E4438 001E0098  41 82 00 1C */	beq lbl_801E4454
/* 801E443C 001E009C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 801E4440 001E00A0  38 9F 00 3C */	addi r4, r31, 0x3c
/* 801E4444 001E00A4  48 03 F2 7D */	bl func_802236C0
/* 801E4448 001E00A8  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 801E444C 001E00AC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801E4450 001E00B0  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_801E4454:
/* 801E4454 001E00B4  38 61 00 38 */	addi r3, r1, 0x38
/* 801E4458 001E00B8  38 9F 00 2C */	addi r4, r31, 0x2c
/* 801E445C 001E00BC  48 09 81 65 */	bl PSMTXQuat
/* 801E4460 001E00C0  38 9F 00 D0 */	addi r4, r31, 0xd0
/* 801E4464 001E00C4  38 61 00 38 */	addi r3, r1, 0x38
/* 801E4468 001E00C8  7C 85 23 78 */	mr r5, r4
/* 801E446C 001E00CC  48 09 7B 21 */	bl PSMTXConcat
/* 801E4470 001E00D0  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801E4474 001E00D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801E4478 001E00D8  41 82 00 1C */	beq lbl_801E4494
/* 801E447C 001E00DC  38 7F 01 6C */	addi r3, r31, 0x16c
/* 801E4480 001E00E0  38 9F 01 7C */	addi r4, r31, 0x17c
/* 801E4484 001E00E4  48 03 F2 3D */	bl func_802236C0
/* 801E4488 001E00E8  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801E448C 001E00EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801E4490 001E00F0  90 1F 01 04 */	stw r0, 0x104(r31)
lbl_801E4494:
/* 801E4494 001E00F4  38 61 00 08 */	addi r3, r1, 8
/* 801E4498 001E00F8  38 9F 01 6C */	addi r4, r31, 0x16c
/* 801E449C 001E00FC  48 09 81 25 */	bl PSMTXQuat
/* 801E44A0 001E0100  38 9F 00 D0 */	addi r4, r31, 0xd0
/* 801E44A4 001E0104  38 61 00 08 */	addi r3, r1, 8
/* 801E44A8 001E0108  7C 85 23 78 */	mr r5, r4
/* 801E44AC 001E010C  48 09 7A E1 */	bl PSMTXConcat
/* 801E44B0 001E0110  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 801E44B4 001E0114  2C 04 00 00 */	cmpwi r4, 0
/* 801E44B8 001E0118  41 82 01 08 */	beq lbl_801E45C0
/* 801E44BC 001E011C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801E44C0 001E0120  2C 03 00 00 */	cmpwi r3, 0
/* 801E44C4 001E0124  41 82 00 10 */	beq lbl_801E44D4
/* 801E44C8 001E0128  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801E44CC 001E012C  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 801E44D0 001E0130  48 00 00 08 */	b lbl_801E44D8
lbl_801E44D4:
/* 801E44D4 001E0134  38 00 00 01 */	li r0, 1
lbl_801E44D8:
/* 801E44D8 001E0138  2C 00 00 00 */	cmpwi r0, 0
/* 801E44DC 001E013C  41 82 00 E4 */	beq lbl_801E45C0
/* 801E44E0 001E0140  88 04 00 12 */	lbz r0, 0x12(r4)
/* 801E44E4 001E0144  2C 00 00 02 */	cmpwi r0, 2
/* 801E44E8 001E0148  40 82 00 D8 */	bne lbl_801E45C0
/* 801E44EC 001E014C  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801E44F0 001E0150  80 03 00 30 */	lwz r0, 0x30(r3)
/* 801E44F4 001E0154  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801E44F8 001E0158  41 82 00 C8 */	beq lbl_801E45C0
/* 801E44FC 001E015C  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 801E4500 001E0160  C0 62 96 B8 */	lfs f3, lbl_80641CB8-_SDA2_BASE_(r2)
/* 801E4504 001E0164  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801E4508 001E0168  40 81 00 28 */	ble lbl_801E4530
/* 801E450C 001E016C  C0 22 96 BC */	lfs f1, lbl_80641CBC-_SDA2_BASE_(r2)
/* 801E4510 001E0170  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801E4514 001E0174  40 80 00 1C */	bge lbl_801E4530
/* 801E4518 001E0178  C0 02 96 B0 */	lfs f0, lbl_80641CB0-_SDA2_BASE_(r2)
/* 801E451C 001E017C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801E4520 001E0180  40 80 00 08 */	bge lbl_801E4528
/* 801E4524 001E0184  48 00 00 10 */	b lbl_801E4534
lbl_801E4528:
/* 801E4528 001E0188  FC 60 08 90 */	fmr f3, f1
/* 801E452C 001E018C  48 00 00 08 */	b lbl_801E4534
lbl_801E4530:
/* 801E4530 001E0190  C0 64 00 48 */	lfs f3, 0x48(r4)
lbl_801E4534:
/* 801E4534 001E0194  C0 44 00 4C */	lfs f2, 0x4c(r4)
/* 801E4538 001E0198  C0 82 96 B8 */	lfs f4, lbl_80641CB8-_SDA2_BASE_(r2)
/* 801E453C 001E019C  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 801E4540 001E01A0  40 81 00 28 */	ble lbl_801E4568
/* 801E4544 001E01A4  C0 22 96 BC */	lfs f1, lbl_80641CBC-_SDA2_BASE_(r2)
/* 801E4548 001E01A8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801E454C 001E01AC  40 80 00 1C */	bge lbl_801E4568
/* 801E4550 001E01B0  C0 02 96 B0 */	lfs f0, lbl_80641CB0-_SDA2_BASE_(r2)
/* 801E4554 001E01B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801E4558 001E01B8  40 80 00 08 */	bge lbl_801E4560
/* 801E455C 001E01BC  48 00 00 10 */	b lbl_801E456C
lbl_801E4560:
/* 801E4560 001E01C0  FC 80 08 90 */	fmr f4, f1
/* 801E4564 001E01C4  48 00 00 08 */	b lbl_801E456C
lbl_801E4568:
/* 801E4568 001E01C8  C0 84 00 4C */	lfs f4, 0x4c(r4)
lbl_801E456C:
/* 801E456C 001E01CC  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801E4570 001E01D0  C0 A2 96 B8 */	lfs f5, lbl_80641CB8-_SDA2_BASE_(r2)
/* 801E4574 001E01D4  FC 02 28 40 */	fcmpo cr0, f2, f5
/* 801E4578 001E01D8  40 81 00 28 */	ble lbl_801E45A0
/* 801E457C 001E01DC  C0 22 96 BC */	lfs f1, lbl_80641CBC-_SDA2_BASE_(r2)
/* 801E4580 001E01E0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801E4584 001E01E4  40 80 00 1C */	bge lbl_801E45A0
/* 801E4588 001E01E8  C0 02 96 B0 */	lfs f0, lbl_80641CB0-_SDA2_BASE_(r2)
/* 801E458C 001E01EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801E4590 001E01F0  40 80 00 08 */	bge lbl_801E4598
/* 801E4594 001E01F4  48 00 00 10 */	b lbl_801E45A4
lbl_801E4598:
/* 801E4598 001E01F8  FC A0 08 90 */	fmr f5, f1
/* 801E459C 001E01FC  48 00 00 08 */	b lbl_801E45A4
lbl_801E45A0:
/* 801E45A0 001E0200  C0 A4 00 50 */	lfs f5, 0x50(r4)
lbl_801E45A4:
/* 801E45A4 001E0204  C0 02 96 B4 */	lfs f0, lbl_80641CB4-_SDA2_BASE_(r2)
/* 801E45A8 001E0208  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 801E45AC 001E020C  7C 64 1B 78 */	mr r4, r3
/* 801E45B0 001E0210  EC 20 18 24 */	fdivs f1, f0, f3
/* 801E45B4 001E0214  EC 40 20 24 */	fdivs f2, f0, f4
/* 801E45B8 001E0218  EC 60 28 24 */	fdivs f3, f0, f5
/* 801E45BC 001E021C  48 09 7F AD */	bl PSMTXScaleApply
lbl_801E45C0:
/* 801E45C0 001E0220  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 801E45C4 001E0224  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 801E45C8 001E0228  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 801E45CC 001E022C  7C 64 1B 78 */	mr r4, r3
/* 801E45D0 001E0230  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 801E45D4 001E0234  48 09 7F 21 */	bl PSMTXTransApply
/* 801E45D8 001E0238  7F E3 FB 78 */	mr r3, r31
/* 801E45DC 001E023C  48 00 E1 35 */	bl func_801F2710
/* 801E45E0 001E0240  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 801E45E4 001E0244  83 DF 00 BC */	lwz r30, 0xbc(r31)
/* 801E45E8 001E0248  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 801E45EC 001E024C  7C 1E F8 40 */	cmplw r30, r31
/* 801E45F0 001E0250  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 801E45F4 001E0254  40 82 00 18 */	bne lbl_801E460C
/* 801E45F8 001E0258  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801E45FC 001E025C  38 9F 01 0C */	addi r4, r31, 0x10c
/* 801E4600 001E0260  38 63 00 44 */	addi r3, r3, 0x44
/* 801E4604 001E0264  48 09 79 55 */	bl PSMTXCopy
/* 801E4608 001E0268  48 00 00 40 */	b lbl_801E4648
lbl_801E460C:
/* 801E460C 001E026C  80 9F 01 08 */	lwz r4, 0x108(r31)
/* 801E4610 001E0270  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 801E4614 001E0274  38 A1 00 68 */	addi r5, r1, 0x68
/* 801E4618 001E0278  38 84 00 44 */	addi r4, r4, 0x44
/* 801E461C 001E027C  48 09 79 71 */	bl PSMTXConcat
/* 801E4620 001E0280  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 801E4624 001E0284  38 81 00 98 */	addi r4, r1, 0x98
/* 801E4628 001E0288  48 09 7A 81 */	bl PSMTXInverse
/* 801E462C 001E028C  38 61 00 98 */	addi r3, r1, 0x98
/* 801E4630 001E0290  38 81 00 68 */	addi r4, r1, 0x68
/* 801E4634 001E0294  7C 65 1B 78 */	mr r5, r3
/* 801E4638 001E0298  48 09 79 55 */	bl PSMTXConcat
/* 801E463C 001E029C  38 61 00 98 */	addi r3, r1, 0x98
/* 801E4640 001E02A0  38 9F 01 0C */	addi r4, r31, 0x10c
/* 801E4644 001E02A4  48 09 79 15 */	bl PSMTXCopy
lbl_801E4648:
/* 801E4648 001E02A8  38 7F 01 0C */	addi r3, r31, 0x10c
/* 801E464C 001E02AC  38 9F 01 3C */	addi r4, r31, 0x13c
/* 801E4650 001E02B0  48 09 8F 89 */	bl func_8027D5D8
lbl_801E4654:
/* 801E4654 001E02B4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801E4658 001E02B8  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801E465C 001E02BC  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801E4660 001E02C0  7C 08 03 A6 */	mtlr r0
/* 801E4664 001E02C4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801E4668 001E02C8  4E 80 00 20 */	blr
/* 801E466C 001E02CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E4670 001E02D0  7C 08 02 A6 */	mflr r0
/* 801E4674 001E02D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E4678 001E02D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E467C 001E02DC  7C 7F 1B 78 */	mr r31, r3
/* 801E4680 001E02E0  48 00 F3 69 */	bl func2__6GSnullFi
/* 801E4684 001E02E4  80 BF 01 08 */	lwz r5, 0x108(r31)
/* 801E4688 001E02E8  2C 05 00 00 */	cmpwi r5, 0
/* 801E468C 001E02EC  41 82 00 30 */	beq lbl_801E46BC
/* 801E4690 001E02F0  38 00 00 00 */	li r0, 0
/* 801E4694 001E02F4  38 7F 01 6C */	addi r3, r31, 0x16c
/* 801E4698 001E02F8  90 1F 01 04 */	stw r0, 0x104(r31)
/* 801E469C 001E02FC  38 9F 01 7C */	addi r4, r31, 0x17c
/* 801E46A0 001E0300  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 801E46A4 001E0304  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 801E46A8 001E0308  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 801E46AC 001E030C  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 801E46B0 001E0310  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 801E46B4 001E0314  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 801E46B8 001E0318  48 03 F0 09 */	bl func_802236C0
lbl_801E46BC:
/* 801E46BC 001E031C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E46C0 001E0320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E46C4 001E0324  7C 08 03 A6 */	mtlr r0
/* 801E46C8 001E0328  38 21 00 10 */	addi r1, r1, 0x10
/* 801E46CC 001E032C  4E 80 00 20 */	blr
/* 801E46D0 001E0330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E46D4 001E0334  7C 08 02 A6 */	mflr r0
/* 801E46D8 001E0338  2C 03 00 00 */	cmpwi r3, 0
/* 801E46DC 001E033C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E46E0 001E0340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E46E4 001E0344  7C 9F 23 78 */	mr r31, r4
/* 801E46E8 001E0348  93 C1 00 08 */	stw r30, 8(r1)
/* 801E46EC 001E034C  7C 7E 1B 78 */	mr r30, r3
/* 801E46F0 001E0350  41 82 00 20 */	beq lbl_801E4710
/* 801E46F4 001E0354  38 80 00 00 */	li r4, 0
/* 801E46F8 001E0358  48 00 D8 2D */	bl __dt__6GSnullFv
/* 801E46FC 001E035C  2C 1F 00 00 */	cmpwi r31, 0
/* 801E4700 001E0360  40 81 00 10 */	ble lbl_801E4710
/* 801E4704 001E0364  80 6D 96 38 */	lwz r3, lbl_8063E8F8-_SDA_BASE_(r13)
/* 801E4708 001E0368  7F C4 F3 78 */	mr r4, r30
/* 801E470C 001E036C  4B FF 66 3D */	bl func_801DAD48
lbl_801E4710:
/* 801E4710 001E0370  7F C3 F3 78 */	mr r3, r30
/* 801E4714 001E0374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E4718 001E0378  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E471C 001E037C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E4720 001E0380  7C 08 03 A6 */	mtlr r0
/* 801E4724 001E0384  38 21 00 10 */	addi r1, r1, 0x10
/* 801E4728 001E0388  4E 80 00 20 */	blr

.global func_801E472C
func_801E472C:
/* 801E472C 001E038C  38 A0 00 01 */	li r5, 1
/* 801E4730 001E0390  38 6D A0 C0 */	addi r3, r13, lbl_8063F380-_SDA_BASE_
/* 801E4734 001E0394  38 80 00 04 */	li r4, 4
/* 801E4738 001E0398  38 00 00 00 */	li r0, 0
/* 801E473C 001E039C  98 AD A0 C0 */	stb r5, lbl_8063F380-_SDA_BASE_(r13)
/* 801E4740 001E03A0  B0 83 00 02 */	sth r4, 2(r3)
/* 801E4744 001E03A4  98 03 00 04 */	stb r0, 4(r3)
/* 801E4748 001E03A8  4E 80 00 20 */	blr
