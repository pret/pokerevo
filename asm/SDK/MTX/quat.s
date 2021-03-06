.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global PSQUATMultiply
PSQUATMultiply:
/* 8027D024 00278C84  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027D028 00278C88  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8027D02C 00278C8C  10 A0 00 50 */	ps_neg f5, f0
/* 8027D030 00278C90  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8027D034 00278C94  10 C0 08 50 */	ps_neg f6, f1
/* 8027D038 00278C98  E0 64 00 08 */	psq_l f3, 8(r4), 0, qr0
/* 8027D03C 00278C9C  10 E1 00 98 */	ps_muls0 f7, f1, f2
/* 8027D040 00278CA0  10 85 04 60 */	ps_merge01 f4, f5, f0
/* 8027D044 00278CA4  10 26 0C 60 */	ps_merge01 f1, f6, f1
/* 8027D048 00278CA8  10 A5 00 98 */	ps_muls0 f5, f5, f2
/* 8027D04C 00278CAC  11 04 00 9A */	ps_muls1 f8, f4, f2
/* 8027D050 00278CB0  10 E4 38 DC */	ps_madds0 f7, f4, f3, f7
/* 8027D054 00278CB4  10 41 00 9A */	ps_muls1 f2, f1, f2
/* 8027D058 00278CB8  10 A1 28 DC */	ps_madds0 f5, f1, f3, f5
/* 8027D05C 00278CBC  10 E7 3C A0 */	ps_merge10 f7, f7, f7
/* 8027D060 00278CC0  10 40 10 DE */	ps_madds1 f2, f0, f3, f2
/* 8027D064 00278CC4  10 A5 2C A0 */	ps_merge10 f5, f5, f5
/* 8027D068 00278CC8  11 06 40 DE */	ps_madds1 f8, f6, f3, f8
/* 8027D06C 00278CCC  10 E7 10 2A */	ps_add f7, f7, f2
/* 8027D070 00278CD0  10 A5 40 28 */	ps_sub f5, f5, f8
/* 8027D074 00278CD4  F0 E5 00 00 */	psq_st f7, 0(r5), 0, qr0
/* 8027D078 00278CD8  F0 A5 00 08 */	psq_st f5, 8(r5), 0, qr0
/* 8027D07C 00278CDC  4E 80 00 20 */	blr

.global PSQUATInverse
PSQUATInverse:
/* 8027D080 00278CE0  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027D084 00278CE4  C0 A2 A0 B8 */	lfs f5, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D088 00278CE8  10 40 00 32 */	ps_mul f2, f0, f0
/* 8027D08C 00278CEC  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8027D090 00278CF0  10 85 28 28 */	ps_sub f4, f5, f5
/* 8027D094 00278CF4  10 65 28 2A */	ps_add f3, f5, f5
/* 8027D098 00278CF8  10 41 10 7A */	ps_madd f2, f1, f1, f2
/* 8027D09C 00278CFC  10 42 10 94 */	ps_sum0 f2, f2, f2, f2
/* 8027D0A0 00278D00  FC 02 20 00 */	fcmpu cr0, f2, f4
/* 8027D0A4 00278D04  41 82 00 10 */	beq lbl_8027D0B4
/* 8027D0A8 00278D08  EC A0 10 30 */	fres f5, f2
/* 8027D0AC 00278D0C  10 42 19 7C */	ps_nmsub f2, f2, f5, f3
/* 8027D0B0 00278D10  10 A5 00 B2 */	ps_mul f5, f5, f2
lbl_8027D0B4:
/* 8027D0B4 00278D14  10 60 28 50 */	ps_neg f3, f5
/* 8027D0B8 00278D18  10 45 00 5A */	ps_muls1 f2, f5, f1
/* 8027D0BC 00278D1C  10 00 00 D8 */	ps_muls0 f0, f0, f3
/* 8027D0C0 00278D20  10 21 00 D8 */	ps_muls0 f1, f1, f3
/* 8027D0C4 00278D24  F0 44 80 0C */	psq_st f2, 12(r4), 1, qr0
/* 8027D0C8 00278D28  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8027D0CC 00278D2C  F0 24 80 08 */	psq_st f1, 8(r4), 1, qr0
/* 8027D0D0 00278D30  4E 80 00 20 */	blr

