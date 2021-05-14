.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global PSVECAdd
PSVECAdd:
/* 8027CCC4 00278924  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8027CCC8 00278928  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8027CCCC 0027892C  10 C2 20 2A */	ps_add f6, f2, f4
/* 8027CCD0 00278930  F0 C5 00 00 */	psq_st f6, 0(r5), 0, qr0
/* 8027CCD4 00278934  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8027CCD8 00278938  E0 A4 80 08 */	psq_l f5, 8(r4), 1, qr0
/* 8027CCDC 0027893C  10 E3 28 2A */	ps_add f7, f3, f5
/* 8027CCE0 00278940  F0 E5 80 08 */	psq_st f7, 8(r5), 1, qr0
/* 8027CCE4 00278944  4E 80 00 20 */	blr

.global PSVECSubtract
PSVECSubtract:
/* 8027CCE8 00278948  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8027CCEC 0027894C  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8027CCF0 00278950  10 C2 20 28 */	ps_sub f6, f2, f4
/* 8027CCF4 00278954  F0 C5 00 00 */	psq_st f6, 0(r5), 0, qr0
/* 8027CCF8 00278958  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8027CCFC 0027895C  E0 A4 80 08 */	psq_l f5, 8(r4), 1, qr0
/* 8027CD00 00278960  10 E3 28 28 */	ps_sub f7, f3, f5
/* 8027CD04 00278964  F0 E5 80 08 */	psq_st f7, 8(r5), 1, qr0
/* 8027CD08 00278968  4E 80 00 20 */	blr

.global PSVECScale
PSVECScale:
/* 8027CD0C 0027896C  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027CD10 00278970  E0 43 80 08 */	psq_l f2, 8(r3), 1, qr0
/* 8027CD14 00278974  10 00 00 58 */	ps_muls0 f0, f0, f1
/* 8027CD18 00278978  10 22 00 58 */	ps_muls0 f1, f2, f1
/* 8027CD1C 0027897C  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8027CD20 00278980  F0 24 80 08 */	psq_st f1, 8(r4), 1, qr0
/* 8027CD24 00278984  4E 80 00 20 */	blr

.global PSVECNormalize
PSVECNormalize:
/* 8027CD28 00278988  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8027CD2C 0027898C  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8027CD30 00278990  10 A2 00 B2 */	ps_mul f5, f2, f2
/* 8027CD34 00278994  C0 02 A0 A8 */	lfs f0, lbl_806426A8-_SDA2_BASE_(r2)
/* 8027CD38 00278998  C0 22 A0 AC */	lfs f1, lbl_806426AC-_SDA2_BASE_(r2)
/* 8027CD3C 0027899C  10 83 28 FA */	ps_madd f4, f3, f3, f5
/* 8027CD40 002789A0  10 84 28 D4 */	ps_sum0 f4, f4, f3, f5
/* 8027CD44 002789A4  FC A0 20 34 */	frsqrte f5, f4
/* 8027CD48 002789A8  EC C5 01 72 */	fmuls f6, f5, f5
/* 8027CD4C 002789AC  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027CD50 002789B0  EC C6 09 3C */	fnmsubs f6, f6, f4, f1
/* 8027CD54 002789B4  EC A6 00 32 */	fmuls f5, f6, f0
/* 8027CD58 002789B8  10 42 01 58 */	ps_muls0 f2, f2, f5
/* 8027CD5C 002789BC  10 63 01 58 */	ps_muls0 f3, f3, f5
/* 8027CD60 002789C0  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 8027CD64 002789C4  F0 64 80 08 */	psq_st f3, 8(r4), 1, qr0
/* 8027CD68 002789C8  4E 80 00 20 */	blr

.global PSVECSquareMag
PSVECSquareMag:
/* 8027CD6C 002789CC  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027CD70 002789D0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8027CD74 002789D4  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027CD78 002789D8  10 21 00 7A */	ps_madd f1, f1, f1, f0
/* 8027CD7C 002789DC  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 8027CD80 002789E0  4E 80 00 20 */	blr

