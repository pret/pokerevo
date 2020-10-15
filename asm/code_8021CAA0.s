.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8021CAA0
func_8021CAA0:
/* 8021CAA0 00218700  7C C9 03 A6 */	mtctr r6
/* 8021CAA4 00218704  38 84 FF FC */	addi r4, r4, -4
/* 8021CAA8 00218708  38 A5 FF FC */	addi r5, r5, -4
/* 8021CAAC 0021870C  E0 C3 00 00 */	psq_l f6, 0(r3), 0, qr0
/* 8021CAB0 00218710  E0 E3 80 08 */	psq_l f7, 8(r3), 1, qr0
/* 8021CAB4 00218714  E1 03 00 0C */	psq_l f8, 12(r3), 0, qr0
/* 8021CAB8 00218718  E1 23 80 14 */	psq_l f9, 20(r3), 1, qr0
/* 8021CABC 0021871C  E1 43 00 18 */	psq_l f10, 24(r3), 0, qr0
/* 8021CAC0 00218720  E1 63 80 20 */	psq_l f11, 32(r3), 1, qr0
/* 8021CAC4 00218724  E1 83 00 24 */	psq_l f12, 36(r3), 0, qr0
/* 8021CAC8 00218728  E1 A3 80 2C */	psq_l f13, 44(r3), 1, qr0
lbl_8021CACC:
/* 8021CACC 0021872C  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CAD0 00218730  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CAD4 00218734  10 86 60 1C */	ps_madds0 f4, f6, f0, f12
/* 8021CAD8 00218738  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CADC 0021873C  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CAE0 00218740  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CAE4 00218744  10 A7 68 1C */	ps_madds0 f5, f7, f0, f13
/* 8021CAE8 00218748  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CAEC 0021874C  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CAF0 00218750  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CAF4 00218754  42 00 FF D8 */	bdnz lbl_8021CACC
/* 8021CAF8 00218758  4E 80 00 20 */	blr

.global func_8021CAFC
func_8021CAFC:
/* 8021CAFC 0021875C  7C C9 03 A6 */	mtctr r6
/* 8021CB00 00218760  38 84 FF FC */	addi r4, r4, -4
/* 8021CB04 00218764  38 A5 FF FC */	addi r5, r5, -4
/* 8021CB08 00218768  E0 C3 00 00 */	psq_l f6, 0(r3), 0, qr0
/* 8021CB0C 0021876C  E0 E3 80 08 */	psq_l f7, 8(r3), 1, qr0
/* 8021CB10 00218770  E1 03 00 0C */	psq_l f8, 12(r3), 0, qr0
/* 8021CB14 00218774  E1 23 80 14 */	psq_l f9, 20(r3), 1, qr0
/* 8021CB18 00218778  E1 43 00 18 */	psq_l f10, 24(r3), 0, qr0
/* 8021CB1C 0021877C  E1 63 80 20 */	psq_l f11, 32(r3), 1, qr0
/* 8021CB20 00218780  E1 83 00 24 */	psq_l f12, 36(r3), 0, qr0
/* 8021CB24 00218784  E1 A3 80 2C */	psq_l f13, 44(r3), 1, qr0
lbl_8021CB28:
/* 8021CB28 00218788  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CB2C 0021878C  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CB30 00218790  10 86 60 1C */	ps_madds0 f4, f6, f0, f12
/* 8021CB34 00218794  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CB38 00218798  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CB3C 0021879C  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CB40 002187A0  10 A7 68 1C */	ps_madds0 f5, f7, f0, f13
/* 8021CB44 002187A4  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CB48 002187A8  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CB4C 002187AC  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CB50 002187B0  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CB54 002187B4  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CB58 002187B8  10 86 00 18 */	ps_muls0 f4, f6, f0
/* 8021CB5C 002187BC  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CB60 002187C0  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CB64 002187C4  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CB68 002187C8  10 A7 00 18 */	ps_muls0 f5, f7, f0
/* 8021CB6C 002187CC  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CB70 002187D0  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CB74 002187D4  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CB78 002187D8  42 00 FF B0 */	bdnz lbl_8021CB28
/* 8021CB7C 002187DC  4E 80 00 20 */	blr