.global PSQUATDivide
PSQUATDivide:
/* 8027D0D4 00278D34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027D0D8 00278D38  7C 08 02 A6 */	mflr r0
/* 8027D0DC 00278D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027D0E0 00278D40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027D0E4 00278D44  7C BF 2B 78 */	mr r31, r5
/* 8027D0E8 00278D48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027D0EC 00278D4C  7C 7E 1B 78 */	mr r30, r3
/* 8027D0F0 00278D50  7C 83 23 78 */	mr r3, r4
/* 8027D0F4 00278D54  38 81 00 08 */	addi r4, r1, 8
/* 8027D0F8 00278D58  4B FF FF 89 */	bl PSQUATInverse
/* 8027D0FC 00278D5C  7F C4 F3 78 */	mr r4, r30
/* 8027D100 00278D60  7F E5 FB 78 */	mr r5, r31
/* 8027D104 00278D64  38 61 00 08 */	addi r3, r1, 8
/* 8027D108 00278D68  4B FF FF 1D */	bl PSQUATMultiply
/* 8027D10C 00278D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027D110 00278D70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027D114 00278D74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027D118 00278D78  7C 08 03 A6 */	mtlr r0
/* 8027D11C 00278D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027D120 00278D80  4E 80 00 20 */	blr

.global C_QUATRotAxisRad
C_QUATRotAxisRad:
/* 8027D124 00278D84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027D128 00278D88  7C 08 02 A6 */	mflr r0
/* 8027D12C 00278D8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027D130 00278D90  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8027D134 00278D94  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8027D138 00278D98  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8027D13C 00278D9C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8027D140 00278DA0  FF C0 08 90 */	fmr f30, f1
/* 8027D144 00278DA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027D148 00278DA8  7C 7F 1B 78 */	mr r31, r3
/* 8027D14C 00278DAC  7C 83 23 78 */	mr r3, r4
/* 8027D150 00278DB0  38 81 00 08 */	addi r4, r1, 8
/* 8027D154 00278DB4  4B FF FB D5 */	bl PSVECNormalize
/* 8027D158 00278DB8  C0 02 A0 C0 */	lfs f0, lbl_806426C0-_SDA2_BASE_(r2)
/* 8027D15C 00278DBC  EF C0 07 B2 */	fmuls f30, f0, f30
/* 8027D160 00278DC0  FC 20 F0 90 */	fmr f1, f30
/* 8027D164 00278DC4  4B F5 73 21 */	bl sin
/* 8027D168 00278DC8  FF E0 08 18 */	frsp f31, f1
/* 8027D16C 00278DCC  FC 20 F0 90 */	fmr f1, f30
/* 8027D170 00278DD0  4B F5 6F 09 */	bl cos
/* 8027D174 00278DD4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027D178 00278DD8  FC 20 08 18 */	frsp f1, f1
/* 8027D17C 00278DDC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8027D180 00278DE0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8027D184 00278DE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8027D188 00278DE8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8027D18C 00278DEC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8027D190 00278DF0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8027D194 00278DF4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8027D198 00278DF8  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8027D19C 00278DFC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8027D1A0 00278E00  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8027D1A4 00278E04  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8027D1A8 00278E08  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8027D1AC 00278E0C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8027D1B0 00278E10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027D1B4 00278E14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027D1B8 00278E18  7C 08 03 A6 */	mtlr r0
/* 8027D1BC 00278E1C  38 21 00 40 */	addi r1, r1, 0x40
/* 8027D1C0 00278E20  4E 80 00 20 */	blr