.global PSVECMag
PSVECMag:
/* 8027CD84 002789E4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027CD88 002789E8  C0 82 A0 A8 */	lfs f4, lbl_806426A8-_SDA2_BASE_(r2)
/* 8027CD8C 002789EC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027CD90 002789F0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8027CD94 002789F4  EC 44 20 28 */	fsubs f2, f4, f4
/* 8027CD98 002789F8  10 21 00 7A */	ps_madd f1, f1, f1, f0
/* 8027CD9C 002789FC  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 8027CDA0 00278A00  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 8027CDA4 00278A04  4D 82 00 20 */	beqlr
/* 8027CDA8 00278A08  FC 00 08 34 */	frsqrte f0, f1
/* 8027CDAC 00278A0C  C0 62 A0 AC */	lfs f3, lbl_806426AC-_SDA2_BASE_(r2)
/* 8027CDB0 00278A10  EC 40 00 32 */	fmuls f2, f0, f0
/* 8027CDB4 00278A14  EC 00 01 32 */	fmuls f0, f0, f4
/* 8027CDB8 00278A18  EC 42 18 7C */	fnmsubs f2, f2, f1, f3
/* 8027CDBC 00278A1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027CDC0 00278A20  EC 21 00 32 */	fmuls f1, f1, f0
/* 8027CDC4 00278A24  4E 80 00 20 */	blr

.global PSVECDotProduct
PSVECDotProduct:
/* 8027CDC8 00278A28  E0 43 00 04 */	psq_l f2, 4(r3), 0, qr0
/* 8027CDCC 00278A2C  E0 64 00 04 */	psq_l f3, 4(r4), 0, qr0
/* 8027CDD0 00278A30  10 42 00 F2 */	ps_mul f2, f2, f3
/* 8027CDD4 00278A34  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 8027CDD8 00278A38  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8027CDDC 00278A3C  10 65 11 3A */	ps_madd f3, f5, f4, f2
/* 8027CDE0 00278A40  10 23 10 94 */	ps_sum0 f1, f3, f2, f2
/* 8027CDE4 00278A44  4E 80 00 20 */	blr

.global PSVECCrossProduct
PSVECCrossProduct:
/* 8027CDE8 00278A48  E0 24 00 00 */	psq_l f1, 0(r4), 0, qr0
/* 8027CDEC 00278A4C  C0 43 00 08 */	lfs f2, 8(r3)
/* 8027CDF0 00278A50  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027CDF4 00278A54  10 C1 0C A0 */	ps_merge10 f6, f1, f1
/* 8027CDF8 00278A58  C0 64 00 08 */	lfs f3, 8(r4)
/* 8027CDFC 00278A5C  10 81 00 B2 */	ps_mul f4, f1, f2
/* 8027CE00 00278A60  10 E1 00 18 */	ps_muls0 f7, f1, f0
/* 8027CE04 00278A64  10 A0 20 F8 */	ps_msub f5, f0, f3, f4
/* 8027CE08 00278A68  11 00 39 B8 */	ps_msub f8, f0, f6, f7
/* 8027CE0C 00278A6C  11 25 2C E0 */	ps_merge11 f9, f5, f5
/* 8027CE10 00278A70  11 45 44 60 */	ps_merge01 f10, f5, f8
/* 8027CE14 00278A74  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 8027CE18 00278A78  11 40 50 50 */	ps_neg f10, f10
/* 8027CE1C 00278A7C  F1 45 00 04 */	psq_st f10, 4(r5), 0, qr0
/* 8027CE20 00278A80  4E 80 00 20 */	blr