.global func_8021CB80
func_8021CB80:
/* 8021CB80 002187E0  7C C9 03 A6 */	mtctr r6
/* 8021CB84 002187E4  38 84 FF FC */	addi r4, r4, -4
/* 8021CB88 002187E8  38 A5 FF FC */	addi r5, r5, -4
/* 8021CB8C 002187EC  E0 C3 00 00 */	psq_l f6, 0(r3), 0, qr0
/* 8021CB90 002187F0  E0 E3 80 08 */	psq_l f7, 8(r3), 1, qr0
/* 8021CB94 002187F4  E1 03 00 0C */	psq_l f8, 12(r3), 0, qr0
/* 8021CB98 002187F8  E1 23 80 14 */	psq_l f9, 20(r3), 1, qr0
/* 8021CB9C 002187FC  E1 43 00 18 */	psq_l f10, 24(r3), 0, qr0
/* 8021CBA0 00218800  E1 63 80 20 */	psq_l f11, 32(r3), 1, qr0
/* 8021CBA4 00218804  E1 83 00 24 */	psq_l f12, 36(r3), 0, qr0
/* 8021CBA8 00218808  E1 A3 80 2C */	psq_l f13, 44(r3), 1, qr0
lbl_8021CBAC:
/* 8021CBAC 0021880C  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CBB0 00218810  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CBB4 00218814  10 86 60 1C */	ps_madds0 f4, f6, f0, f12
/* 8021CBB8 00218818  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CBBC 0021881C  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CBC0 00218820  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CBC4 00218824  10 A7 68 1C */	ps_madds0 f5, f7, f0, f13
/* 8021CBC8 00218828  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CBCC 0021882C  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CBD0 00218830  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CBD4 00218834  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CBD8 00218838  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CBDC 0021883C  10 86 00 18 */	ps_muls0 f4, f6, f0
/* 8021CBE0 00218840  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CBE4 00218844  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CBE8 00218848  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CBEC 0021884C  10 A7 00 18 */	ps_muls0 f5, f7, f0
/* 8021CBF0 00218850  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CBF4 00218854  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CBF8 00218858  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CBFC 0021885C  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CC00 00218860  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CC04 00218864  10 86 00 18 */	ps_muls0 f4, f6, f0
/* 8021CC08 00218868  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CC0C 0021886C  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CC10 00218870  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CC14 00218874  10 A7 00 18 */	ps_muls0 f5, f7, f0
/* 8021CC18 00218878  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CC1C 0021887C  E4 04 00 04 */	psq_lu f0, 4(r4), 0, qr0
/* 8021CC20 00218880  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CC24 00218884  E4 24 80 08 */	psq_lu f1, 8(r4), 1, qr0
/* 8021CC28 00218888  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CC2C 0021888C  10 86 00 18 */	ps_muls0 f4, f6, f0
/* 8021CC30 00218890  10 88 20 1E */	ps_madds1 f4, f8, f0, f4
/* 8021CC34 00218894  10 4A 20 5C */	ps_madds0 f2, f10, f1, f4
/* 8021CC38 00218898  F4 45 00 04 */	psq_stu f2, 4(r5), 0, qr0
/* 8021CC3C 0021889C  10 A7 00 18 */	ps_muls0 f5, f7, f0
/* 8021CC40 002188A0  10 A9 28 1E */	ps_madds1 f5, f9, f0, f5
/* 8021CC44 002188A4  10 6B 28 5C */	ps_madds0 f3, f11, f1, f5
/* 8021CC48 002188A8  F4 65 80 08 */	psq_stu f3, 8(r5), 1, qr0
/* 8021CC4C 002188AC  42 00 FF 60 */	bdnz lbl_8021CBAC
/* 8021CC50 002188B0  4E 80 00 20 */	blr