.global C_QUATMtx
C_QUATMtx:
/* 8027D1C4 00278E24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027D1C8 00278E28  7C 08 02 A6 */	mflr r0
/* 8027D1CC 00278E2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027D1D0 00278E30  39 61 00 40 */	addi r11, r1, 0x40
/* 8027D1D4 00278E34  4B F4 9F 4D */	bl _savegpr_25
/* 8027D1D8 00278E38  C0 64 00 00 */	lfs f3, 0(r4)
/* 8027D1DC 00278E3C  3C C0 80 40 */	lis r6, lbl_80400004@ha
/* 8027D1E0 00278E40  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8027D1E4 00278E44  7C 7F 1B 78 */	mr r31, r3
/* 8027D1E8 00278E48  84 A6 D9 A8 */	lwzu r5, -0x2658(r6)
/* 8027D1EC 00278E4C  7C 99 23 78 */	mr r25, r4
/* 8027D1F0 00278E50  EC 23 10 2A */	fadds f1, f3, f2
/* 8027D1F4 00278E54  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8027D1F8 00278E58  80 66 00 04 */	lwz r3, lbl_80400004@l(r6)
/* 8027D1FC 00278E5C  80 06 00 08 */	lwz r0, 8(r6)
/* 8027D200 00278E60  EC 20 08 2A */	fadds f1, f0, f1
/* 8027D204 00278E64  C0 02 A0 BC */	lfs f0, lbl_806426BC-_SDA2_BASE_(r2)
/* 8027D208 00278E68  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8027D20C 00278E6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027D210 00278E70  90 61 00 18 */	stw r3, 0x18(r1)
/* 8027D214 00278E74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027D218 00278E78  40 81 00 64 */	ble lbl_8027D27C
/* 8027D21C 00278E7C  C0 02 A0 B8 */	lfs f0, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D220 00278E80  EC 20 08 2A */	fadds f1, f0, f1
/* 8027D224 00278E84  4B F5 76 11 */	bl sqrt
/* 8027D228 00278E88  FC E0 08 18 */	frsp f7, f1
/* 8027D22C 00278E8C  C0 C2 A0 C0 */	lfs f6, lbl_806426C0-_SDA2_BASE_(r2)
/* 8027D230 00278E90  C0 B9 00 24 */	lfs f5, 0x24(r25)
/* 8027D234 00278E94  C0 99 00 18 */	lfs f4, 0x18(r25)
/* 8027D238 00278E98  ED 06 38 24 */	fdivs f8, f6, f7
/* 8027D23C 00278E9C  C0 79 00 08 */	lfs f3, 8(r25)
/* 8027D240 00278EA0  C0 59 00 20 */	lfs f2, 0x20(r25)
/* 8027D244 00278EA4  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 8027D248 00278EA8  C0 19 00 04 */	lfs f0, 4(r25)
/* 8027D24C 00278EAC  EC 85 20 28 */	fsubs f4, f5, f4
/* 8027D250 00278EB0  EC 43 10 28 */	fsubs f2, f3, f2
/* 8027D254 00278EB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027D258 00278EB8  EC A6 01 F2 */	fmuls f5, f6, f7
/* 8027D25C 00278EBC  EC 68 01 32 */	fmuls f3, f8, f4
/* 8027D260 00278EC0  EC 28 00 B2 */	fmuls f1, f8, f2
/* 8027D264 00278EC4  EC 08 00 32 */	fmuls f0, f8, f0
/* 8027D268 00278EC8  D0 BF 00 0C */	stfs f5, 0xc(r31)
/* 8027D26C 00278ECC  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8027D270 00278ED0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8027D274 00278ED4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8027D278 00278ED8  48 00 01 00 */	b lbl_8027D378
lbl_8027D27C:
/* 8027D27C 00278EDC  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8027D280 00278EE0  38 A0 00 00 */	li r5, 0
/* 8027D284 00278EE4  40 81 00 08 */	ble lbl_8027D28C
/* 8027D288 00278EE8  38 A0 00 01 */	li r5, 1
lbl_8027D28C:
/* 8027D28C 00278EEC  54 A0 20 36 */	slwi r0, r5, 4
/* 8027D290 00278EF0  54 A3 10 3A */	slwi r3, r5, 2
/* 8027D294 00278EF4  7C 04 02 14 */	add r0, r4, r0
/* 8027D298 00278EF8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8027D29C 00278EFC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8027D2A0 00278F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027D2A4 00278F04  40 81 00 08 */	ble lbl_8027D2AC
/* 8027D2A8 00278F08  38 A0 00 02 */	li r5, 2
lbl_8027D2AC:
/* 8027D2AC 00278F0C  54 BA 10 3A */	slwi r26, r5, 2
/* 8027D2B0 00278F10  38 61 00 14 */	addi r3, r1, 0x14
/* 8027D2B4 00278F14  7C C3 D0 2E */	lwzx r6, r3, r26
/* 8027D2B8 00278F18  54 A0 20 36 */	slwi r0, r5, 4
/* 8027D2BC 00278F1C  7F 24 02 14 */	add r25, r4, r0
/* 8027D2C0 00278F20  C0 02 A0 B8 */	lfs f0, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D2C4 00278F24  54 DC 10 3A */	slwi r28, r6, 2
/* 8027D2C8 00278F28  54 C0 20 36 */	slwi r0, r6, 4
/* 8027D2CC 00278F2C  7C 63 E0 2E */	lwzx r3, r3, r28
/* 8027D2D0 00278F30  7F A4 02 14 */	add r29, r4, r0
/* 8027D2D4 00278F34  7C 7D E4 2E */	lfsx f3, r29, r28
/* 8027D2D8 00278F38  54 60 20 36 */	slwi r0, r3, 4
/* 8027D2DC 00278F3C  54 7E 10 3A */	slwi r30, r3, 2
/* 8027D2E0 00278F40  7F 64 02 14 */	add r27, r4, r0
/* 8027D2E4 00278F44  7C 39 D4 2E */	lfsx f1, r25, r26
/* 8027D2E8 00278F48  7C 5B F4 2E */	lfsx f2, r27, r30
/* 8027D2EC 00278F4C  EC 43 10 2A */	fadds f2, f3, f2
/* 8027D2F0 00278F50  EC 21 10 28 */	fsubs f1, f1, f2
/* 8027D2F4 00278F54  EC 20 08 2A */	fadds f1, f0, f1
/* 8027D2F8 00278F58  4B F5 75 3D */	bl sqrt
/* 8027D2FC 00278F5C  FC A0 08 18 */	frsp f5, f1
/* 8027D300 00278F60  C0 42 A0 C0 */	lfs f2, lbl_806426C0-_SDA2_BASE_(r2)
/* 8027D304 00278F64  C0 02 A0 BC */	lfs f0, lbl_806426BC-_SDA2_BASE_(r2)
/* 8027D308 00278F68  38 61 00 08 */	addi r3, r1, 8
/* 8027D30C 00278F6C  EC 22 01 72 */	fmuls f1, f2, f5
/* 8027D310 00278F70  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8027D314 00278F74  7C 23 D5 2E */	stfsx f1, r3, r26
/* 8027D318 00278F78  41 82 00 08 */	beq lbl_8027D320
/* 8027D31C 00278F7C  EC A2 28 24 */	fdivs f5, f2, f5
lbl_8027D320:
/* 8027D320 00278F80  7C 59 E4 2E */	lfsx f2, r25, r28
/* 8027D324 00278F84  38 61 00 08 */	addi r3, r1, 8
/* 8027D328 00278F88  7C 1D D4 2E */	lfsx f0, r29, r26
/* 8027D32C 00278F8C  7C 39 F4 2E */	lfsx f1, r25, r30
/* 8027D330 00278F90  EC 42 00 2A */	fadds f2, f2, f0
/* 8027D334 00278F94  7C 1B D4 2E */	lfsx f0, r27, r26
/* 8027D338 00278F98  7C 9B E4 2E */	lfsx f4, r27, r28
/* 8027D33C 00278F9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8027D340 00278FA0  7C 7D F4 2E */	lfsx f3, r29, r30
/* 8027D344 00278FA4  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8027D348 00278FA8  EC 44 18 28 */	fsubs f2, f4, f3
/* 8027D34C 00278FAC  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027D350 00278FB0  7C 23 E5 2E */	stfsx f1, r3, r28
/* 8027D354 00278FB4  EC 65 00 B2 */	fmuls f3, f5, f2
/* 8027D358 00278FB8  7C 03 F5 2E */	stfsx f0, r3, r30
/* 8027D35C 00278FBC  C0 41 00 08 */	lfs f2, 8(r1)
/* 8027D360 00278FC0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8027D364 00278FC4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8027D368 00278FC8  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8027D36C 00278FCC  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8027D370 00278FD0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8027D374 00278FD4  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8027D378:
/* 8027D378 00278FD8  39 61 00 40 */	addi r11, r1, 0x40
/* 8027D37C 00278FDC  4B F4 9D F1 */	bl _restgpr_25
/* 8027D380 00278FE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027D384 00278FE4  7C 08 03 A6 */	mtlr r0
/* 8027D388 00278FE8  38 21 00 40 */	addi r1, r1, 0x40
/* 8027D38C 00278FEC  4E 80 00 20 */	blr