.global C_VECHalfAngle
C_VECHalfAngle:
/* 8027CE24 00278A84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027CE28 00278A88  7C 08 02 A6 */	mflr r0
/* 8027CE2C 00278A8C  C0 43 00 00 */	lfs f2, 0(r3)
/* 8027CE30 00278A90  C0 23 00 04 */	lfs f1, 4(r3)
/* 8027CE34 00278A94  C0 03 00 08 */	lfs f0, 8(r3)
/* 8027CE38 00278A98  FC A0 10 50 */	fneg f5, f2
/* 8027CE3C 00278A9C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8027CE40 00278AA0  FC 80 08 50 */	fneg f4, f1
/* 8027CE44 00278AA4  C0 24 00 04 */	lfs f1, 4(r4)
/* 8027CE48 00278AA8  FC 60 00 50 */	fneg f3, f0
/* 8027CE4C 00278AAC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8027CE50 00278AB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027CE54 00278AB4  38 61 00 20 */	addi r3, r1, 0x20
/* 8027CE58 00278AB8  FC 40 10 50 */	fneg f2, f2
/* 8027CE5C 00278ABC  7C 64 1B 78 */	mr r4, r3
/* 8027CE60 00278AC0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8027CE64 00278AC4  FC 20 08 50 */	fneg f1, f1
/* 8027CE68 00278AC8  FC 00 00 50 */	fneg f0, f0
/* 8027CE6C 00278ACC  7C BF 2B 78 */	mr r31, r5
/* 8027CE70 00278AD0  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8027CE74 00278AD4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8027CE78 00278AD8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8027CE7C 00278ADC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8027CE80 00278AE0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8027CE84 00278AE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8027CE88 00278AE8  4B FF FE A1 */	bl PSVECNormalize
/* 8027CE8C 00278AEC  38 61 00 14 */	addi r3, r1, 0x14
/* 8027CE90 00278AF0  7C 64 1B 78 */	mr r4, r3
/* 8027CE94 00278AF4  4B FF FE 95 */	bl PSVECNormalize
/* 8027CE98 00278AF8  38 61 00 20 */	addi r3, r1, 0x20
/* 8027CE9C 00278AFC  38 81 00 14 */	addi r4, r1, 0x14
/* 8027CEA0 00278B00  38 A1 00 08 */	addi r5, r1, 8
/* 8027CEA4 00278B04  4B FF FE 21 */	bl PSVECAdd
/* 8027CEA8 00278B08  38 61 00 08 */	addi r3, r1, 8
/* 8027CEAC 00278B0C  7C 64 1B 78 */	mr r4, r3
/* 8027CEB0 00278B10  4B FF FF 19 */	bl PSVECDotProduct
/* 8027CEB4 00278B14  C0 02 A0 B0 */	lfs f0, lbl_806426B0-_SDA2_BASE_(r2)
/* 8027CEB8 00278B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027CEBC 00278B1C  40 81 00 14 */	ble lbl_8027CED0
/* 8027CEC0 00278B20  7F E4 FB 78 */	mr r4, r31
/* 8027CEC4 00278B24  38 61 00 08 */	addi r3, r1, 8
/* 8027CEC8 00278B28  4B FF FE 61 */	bl PSVECNormalize
/* 8027CECC 00278B2C  48 00 00 1C */	b lbl_8027CEE8
lbl_8027CED0:
/* 8027CED0 00278B30  80 61 00 08 */	lwz r3, 8(r1)
/* 8027CED4 00278B34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8027CED8 00278B38  90 7F 00 00 */	stw r3, 0(r31)
/* 8027CEDC 00278B3C  90 1F 00 04 */	stw r0, 4(r31)
/* 8027CEE0 00278B40  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8027CEE4 00278B44  90 1F 00 08 */	stw r0, 8(r31)
lbl_8027CEE8:
/* 8027CEE8 00278B48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027CEEC 00278B4C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8027CEF0 00278B50  7C 08 03 A6 */	mtlr r0
/* 8027CEF4 00278B54  38 21 00 40 */	addi r1, r1, 0x40
/* 8027CEF8 00278B58  4E 80 00 20 */	blr