.global func_8021CC54
func_8021CC54:
/* 8021CC54 002188B4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8021CC58 002188B8  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8021CC5C 002188BC  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8021CC60 002188C0  DA 01 00 18 */	stfd f16, 0x18(r1)
/* 8021CC64 002188C4  DA 21 00 20 */	stfd f17, 0x20(r1)
/* 8021CC68 002188C8  DA 41 00 28 */	stfd f18, 0x28(r1)
/* 8021CC6C 002188CC  DA 61 00 30 */	stfd f19, 0x30(r1)
/* 8021CC70 002188D0  DA 81 00 38 */	stfd f20, 0x38(r1)
/* 8021CC74 002188D4  DA A1 00 40 */	stfd f21, 0x40(r1)
/* 8021CC78 002188D8  DA C1 00 48 */	stfd f22, 0x48(r1)
/* 8021CC7C 002188DC  DA E1 00 50 */	stfd f23, 0x50(r1)
/* 8021CC80 002188E0  DB 01 00 58 */	stfd f24, 0x58(r1)
/* 8021CC84 002188E4  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 8021CC88 002188E8  DB 41 00 68 */	stfd f26, 0x68(r1)
/* 8021CC8C 002188EC  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8021CC90 002188F0  DB 81 00 78 */	stfd f28, 0x78(r1)
/* 8021CC94 002188F4  7D 09 03 A6 */	mtctr r8
/* 8021CC98 002188F8  38 C6 FF FC */	addi r6, r6, -4
/* 8021CC9C 002188FC  38 E7 FF FC */	addi r7, r7, -4
/* 8021CCA0 00218900  38 A5 FF FE */	addi r5, r5, -2
/* 8021CCA4 00218904  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 8021CCA8 00218908  E0 A3 80 08 */	psq_l f5, 8(r3), 1, qr0
/* 8021CCAC 0021890C  E0 C3 00 0C */	psq_l f6, 12(r3), 0, qr0
/* 8021CCB0 00218910  E0 E3 80 14 */	psq_l f7, 20(r3), 1, qr0
/* 8021CCB4 00218914  E1 03 00 18 */	psq_l f8, 24(r3), 0, qr0
/* 8021CCB8 00218918  E1 23 80 20 */	psq_l f9, 32(r3), 1, qr0
/* 8021CCBC 0021891C  E1 43 00 24 */	psq_l f10, 36(r3), 0, qr0
/* 8021CCC0 00218920  E1 63 80 2C */	psq_l f11, 44(r3), 1, qr0
/* 8021CCC4 00218924  E1 84 00 00 */	psq_l f12, 0(r4), 0, qr0
/* 8021CCC8 00218928  E1 A4 80 08 */	psq_l f13, 8(r4), 1, qr0
/* 8021CCCC 0021892C  E1 C4 00 0C */	psq_l f14, 12(r4), 0, qr0
/* 8021CCD0 00218930  E1 E4 80 14 */	psq_l f15, 20(r4), 1, qr0
/* 8021CCD4 00218934  E2 04 00 18 */	psq_l f16, 24(r4), 0, qr0
/* 8021CCD8 00218938  E2 24 80 20 */	psq_l f17, 32(r4), 1, qr0
/* 8021CCDC 0021893C  E2 44 00 24 */	psq_l f18, 36(r4), 0, qr0
/* 8021CCE0 00218940  E2 64 80 2C */	psq_l f19, 44(r4), 1, qr0
/* 8021CCE4 00218944  10 84 60 28 */	ps_sub f4, f4, f12
/* 8021CCE8 00218948  10 A5 68 28 */	ps_sub f5, f5, f13
/* 8021CCEC 0021894C  10 C6 70 28 */	ps_sub f6, f6, f14
/* 8021CCF0 00218950  10 E7 78 28 */	ps_sub f7, f7, f15
/* 8021CCF4 00218954  11 08 80 28 */	ps_sub f8, f8, f16
/* 8021CCF8 00218958  11 29 88 28 */	ps_sub f9, f9, f17
/* 8021CCFC 0021895C  11 4A 90 28 */	ps_sub f10, f10, f18
/* 8021CD00 00218960  11 6B 98 28 */	ps_sub f11, f11, f19
lbl_8021CD04:
/* 8021CD04 00218964  E7 85 B0 02 */	psq_lu f28, 2(r5), 1, qr3
/* 8021CD08 00218968  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021CD0C 0021896C  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021CD10 00218970  12 84 67 1C */	ps_madds0 f20, f4, f28, f12
/* 8021CD14 00218974  12 A5 6F 1C */	ps_madds0 f21, f5, f28, f13
/* 8021CD18 00218978  12 C6 77 1C */	ps_madds0 f22, f6, f28, f14
/* 8021CD1C 0021897C  12 E7 7F 1C */	ps_madds0 f23, f7, f28, f15
/* 8021CD20 00218980  13 08 87 1C */	ps_madds0 f24, f8, f28, f16
/* 8021CD24 00218984  13 29 8F 1C */	ps_madds0 f25, f9, f28, f17
/* 8021CD28 00218988  13 4A 97 1C */	ps_madds0 f26, f10, f28, f18
/* 8021CD2C 0021898C  13 6B 9F 1C */	ps_madds0 f27, f11, f28, f19
/* 8021CD30 00218990  10 54 D0 1C */	ps_madds0 f2, f20, f0, f26
/* 8021CD34 00218994  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021CD38 00218998  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021CD3C 0021899C  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021CD40 002189A0  10 75 D8 1C */	ps_madds0 f3, f21, f0, f27
/* 8021CD44 002189A4  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021CD48 002189A8  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021CD4C 002189AC  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021CD50 002189B0  42 00 FF B4 */	bdnz lbl_8021CD04
/* 8021CD54 002189B4  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8021CD58 002189B8  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8021CD5C 002189BC  CA 01 00 18 */	lfd f16, 0x18(r1)
/* 8021CD60 002189C0  CA 21 00 20 */	lfd f17, 0x20(r1)
/* 8021CD64 002189C4  CA 41 00 28 */	lfd f18, 0x28(r1)
/* 8021CD68 002189C8  CA 61 00 30 */	lfd f19, 0x30(r1)
/* 8021CD6C 002189CC  CA 81 00 38 */	lfd f20, 0x38(r1)
/* 8021CD70 002189D0  CA A1 00 40 */	lfd f21, 0x40(r1)
/* 8021CD74 002189D4  CA C1 00 48 */	lfd f22, 0x48(r1)
/* 8021CD78 002189D8  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 8021CD7C 002189DC  CB 01 00 58 */	lfd f24, 0x58(r1)
/* 8021CD80 002189E0  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8021CD84 002189E4  CB 41 00 68 */	lfd f26, 0x68(r1)
/* 8021CD88 002189E8  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8021CD8C 002189EC  CB 81 00 78 */	lfd f28, 0x78(r1)
/* 8021CD90 002189F0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8021CD94 002189F4  4E 80 00 20 */	blr