.global C_QUATSlerp
C_QUATSlerp:
/* 8027D390 00278FF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8027D394 00278FF4  7C 08 02 A6 */	mflr r0
/* 8027D398 00278FF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027D39C 00278FFC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8027D3A0 00279000  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8027D3A4 00279004  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8027D3A8 00279008  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8027D3AC 0027900C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8027D3B0 00279010  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 8027D3B4 00279014  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 8027D3B8 00279018  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 8027D3BC 0027901C  FF E0 08 90 */	fmr f31, f1
/* 8027D3C0 00279020  C0 83 00 00 */	lfs f4, 0(r3)
/* 8027D3C4 00279024  C0 64 00 00 */	lfs f3, 0(r4)
/* 8027D3C8 00279028  C0 43 00 04 */	lfs f2, 4(r3)
/* 8027D3CC 0027902C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8027D3D0 00279030  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8027D3D4 00279034  C0 83 00 08 */	lfs f4, 8(r3)
/* 8027D3D8 00279038  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027D3DC 0027903C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8027D3E0 00279040  C0 C3 00 0C */	lfs f6, 0xc(r3)
/* 8027D3E4 00279044  EC 84 00 B2 */	fmuls f4, f4, f2
/* 8027D3E8 00279048  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 8027D3EC 0027904C  EC 43 00 2A */	fadds f2, f3, f0
/* 8027D3F0 00279050  EC 66 01 72 */	fmuls f3, f6, f5
/* 8027D3F4 00279054  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027D3F8 00279058  C0 02 A0 BC */	lfs f0, lbl_806426BC-_SDA2_BASE_(r2)
/* 8027D3FC 0027905C  EC 44 10 2A */	fadds f2, f4, f2
/* 8027D400 00279060  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027D404 00279064  C3 C2 A0 B8 */	lfs f30, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D408 00279068  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027D40C 0027906C  7C 7D 1B 78 */	mr r29, r3
/* 8027D410 00279070  EC 43 10 2A */	fadds f2, f3, f2
/* 8027D414 00279074  7C 9E 23 78 */	mr r30, r4
/* 8027D418 00279078  7C BF 2B 78 */	mr r31, r5
/* 8027D41C 0027907C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8027D420 00279080  40 80 00 0C */	bge lbl_8027D42C
/* 8027D424 00279084  FC 40 10 50 */	fneg f2, f2
/* 8027D428 00279088  FF C0 F0 50 */	fneg f30, f30
lbl_8027D42C:
/* 8027D42C 0027908C  C0 02 A0 C4 */	lfs f0, lbl_806426C4-_SDA2_BASE_(r2)
/* 8027D430 00279090  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8027D434 00279094  4C 40 13 82 */	cror 2, 0, 2
/* 8027D438 00279098  40 82 00 4C */	bne lbl_8027D484
/* 8027D43C 0027909C  FC 20 10 90 */	fmr f1, f2
/* 8027D440 002790A0  4B F5 71 95 */	bl acos
/* 8027D444 002790A4  FF A0 08 18 */	frsp f29, f1
/* 8027D448 002790A8  FC 20 E8 90 */	fmr f1, f29
/* 8027D44C 002790AC  4B F5 70 39 */	bl sin
/* 8027D450 002790B0  C0 02 A0 B8 */	lfs f0, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D454 002790B4  FF 80 08 18 */	frsp f28, f1
/* 8027D458 002790B8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8027D45C 002790BC  EC 20 07 72 */	fmuls f1, f0, f29
/* 8027D460 002790C0  4B F5 70 25 */	bl sin
/* 8027D464 002790C4  FC 00 08 18 */	frsp f0, f1
/* 8027D468 002790C8  EC 3F 07 72 */	fmuls f1, f31, f29
/* 8027D46C 002790CC  EF E0 E0 24 */	fdivs f31, f0, f28
/* 8027D470 002790D0  4B F5 70 15 */	bl sin
/* 8027D474 002790D4  FC 00 08 18 */	frsp f0, f1
/* 8027D478 002790D8  EC 00 E0 24 */	fdivs f0, f0, f28
/* 8027D47C 002790DC  EF DE 00 32 */	fmuls f30, f30, f0
/* 8027D480 002790E0  48 00 00 10 */	b lbl_8027D490
lbl_8027D484:
/* 8027D484 002790E4  C0 02 A0 B8 */	lfs f0, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D488 002790E8  EF DE 00 72 */	fmuls f30, f30, f1
/* 8027D48C 002790EC  EF E0 08 28 */	fsubs f31, f0, f1
lbl_8027D490:
/* 8027D490 002790F0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8027D494 002790F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8027D498 002790F8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8027D49C 002790FC  EC FF 00 32 */	fmuls f7, f31, f0
/* 8027D4A0 00279100  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8027D4A4 00279104  EC DE 00 B2 */	fmuls f6, f30, f2
/* 8027D4A8 00279108  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8027D4AC 0027910C  EC BF 00 72 */	fmuls f5, f31, f1
/* 8027D4B0 00279110  EC 9E 00 32 */	fmuls f4, f30, f0
/* 8027D4B4 00279114  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8027D4B8 00279118  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 8027D4BC 0027911C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8027D4C0 00279120  EC C7 30 2A */	fadds f6, f7, f6
/* 8027D4C4 00279124  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8027D4C8 00279128  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8027D4CC 0027912C  EC 85 20 2A */	fadds f4, f5, f4
/* 8027D4D0 00279130  D0 DF 00 00 */	stfs f6, 0(r31)
/* 8027D4D4 00279134  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8027D4D8 00279138  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8027D4DC 0027913C  EC 43 10 2A */	fadds f2, f3, f2
/* 8027D4E0 00279140  D0 9F 00 04 */	stfs f4, 4(r31)
/* 8027D4E4 00279144  EC 01 00 2A */	fadds f0, f1, f0
/* 8027D4E8 00279148  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8027D4EC 0027914C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8027D4F0 00279150  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8027D4F4 00279154  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8027D4F8 00279158  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8027D4FC 0027915C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8027D500 00279160  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 8027D504 00279164  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8027D508 00279168  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 8027D50C 0027916C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 8027D510 00279170  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027D514 00279174  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027D518 00279178  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8027D51C 0027917C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8027D520 00279180  7C 08 03 A6 */	mtlr r0
/* 8027D524 00279184  38 21 00 60 */	addi r1, r1, 0x60
/* 8027D528 00279188  4E 80 00 20 */	blr