.global C_VECReflect
C_VECReflect:
/* 8027CEFC 00278B5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027CF00 00278B60  7C 08 02 A6 */	mflr r0
/* 8027CF04 00278B64  C0 43 00 00 */	lfs f2, 0(r3)
/* 8027CF08 00278B68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027CF0C 00278B6C  C0 23 00 04 */	lfs f1, 4(r3)
/* 8027CF10 00278B70  FC 40 10 50 */	fneg f2, f2
/* 8027CF14 00278B74  C0 03 00 08 */	lfs f0, 8(r3)
/* 8027CF18 00278B78  38 61 00 14 */	addi r3, r1, 0x14
/* 8027CF1C 00278B7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027CF20 00278B80  FC 20 08 50 */	fneg f1, f1
/* 8027CF24 00278B84  FC 00 00 50 */	fneg f0, f0
/* 8027CF28 00278B88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027CF2C 00278B8C  7C 9E 23 78 */	mr r30, r4
/* 8027CF30 00278B90  7C BF 2B 78 */	mr r31, r5
/* 8027CF34 00278B94  7C 64 1B 78 */	mr r4, r3
/* 8027CF38 00278B98  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8027CF3C 00278B9C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8027CF40 00278BA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8027CF44 00278BA4  4B FF FD E5 */	bl PSVECNormalize
/* 8027CF48 00278BA8  7F C3 F3 78 */	mr r3, r30
/* 8027CF4C 00278BAC  38 81 00 08 */	addi r4, r1, 8
/* 8027CF50 00278BB0  4B FF FD D9 */	bl PSVECNormalize
/* 8027CF54 00278BB4  38 61 00 14 */	addi r3, r1, 0x14
/* 8027CF58 00278BB8  38 81 00 08 */	addi r4, r1, 8
/* 8027CF5C 00278BBC  4B FF FE 6D */	bl PSVECDotProduct
/* 8027CF60 00278BC0  C0 62 A0 B4 */	lfs f3, lbl_806426B4-_SDA2_BASE_(r2)
/* 8027CF64 00278BC4  7F E3 FB 78 */	mr r3, r31
/* 8027CF68 00278BC8  C0 41 00 08 */	lfs f2, 8(r1)
/* 8027CF6C 00278BCC  7F E4 FB 78 */	mr r4, r31
/* 8027CF70 00278BD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8027CF74 00278BD4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8027CF78 00278BD8  EC 42 00 72 */	fmuls f2, f2, f1
/* 8027CF7C 00278BDC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027CF80 00278BE0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8027CF84 00278BE4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8027CF88 00278BE8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8027CF8C 00278BEC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8027CF90 00278BF0  EC 42 00 72 */	fmuls f2, f2, f1
/* 8027CF94 00278BF4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027CF98 00278BF8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8027CF9C 00278BFC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8027CFA0 00278C00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8027CFA4 00278C04  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8027CFA8 00278C08  EC 22 00 72 */	fmuls f1, f2, f1
/* 8027CFAC 00278C0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CFB0 00278C10  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8027CFB4 00278C14  4B FF FD 75 */	bl PSVECNormalize
/* 8027CFB8 00278C18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027CFBC 00278C1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027CFC0 00278C20  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027CFC4 00278C24  7C 08 03 A6 */	mtlr r0
/* 8027CFC8 00278C28  38 21 00 30 */	addi r1, r1, 0x30
/* 8027CFCC 00278C2C  4E 80 00 20 */	blr

.global PSVECDistance
PSVECDistance:
/* 8027CFD0 00278C30  E0 03 00 04 */	psq_l f0, 4(r3), 0, qr0
/* 8027CFD4 00278C34  E0 24 00 04 */	psq_l f1, 4(r4), 0, qr0
/* 8027CFD8 00278C38  C0 62 A0 A8 */	lfs f3, lbl_806426A8-_SDA2_BASE_(r2)
/* 8027CFDC 00278C3C  10 40 08 28 */	ps_sub f2, f0, f1
/* 8027CFE0 00278C40  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027CFE4 00278C44  E0 24 00 00 */	psq_l f1, 0(r4), 0, qr0
/* 8027CFE8 00278C48  EC 83 18 28 */	fsubs f4, f3, f3
/* 8027CFEC 00278C4C  10 42 00 B2 */	ps_mul f2, f2, f2
/* 8027CFF0 00278C50  10 00 08 28 */	ps_sub f0, f0, f1
/* 8027CFF4 00278C54  10 20 10 3A */	ps_madd f1, f0, f0, f2
/* 8027CFF8 00278C58  10 21 10 94 */	ps_sum0 f1, f1, f2, f2
/* 8027CFFC 00278C5C  FC 04 08 00 */	fcmpu cr0, f4, f1
/* 8027D000 00278C60  4D 82 00 20 */	beqlr
/* 8027D004 00278C64  FC 00 08 34 */	frsqrte f0, f1
/* 8027D008 00278C68  C0 82 A0 AC */	lfs f4, lbl_806426AC-_SDA2_BASE_(r2)
/* 8027D00C 00278C6C  EC 40 00 32 */	fmuls f2, f0, f0
/* 8027D010 00278C70  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8027D014 00278C74  EC 42 20 7C */	fnmsubs f2, f2, f1, f4
/* 8027D018 00278C78  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027D01C 00278C7C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8027D020 00278C80  4E 80 00 20 */	blr