.global func_8021CD98
func_8021CD98:
/* 8021CD98 002189F8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8021CD9C 002189FC  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8021CDA0 00218A00  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8021CDA4 00218A04  DA 01 00 18 */	stfd f16, 0x18(r1)
/* 8021CDA8 00218A08  DA 21 00 20 */	stfd f17, 0x20(r1)
/* 8021CDAC 00218A0C  DA 41 00 28 */	stfd f18, 0x28(r1)
/* 8021CDB0 00218A10  DA 61 00 30 */	stfd f19, 0x30(r1)
/* 8021CDB4 00218A14  DA 81 00 38 */	stfd f20, 0x38(r1)
/* 8021CDB8 00218A18  DA A1 00 40 */	stfd f21, 0x40(r1)
/* 8021CDBC 00218A1C  DA C1 00 48 */	stfd f22, 0x48(r1)
/* 8021CDC0 00218A20  DA E1 00 50 */	stfd f23, 0x50(r1)
/* 8021CDC4 00218A24  DB 01 00 58 */	stfd f24, 0x58(r1)
/* 8021CDC8 00218A28  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 8021CDCC 00218A2C  DB 41 00 68 */	stfd f26, 0x68(r1)
/* 8021CDD0 00218A30  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8021CDD4 00218A34  DB 81 00 78 */	stfd f28, 0x78(r1)
/* 8021CDD8 00218A38  7D 09 03 A6 */	mtctr r8
/* 8021CDDC 00218A3C  38 C6 FF FC */	addi r6, r6, -4
/* 8021CDE0 00218A40  38 E7 FF FC */	addi r7, r7, -4
/* 8021CDE4 00218A44  38 A5 FF FE */	addi r5, r5, -2
/* 8021CDE8 00218A48  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 8021CDEC 00218A4C  E0 A3 80 08 */	psq_l f5, 8(r3), 1, qr0
/* 8021CDF0 00218A50  E0 C3 00 0C */	psq_l f6, 12(r3), 0, qr0
/* 8021CDF4 00218A54  E0 E3 80 14 */	psq_l f7, 20(r3), 1, qr0
/* 8021CDF8 00218A58  E1 03 00 18 */	psq_l f8, 24(r3), 0, qr0
/* 8021CDFC 00218A5C  E1 23 80 20 */	psq_l f9, 32(r3), 1, qr0
/* 8021CE00 00218A60  E1 43 00 24 */	psq_l f10, 36(r3), 0, qr0
/* 8021CE04 00218A64  E1 63 80 2C */	psq_l f11, 44(r3), 1, qr0
/* 8021CE08 00218A68  E1 84 00 00 */	psq_l f12, 0(r4), 0, qr0
/* 8021CE0C 00218A6C  E1 A4 80 08 */	psq_l f13, 8(r4), 1, qr0
/* 8021CE10 00218A70  E1 C4 00 0C */	psq_l f14, 12(r4), 0, qr0
/* 8021CE14 00218A74  E1 E4 80 14 */	psq_l f15, 20(r4), 1, qr0
/* 8021CE18 00218A78  E2 04 00 18 */	psq_l f16, 24(r4), 0, qr0
/* 8021CE1C 00218A7C  E2 24 80 20 */	psq_l f17, 32(r4), 1, qr0
/* 8021CE20 00218A80  E2 44 00 24 */	psq_l f18, 36(r4), 0, qr0
/* 8021CE24 00218A84  E2 64 80 2C */	psq_l f19, 44(r4), 1, qr0
/* 8021CE28 00218A88  10 84 60 28 */	ps_sub f4, f4, f12
/* 8021CE2C 00218A8C  10 A5 68 28 */	ps_sub f5, f5, f13
/* 8021CE30 00218A90  10 C6 70 28 */	ps_sub f6, f6, f14
/* 8021CE34 00218A94  10 E7 78 28 */	ps_sub f7, f7, f15
/* 8021CE38 00218A98  11 08 80 28 */	ps_sub f8, f8, f16
/* 8021CE3C 00218A9C  11 29 88 28 */	ps_sub f9, f9, f17
/* 8021CE40 00218AA0  11 4A 90 28 */	ps_sub f10, f10, f18
/* 8021CE44 00218AA4  11 6B 98 28 */	ps_sub f11, f11, f19
lbl_8021CE48:
/* 8021CE48 00218AA8  E7 85 B0 02 */	psq_lu f28, 2(r5), 1, qr3
/* 8021CE4C 00218AAC  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021CE50 00218AB0  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021CE54 00218AB4  12 84 67 1C */	ps_madds0 f20, f4, f28, f12
/* 8021CE58 00218AB8  12 A5 6F 1C */	ps_madds0 f21, f5, f28, f13
/* 8021CE5C 00218ABC  12 C6 77 1C */	ps_madds0 f22, f6, f28, f14
/* 8021CE60 00218AC0  12 E7 7F 1C */	ps_madds0 f23, f7, f28, f15
/* 8021CE64 00218AC4  13 08 87 1C */	ps_madds0 f24, f8, f28, f16
/* 8021CE68 00218AC8  13 29 8F 1C */	ps_madds0 f25, f9, f28, f17
/* 8021CE6C 00218ACC  13 4A 97 1C */	ps_madds0 f26, f10, f28, f18
/* 8021CE70 00218AD0  13 6B 9F 1C */	ps_madds0 f27, f11, f28, f19
/* 8021CE74 00218AD4  10 54 D0 1C */	ps_madds0 f2, f20, f0, f26
/* 8021CE78 00218AD8  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021CE7C 00218ADC  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021CE80 00218AE0  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021CE84 00218AE4  10 75 D8 1C */	ps_madds0 f3, f21, f0, f27
/* 8021CE88 00218AE8  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021CE8C 00218AEC  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021CE90 00218AF0  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021CE94 00218AF4  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021CE98 00218AF8  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021CE9C 00218AFC  10 54 00 18 */	ps_muls0 f2, f20, f0
/* 8021CEA0 00218B00  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021CEA4 00218B04  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021CEA8 00218B08  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021CEAC 00218B0C  10 75 00 18 */	ps_muls0 f3, f21, f0
/* 8021CEB0 00218B10  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021CEB4 00218B14  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021CEB8 00218B18  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021CEBC 00218B1C  42 00 FF 8C */	bdnz lbl_8021CE48
/* 8021CEC0 00218B20  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8021CEC4 00218B24  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8021CEC8 00218B28  CA 01 00 18 */	lfd f16, 0x18(r1)
/* 8021CECC 00218B2C  CA 21 00 20 */	lfd f17, 0x20(r1)
/* 8021CED0 00218B30  CA 41 00 28 */	lfd f18, 0x28(r1)
/* 8021CED4 00218B34  CA 61 00 30 */	lfd f19, 0x30(r1)
/* 8021CED8 00218B38  CA 81 00 38 */	lfd f20, 0x38(r1)
/* 8021CEDC 00218B3C  CA A1 00 40 */	lfd f21, 0x40(r1)
/* 8021CEE0 00218B40  CA C1 00 48 */	lfd f22, 0x48(r1)
/* 8021CEE4 00218B44  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 8021CEE8 00218B48  CB 01 00 58 */	lfd f24, 0x58(r1)
/* 8021CEEC 00218B4C  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8021CEF0 00218B50  CB 41 00 68 */	lfd f26, 0x68(r1)
/* 8021CEF4 00218B54  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8021CEF8 00218B58  CB 81 00 78 */	lfd f28, 0x78(r1)
/* 8021CEFC 00218B5C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8021CF00 00218B60  4E 80 00 20 */	blr