.global C_QUATSquad
C_QUATSquad:
/* 8027D52C 0027918C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8027D530 00279190  7C 08 02 A6 */	mflr r0
/* 8027D534 00279194  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027D538 00279198  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8027D53C 0027919C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8027D540 002791A0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8027D544 002791A4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8027D548 002791A8  FF C0 08 90 */	fmr f30, f1
/* 8027D54C 002791AC  C0 42 A0 C8 */	lfs f2, lbl_806426C8-_SDA2_BASE_(r2)
/* 8027D550 002791B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8027D554 002791B4  7C FF 3B 78 */	mr r31, r7
/* 8027D558 002791B8  C0 02 A0 B8 */	lfs f0, lbl_806426B8-_SDA2_BASE_(r2)
/* 8027D55C 002791BC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8027D560 002791C0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8027D564 002791C4  7C BE 2B 78 */	mr r30, r5
/* 8027D568 002791C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027D56C 002791CC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8027D570 002791D0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8027D574 002791D4  7C 9D 23 78 */	mr r29, r4
/* 8027D578 002791D8  7C C4 33 78 */	mr r4, r6
/* 8027D57C 002791DC  EF E2 00 32 */	fmuls f31, f2, f0
/* 8027D580 002791E0  4B FF FE 11 */	bl C_QUATSlerp
/* 8027D584 002791E4  FC 20 F0 90 */	fmr f1, f30
/* 8027D588 002791E8  7F A3 EB 78 */	mr r3, r29
/* 8027D58C 002791EC  7F C4 F3 78 */	mr r4, r30
/* 8027D590 002791F0  38 A1 00 08 */	addi r5, r1, 8
/* 8027D594 002791F4  4B FF FD FD */	bl C_QUATSlerp
/* 8027D598 002791F8  FC 20 F8 90 */	fmr f1, f31
/* 8027D59C 002791FC  7F E5 FB 78 */	mr r5, r31
/* 8027D5A0 00279200  38 61 00 18 */	addi r3, r1, 0x18
/* 8027D5A4 00279204  38 81 00 08 */	addi r4, r1, 8
/* 8027D5A8 00279208  4B FF FD E9 */	bl C_QUATSlerp
/* 8027D5AC 0027920C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8027D5B0 00279210  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8027D5B4 00279214  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8027D5B8 00279218  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8027D5BC 0027921C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8027D5C0 00279220  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8027D5C4 00279224  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8027D5C8 00279228  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8027D5CC 0027922C  7C 08 03 A6 */	mtlr r0
/* 8027D5D0 00279230  38 21 00 60 */	addi r1, r1, 0x60
/* 8027D5D4 00279234  4E 80 00 20 */	blr