.global func_8021CF04
func_8021CF04:
/* 8021CF04 00218B64  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8021CF08 00218B68  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8021CF0C 00218B6C  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8021CF10 00218B70  DA 01 00 18 */	stfd f16, 0x18(r1)
/* 8021CF14 00218B74  DA 21 00 20 */	stfd f17, 0x20(r1)
/* 8021CF18 00218B78  DA 41 00 28 */	stfd f18, 0x28(r1)
/* 8021CF1C 00218B7C  DA 61 00 30 */	stfd f19, 0x30(r1)
/* 8021CF20 00218B80  DA 81 00 38 */	stfd f20, 0x38(r1)
/* 8021CF24 00218B84  DA A1 00 40 */	stfd f21, 0x40(r1)
/* 8021CF28 00218B88  DA C1 00 48 */	stfd f22, 0x48(r1)
/* 8021CF2C 00218B8C  DA E1 00 50 */	stfd f23, 0x50(r1)
/* 8021CF30 00218B90  DB 01 00 58 */	stfd f24, 0x58(r1)
/* 8021CF34 00218B94  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 8021CF38 00218B98  DB 41 00 68 */	stfd f26, 0x68(r1)
/* 8021CF3C 00218B9C  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8021CF40 00218BA0  DB 81 00 78 */	stfd f28, 0x78(r1)
/* 8021CF44 00218BA4  7D 09 03 A6 */	mtctr r8
/* 8021CF48 00218BA8  38 C6 FF FC */	addi r6, r6, -4
/* 8021CF4C 00218BAC  38 E7 FF FC */	addi r7, r7, -4
/* 8021CF50 00218BB0  38 A5 FF FE */	addi r5, r5, -2
/* 8021CF54 00218BB4  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 8021CF58 00218BB8  E0 A3 80 08 */	psq_l f5, 8(r3), 1, qr0
/* 8021CF5C 00218BBC  E0 C3 00 0C */	psq_l f6, 12(r3), 0, qr0
/* 8021CF60 00218BC0  E0 E3 80 14 */	psq_l f7, 20(r3), 1, qr0
/* 8021CF64 00218BC4  E1 03 00 18 */	psq_l f8, 24(r3), 0, qr0
/* 8021CF68 00218BC8  E1 23 80 20 */	psq_l f9, 32(r3), 1, qr0
/* 8021CF6C 00218BCC  E1 43 00 24 */	psq_l f10, 36(r3), 0, qr0
/* 8021CF70 00218BD0  E1 63 80 2C */	psq_l f11, 44(r3), 1, qr0
/* 8021CF74 00218BD4  E1 84 00 00 */	psq_l f12, 0(r4), 0, qr0
/* 8021CF78 00218BD8  E1 A4 80 08 */	psq_l f13, 8(r4), 1, qr0
/* 8021CF7C 00218BDC  E1 C4 00 0C */	psq_l f14, 12(r4), 0, qr0
/* 8021CF80 00218BE0  E1 E4 80 14 */	psq_l f15, 20(r4), 1, qr0
/* 8021CF84 00218BE4  E2 04 00 18 */	psq_l f16, 24(r4), 0, qr0
/* 8021CF88 00218BE8  E2 24 80 20 */	psq_l f17, 32(r4), 1, qr0
/* 8021CF8C 00218BEC  E2 44 00 24 */	psq_l f18, 36(r4), 0, qr0
/* 8021CF90 00218BF0  E2 64 80 2C */	psq_l f19, 44(r4), 1, qr0
/* 8021CF94 00218BF4  10 84 60 28 */	ps_sub f4, f4, f12
/* 8021CF98 00218BF8  10 A5 68 28 */	ps_sub f5, f5, f13
/* 8021CF9C 00218BFC  10 C6 70 28 */	ps_sub f6, f6, f14
/* 8021CFA0 00218C00  10 E7 78 28 */	ps_sub f7, f7, f15
/* 8021CFA4 00218C04  11 08 80 28 */	ps_sub f8, f8, f16
/* 8021CFA8 00218C08  11 29 88 28 */	ps_sub f9, f9, f17
/* 8021CFAC 00218C0C  11 4A 90 28 */	ps_sub f10, f10, f18
/* 8021CFB0 00218C10  11 6B 98 28 */	ps_sub f11, f11, f19
lbl_8021CFB4:
/* 8021CFB4 00218C14  E7 85 B0 02 */	psq_lu f28, 2(r5), 1, qr3
/* 8021CFB8 00218C18  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021CFBC 00218C1C  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021CFC0 00218C20  12 84 67 1C */	ps_madds0 f20, f4, f28, f12
/* 8021CFC4 00218C24  12 A5 6F 1C */	ps_madds0 f21, f5, f28, f13
/* 8021CFC8 00218C28  12 C6 77 1C */	ps_madds0 f22, f6, f28, f14
/* 8021CFCC 00218C2C  12 E7 7F 1C */	ps_madds0 f23, f7, f28, f15
/* 8021CFD0 00218C30  13 08 87 1C */	ps_madds0 f24, f8, f28, f16
/* 8021CFD4 00218C34  13 29 8F 1C */	ps_madds0 f25, f9, f28, f17
/* 8021CFD8 00218C38  13 4A 97 1C */	ps_madds0 f26, f10, f28, f18
/* 8021CFDC 00218C3C  13 6B 9F 1C */	ps_madds0 f27, f11, f28, f19
/* 8021CFE0 00218C40  10 54 D0 1C */	ps_madds0 f2, f20, f0, f26
/* 8021CFE4 00218C44  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021CFE8 00218C48  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021CFEC 00218C4C  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021CFF0 00218C50  10 75 D8 1C */	ps_madds0 f3, f21, f0, f27
/* 8021CFF4 00218C54  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021CFF8 00218C58  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021CFFC 00218C5C  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021D000 00218C60  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021D004 00218C64  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021D008 00218C68  10 54 00 18 */	ps_muls0 f2, f20, f0
/* 8021D00C 00218C6C  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021D010 00218C70  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021D014 00218C74  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021D018 00218C78  10 75 00 18 */	ps_muls0 f3, f21, f0
/* 8021D01C 00218C7C  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021D020 00218C80  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021D024 00218C84  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021D028 00218C88  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021D02C 00218C8C  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021D030 00218C90  10 54 00 18 */	ps_muls0 f2, f20, f0
/* 8021D034 00218C94  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021D038 00218C98  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021D03C 00218C9C  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021D040 00218CA0  10 75 00 18 */	ps_muls0 f3, f21, f0
/* 8021D044 00218CA4  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021D048 00218CA8  E4 06 00 04 */	psq_lu f0, 4(r6), 0, qr0
/* 8021D04C 00218CAC  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021D050 00218CB0  E4 26 80 08 */	psq_lu f1, 8(r6), 1, qr0
/* 8021D054 00218CB4  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021D058 00218CB8  10 54 00 18 */	ps_muls0 f2, f20, f0
/* 8021D05C 00218CBC  10 56 10 1E */	ps_madds1 f2, f22, f0, f2
/* 8021D060 00218CC0  10 58 10 5C */	ps_madds0 f2, f24, f1, f2
/* 8021D064 00218CC4  F4 47 00 04 */	psq_stu f2, 4(r7), 0, qr0
/* 8021D068 00218CC8  10 75 00 18 */	ps_muls0 f3, f21, f0
/* 8021D06C 00218CCC  10 77 18 1E */	ps_madds1 f3, f23, f0, f3
/* 8021D070 00218CD0  10 79 18 5C */	ps_madds0 f3, f25, f1, f3
/* 8021D074 00218CD4  F4 67 80 08 */	psq_stu f3, 8(r7), 1, qr0
/* 8021D078 00218CD8  42 00 FF 3C */	bdnz lbl_8021CFB4
/* 8021D07C 00218CDC  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8021D080 00218CE0  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8021D084 00218CE4  CA 01 00 18 */	lfd f16, 0x18(r1)
/* 8021D088 00218CE8  CA 21 00 20 */	lfd f17, 0x20(r1)
/* 8021D08C 00218CEC  CA 41 00 28 */	lfd f18, 0x28(r1)
/* 8021D090 00218CF0  CA 61 00 30 */	lfd f19, 0x30(r1)
/* 8021D094 00218CF4  CA 81 00 38 */	lfd f20, 0x38(r1)
/* 8021D098 00218CF8  CA A1 00 40 */	lfd f21, 0x40(r1)
/* 8021D09C 00218CFC  CA C1 00 48 */	lfd f22, 0x48(r1)
/* 8021D0A0 00218D00  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 8021D0A4 00218D04  CB 01 00 58 */	lfd f24, 0x58(r1)
/* 8021D0A8 00218D08  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8021D0AC 00218D0C  CB 41 00 68 */	lfd f26, 0x68(r1)
/* 8021D0B0 00218D10  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8021D0B4 00218D14  CB 81 00 78 */	lfd f28, 0x78(r1)
/* 8021D0B8 00218D18  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8021D0BC 00218D1C  4E 80 00 20 */	blr

.global func_8021D0C0
func_8021D0C0:
/* 8021D0C0 00218D20  38 A0 00 01 */	li r5, 1
/* 8021D0C4 00218D24  38 6D A2 80 */	addi r3, r13, lbl_8063F540-_SDA_BASE_
/* 8021D0C8 00218D28  38 80 00 04 */	li r4, 4
/* 8021D0CC 00218D2C  38 00 00 00 */	li r0, 0
/* 8021D0D0 00218D30  98 AD A2 80 */	stb r5, lbl_8063F540-_SDA_BASE_(r13)
/* 8021D0D4 00218D34  B0 83 00 02 */	sth r4, 2(r3)
/* 8021D0D8 00218D38  98 03 00 04 */	stb r0, 4(r3)
/* 8021D0DC 00218D3C  4E 80 00 20 */	blr