.global func_8027D5D8
func_8027D5D8:
/* 8027D5D8 00279238  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027D5DC 0027923C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8027D5E0 00279240  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8027D5E4 00279244  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8027D5E8 00279248  10 C0 14 20 */	ps_merge00 f6, f0, f2
/* 8027D5EC 0027924C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8027D5F0 00279250  11 84 04 60 */	ps_merge01 f12, f4, f0
/* 8027D5F4 00279254  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8027D5F8 00279258  10 E2 24 E0 */	ps_merge11 f7, f2, f4
/* 8027D5FC 0027925C  F0 C4 00 00 */	psq_st f6, 0(r4), 0, qr0
/* 8027D600 00279260  11 01 1C 20 */	ps_merge00 f8, f1, f3
/* 8027D604 00279264  F1 84 00 08 */	psq_st f12, 8(r4), 0, qr0
/* 8027D608 00279268  11 25 0C 60 */	ps_merge01 f9, f5, f1
/* 8027D60C 0027926C  F0 E4 00 10 */	psq_st f7, 16(r4), 0, qr0
/* 8027D610 00279270  11 43 2C E0 */	ps_merge11 f10, f3, f5
/* 8027D614 00279274  F1 04 00 18 */	psq_st f8, 24(r4), 0, qr0
/* 8027D618 00279278  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 8027D61C 0027927C  F1 44 00 28 */	psq_st f10, 40(r4), 0, qr0
/* 8027D620 00279280  4E 80 00 20 */	blr
