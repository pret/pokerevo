.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

lbl_8023B64C:
/* 8023B64C 002372AC  80 0D A3 D8 */	lwz r0, render_context_ptr-_SDA_BASE_(r13)
/* 8023B650 002372B0  2C 00 00 00 */	cmpwi r0, 0
/* 8023B654 002372B4  4D 82 00 20 */	beqlr
/* 8023B658 002372B8  3C 80 80 49 */	lis r4, lbl_804967A0@ha
/* 8023B65C 002372BC  88 AD A4 8A */	lbz r5, lbl_8063F74A-_SDA_BASE_(r13)
/* 8023B660 002372C0  38 C0 00 00 */	li r6, 0
/* 8023B664 002372C4  38 84 67 A0 */	addi r4, r4, lbl_804967A0@l
/* 8023B668 002372C8  48 00 00 34 */	b lbl_8023B69C
lbl_8023B66C:
/* 8023B66C 002372CC  54 C0 1D 78 */	rlwinm r0, r6, 3, 0x15, 0x1c
/* 8023B670 002372D0  7C E4 02 14 */	add r7, r4, r0
/* 8023B674 002372D4  7C 04 02 2E */	lhzx r0, r4, r0
/* 8023B678 002372D8  7C 00 18 40 */	cmplw r0, r3
/* 8023B67C 002372DC  41 81 00 1C */	bgt lbl_8023B698
/* 8023B680 002372E0  A0 07 00 02 */	lhz r0, 2(r7)
/* 8023B684 002372E4  7C 00 18 40 */	cmplw r0, r3
/* 8023B688 002372E8  41 80 00 10 */	blt lbl_8023B698
/* 8023B68C 002372EC  81 87 00 04 */	lwz r12, 4(r7)
/* 8023B690 002372F0  7D 89 03 A6 */	mtctr r12
/* 8023B694 002372F4  4E 80 04 20 */	bctr
lbl_8023B698:
/* 8023B698 002372F8  38 C6 00 01 */	addi r6, r6, 1
lbl_8023B69C:
/* 8023B69C 002372FC  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8023B6A0 00237300  7C 00 28 40 */	cmplw r0, r5
/* 8023B6A4 00237304  41 80 FF C8 */	blt lbl_8023B66C
/* 8023B6A8 00237308  B0 6D A4 84 */	sth r3, lbl_8063F744-_SDA_BASE_(r13)
/* 8023B6AC 0023730C  4E 80 00 20 */	blr

.global func_8023B6B0
func_8023B6B0:
/* 8023B6B0 00237310  A0 0D A4 80 */	lhz r0, lbl_8063F740-_SDA_BASE_(r13)
/* 8023B6B4 00237314  B0 0D A4 84 */	sth r0, lbl_8063F744-_SDA_BASE_(r13)
/* 8023B6B8 00237318  4E 80 00 20 */	blr

.global func_8023B6BC
func_8023B6BC:
/* 8023B6BC 0023731C  A0 6D A4 88 */	lhz r3, lbl_8063F748-_SDA_BASE_(r13)
/* 8023B6C0 00237320  38 00 00 01 */	li r0, 1
/* 8023B6C4 00237324  28 03 FF FF */	cmplwi r3, 0xffff
/* 8023B6C8 00237328  41 82 00 0C */	beq lbl_8023B6D4
/* 8023B6CC 0023732C  38 03 00 01 */	addi r0, r3, 1
/* 8023B6D0 00237330  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8023B6D4:
/* 8023B6D4 00237334  A0 8D A4 7E */	lhz r4, lbl_8063F73E-_SDA_BASE_(r13)
/* 8023B6D8 00237338  A0 AD A4 86 */	lhz r5, lbl_8063F746-_SDA_BASE_(r13)
/* 8023B6DC 0023733C  38 64 08 00 */	addi r3, r4, 0x800
/* 8023B6E0 00237340  B0 0D A4 88 */	sth r0, lbl_8063F748-_SDA_BASE_(r13)
/* 8023B6E4 00237344  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8023B6E8 00237348  7C 00 28 40 */	cmplw r0, r5
/* 8023B6EC 0023734C  B0 8D A4 80 */	sth r4, lbl_8063F740-_SDA_BASE_(r13)
/* 8023B6F0 00237350  B0 6D A4 82 */	sth r3, lbl_8063F742-_SDA_BASE_(r13)
/* 8023B6F4 00237354  4D 80 00 20 */	bltlr
/* 8023B6F8 00237358  7C 05 00 50 */	subf r0, r5, r0
/* 8023B6FC 0023735C  B0 0D A4 82 */	sth r0, lbl_8063F742-_SDA_BASE_(r13)
/* 8023B700 00237360  4E 80 00 20 */	blr

.global func_8023B704
func_8023B704:
/* 8023B704 00237364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023B708 00237368  7C 08 02 A6 */	mflr r0
/* 8023B70C 0023736C  3C 80 00 01 */	lis r4, 0x0000E000@ha
/* 8023B710 00237370  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023B714 00237374  38 04 E0 00 */	addi r0, r4, 0x0000E000@l
/* 8023B718 00237378  38 80 00 01 */	li r4, 1
/* 8023B71C 0023737C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023B720 00237380  3B E0 00 00 */	li r31, 0
/* 8023B724 00237384  B3 ED A4 84 */	sth r31, lbl_8063F744-_SDA_BASE_(r13)
/* 8023B728 00237388  B0 8D A4 7E */	sth r4, lbl_8063F73E-_SDA_BASE_(r13)
/* 8023B72C 0023738C  B0 0D A4 86 */	sth r0, lbl_8063F746-_SDA_BASE_(r13)
/* 8023B730 00237390  B3 ED A4 88 */	sth r31, lbl_8063F748-_SDA_BASE_(r13)
/* 8023B734 00237394  4B FF FF 89 */	bl func_8023B6BC
/* 8023B738 00237398  3C 80 80 49 */	lis r4, lbl_804967A0@ha
/* 8023B73C 0023739C  3C 60 80 24 */	lis r3, lbl_8023B64C@ha
/* 8023B740 002373A0  38 84 67 A0 */	addi r4, r4, lbl_804967A0@l
/* 8023B744 002373A4  9B ED A4 8A */	stb r31, lbl_8063F74A-_SDA_BASE_(r13)
/* 8023B748 002373A8  38 63 B6 4C */	addi r3, r3, lbl_8023B64C@l
/* 8023B74C 002373AC  93 E4 00 04 */	stw r31, 4(r4)
/* 8023B750 002373B0  93 E4 00 0C */	stw r31, 0xc(r4)
/* 8023B754 002373B4  93 E4 00 14 */	stw r31, 0x14(r4)
/* 8023B758 002373B8  93 E4 00 1C */	stw r31, 0x1c(r4)
/* 8023B75C 002373BC  48 04 55 85 */	bl GXSetDrawSyncCallback
/* 8023B760 002373C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023B764 002373C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023B768 002373C8  7C 08 03 A6 */	mtlr r0
/* 8023B76C 002373CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023B770 002373D0  4E 80 00 20 */	blr

.global func_8023B774
func_8023B774:
/* 8023B774 002373D4  A0 0D A4 7E */	lhz r0, lbl_8063F73E-_SDA_BASE_(r13)
/* 8023B778 002373D8  7C 00 20 40 */	cmplw r0, r4
/* 8023B77C 002373DC  40 81 00 1C */	ble lbl_8023B798
/* 8023B780 002373E0  7C 03 20 40 */	cmplw r3, r4
/* 8023B784 002373E4  40 81 00 0C */	ble lbl_8023B790
/* 8023B788 002373E8  7C 03 00 40 */	cmplw r3, r0
/* 8023B78C 002373EC  40 81 00 24 */	ble lbl_8023B7B0
lbl_8023B790:
/* 8023B790 002373F0  38 60 00 01 */	li r3, 1
/* 8023B794 002373F4  4E 80 00 20 */	blr
lbl_8023B798:
/* 8023B798 002373F8  7C 03 00 40 */	cmplw r3, r0
/* 8023B79C 002373FC  40 81 00 14 */	ble lbl_8023B7B0
/* 8023B7A0 00237400  7C 03 20 40 */	cmplw r3, r4
/* 8023B7A4 00237404  41 81 00 0C */	bgt lbl_8023B7B0
/* 8023B7A8 00237408  38 60 00 01 */	li r3, 1
/* 8023B7AC 0023740C  4E 80 00 20 */	blr
lbl_8023B7B0:
/* 8023B7B0 00237410  38 60 00 00 */	li r3, 0
/* 8023B7B4 00237414  4E 80 00 20 */	blr

.global func_8023B7B8
func_8023B7B8:
/* 8023B7B8 00237418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023B7BC 0023741C  7C 08 02 A6 */	mflr r0
/* 8023B7C0 00237420  54 65 84 3E */	srwi r5, r3, 0x10
/* 8023B7C4 00237424  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023B7C8 00237428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023B7CC 0023742C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8023B7D0 00237430  A0 8D A4 88 */	lhz r4, lbl_8063F748-_SDA_BASE_(r13)
/* 8023B7D4 00237434  7C 04 28 40 */	cmplw r4, r5
/* 8023B7D8 00237438  40 80 00 24 */	bge lbl_8023B7FC
/* 8023B7DC 0023743C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8023B7E0 00237440  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 8023B7E4 00237444  7C 05 00 50 */	subf r0, r5, r0
/* 8023B7E8 00237448  7C 00 22 14 */	add r0, r0, r4
/* 8023B7EC 0023744C  2C 00 00 01 */	cmpwi r0, 1
/* 8023B7F0 00237450  40 81 00 20 */	ble lbl_8023B810
/* 8023B7F4 00237454  38 60 00 01 */	li r3, 1
/* 8023B7F8 00237458  48 00 00 58 */	b lbl_8023B850
lbl_8023B7FC:
/* 8023B7FC 0023745C  7C 05 20 50 */	subf r0, r5, r4
/* 8023B800 00237460  2C 00 00 01 */	cmpwi r0, 1
/* 8023B804 00237464  40 81 00 0C */	ble lbl_8023B810
/* 8023B808 00237468  38 60 00 01 */	li r3, 1
/* 8023B80C 0023746C  48 00 00 44 */	b lbl_8023B850
lbl_8023B810:
/* 8023B810 00237470  A0 8D A4 84 */	lhz r4, lbl_8063F744-_SDA_BASE_(r13)
/* 8023B814 00237474  7F E3 FB 78 */	mr r3, r31
/* 8023B818 00237478  4B FF FF 5D */	bl func_8023B774
/* 8023B81C 0023747C  2C 03 00 00 */	cmpwi r3, 0
/* 8023B820 00237480  41 82 00 0C */	beq lbl_8023B82C
/* 8023B824 00237484  38 60 00 01 */	li r3, 1
/* 8023B828 00237488  48 00 00 28 */	b lbl_8023B850
lbl_8023B82C:
/* 8023B82C 0023748C  48 04 52 D5 */	bl GXReadDrawSync
/* 8023B830 00237490  A0 0D A4 86 */	lhz r0, lbl_8063F746-_SDA_BASE_(r13)
/* 8023B834 00237494  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8023B838 00237498  7C 04 00 40 */	cmplw r4, r0
/* 8023B83C 0023749C  41 80 00 0C */	blt lbl_8023B848
/* 8023B840 002374A0  38 60 00 00 */	li r3, 0
/* 8023B844 002374A4  48 00 00 0C */	b lbl_8023B850
lbl_8023B848:
/* 8023B848 002374A8  7F E3 FB 78 */	mr r3, r31
/* 8023B84C 002374AC  4B FF FF 29 */	bl func_8023B774
lbl_8023B850:
/* 8023B850 002374B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023B854 002374B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023B858 002374B8  7C 08 03 A6 */	mtlr r0
/* 8023B85C 002374BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023B860 002374C0  4E 80 00 20 */	blr

.global func_8023B864
func_8023B864:
/* 8023B864 002374C4  2C 04 00 00 */	cmpwi r4, 0
/* 8023B868 002374C8  41 82 00 10 */	beq lbl_8023B878
/* 8023B86C 002374CC  88 03 17 18 */	lbz r0, 0x1718(r3)
/* 8023B870 002374D0  2C 00 00 00 */	cmpwi r0, 0
/* 8023B874 002374D4  41 82 00 0C */	beq lbl_8023B880
lbl_8023B878:
/* 8023B878 002374D8  38 60 00 01 */	li r3, 1
/* 8023B87C 002374DC  4E 80 00 20 */	blr
lbl_8023B880:
/* 8023B880 002374E0  7C 83 23 78 */	mr r3, r4
/* 8023B884 002374E4  4B FF FF 34 */	b func_8023B7B8
/* 8023B888 002374E8  4E 80 00 20 */	blr

.global func_8023B88C
func_8023B88C:
/* 8023B88C 002374EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023B890 002374F0  7C 08 02 A6 */	mflr r0
/* 8023B894 002374F4  2C 04 00 00 */	cmpwi r4, 0
/* 8023B898 002374F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023B89C 002374FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023B8A0 00237500  7C 9F 23 78 */	mr r31, r4
/* 8023B8A4 00237504  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023B8A8 00237508  7C 7E 1B 78 */	mr r30, r3
/* 8023B8AC 0023750C  41 82 00 84 */	beq lbl_8023B930
/* 8023B8B0 00237510  88 03 17 18 */	lbz r0, 0x1718(r3)
/* 8023B8B4 00237514  2C 00 00 00 */	cmpwi r0, 0
/* 8023B8B8 00237518  41 82 00 08 */	beq lbl_8023B8C0
/* 8023B8BC 0023751C  48 00 00 74 */	b lbl_8023B930
lbl_8023B8C0:
/* 8023B8C0 00237520  38 81 00 0C */	addi r4, r1, 0xc
/* 8023B8C4 00237524  4B FF 58 E9 */	bl func_802311AC
/* 8023B8C8 00237528  48 00 00 4C */	b lbl_8023B914
lbl_8023B8CC:
/* 8023B8CC 0023752C  7F C3 F3 78 */	mr r3, r30
/* 8023B8D0 00237530  38 81 00 0C */	addi r4, r1, 0xc
/* 8023B8D4 00237534  4B FF 58 E9 */	bl func_802311BC
/* 8023B8D8 00237538  88 1E 17 18 */	lbz r0, 0x1718(r30)
/* 8023B8DC 0023753C  2C 00 00 00 */	cmpwi r0, 0
/* 8023B8E0 00237540  40 82 00 44 */	bne lbl_8023B924
/* 8023B8E4 00237544  88 1E 17 19 */	lbz r0, 0x1719(r30)
/* 8023B8E8 00237548  2C 00 00 00 */	cmpwi r0, 0
/* 8023B8EC 0023754C  40 82 00 38 */	bne lbl_8023B924
/* 8023B8F0 00237550  38 61 00 08 */	addi r3, r1, 8
/* 8023B8F4 00237554  38 A1 00 09 */	addi r5, r1, 9
/* 8023B8F8 00237558  7C 64 1B 78 */	mr r4, r3
/* 8023B8FC 0023755C  7C 66 1B 78 */	mr r6, r3
/* 8023B900 00237560  7C 67 1B 78 */	mr r7, r3
/* 8023B904 00237564  48 04 37 45 */	bl GXGetGPStatus
/* 8023B908 00237568  88 01 00 09 */	lbz r0, 9(r1)
/* 8023B90C 0023756C  28 00 00 01 */	cmplwi r0, 1
/* 8023B910 00237570  41 82 00 14 */	beq lbl_8023B924
lbl_8023B914:
/* 8023B914 00237574  7F E3 FB 78 */	mr r3, r31
/* 8023B918 00237578  4B FF FE A1 */	bl func_8023B7B8
/* 8023B91C 0023757C  2C 03 00 00 */	cmpwi r3, 0
/* 8023B920 00237580  41 82 FF AC */	beq lbl_8023B8CC
lbl_8023B924:
/* 8023B924 00237584  7F C3 F3 78 */	mr r3, r30
/* 8023B928 00237588  38 81 00 0C */	addi r4, r1, 0xc
/* 8023B92C 0023758C  4B FF 59 31 */	bl func_8023125C
lbl_8023B930:
/* 8023B930 00237590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023B934 00237594  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023B938 00237598  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023B93C 0023759C  7C 08 03 A6 */	mtlr r0
/* 8023B940 002375A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8023B944 002375A4  4E 80 00 20 */	blr

.global func_8023B948
func_8023B948:
/* 8023B948 002375A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023B94C 002375AC  7C 08 02 A6 */	mflr r0
/* 8023B950 002375B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023B954 002375B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023B958 002375B8  88 03 17 18 */	lbz r0, 0x1718(r3)
/* 8023B95C 002375BC  2C 00 00 00 */	cmpwi r0, 0
/* 8023B960 002375C0  41 82 00 0C */	beq lbl_8023B96C
/* 8023B964 002375C4  38 60 00 00 */	li r3, 0
/* 8023B968 002375C8  48 00 00 58 */	b lbl_8023B9C0
lbl_8023B96C:
/* 8023B96C 002375CC  A0 6D A4 82 */	lhz r3, lbl_8063F742-_SDA_BASE_(r13)
/* 8023B970 002375D0  A3 ED A4 7E */	lhz r31, lbl_8063F73E-_SDA_BASE_(r13)
/* 8023B974 002375D4  7C 1F 18 40 */	cmplw r31, r3
/* 8023B978 002375D8  40 82 00 10 */	bne lbl_8023B988
/* 8023B97C 002375DC  A0 0D A4 88 */	lhz r0, lbl_8063F748-_SDA_BASE_(r13)
/* 8023B980 002375E0  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 8023B984 002375E4  48 00 00 3C */	b lbl_8023B9C0
lbl_8023B988:
/* 8023B988 002375E8  7F E3 FB 78 */	mr r3, r31
/* 8023B98C 002375EC  48 04 50 C1 */	bl GXSetDrawSync
/* 8023B990 002375F0  A0 6D A4 7E */	lhz r3, lbl_8063F73E-_SDA_BASE_(r13)
/* 8023B994 002375F4  A0 0D A4 86 */	lhz r0, lbl_8063F746-_SDA_BASE_(r13)
/* 8023B998 002375F8  38 83 00 01 */	addi r4, r3, 1
/* 8023B99C 002375FC  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8023B9A0 00237600  B0 8D A4 7E */	sth r4, lbl_8063F73E-_SDA_BASE_(r13)
/* 8023B9A4 00237604  7C 03 00 40 */	cmplw r3, r0
/* 8023B9A8 00237608  41 80 00 0C */	blt lbl_8023B9B4
/* 8023B9AC 0023760C  38 00 00 01 */	li r0, 1
/* 8023B9B0 00237610  B0 0D A4 7E */	sth r0, lbl_8063F73E-_SDA_BASE_(r13)
lbl_8023B9B4:
/* 8023B9B4 00237614  A0 0D A4 88 */	lhz r0, lbl_8063F748-_SDA_BASE_(r13)
/* 8023B9B8 00237618  7F E3 FB 78 */	mr r3, r31
/* 8023B9BC 0023761C  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
lbl_8023B9C0:
/* 8023B9C0 00237620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023B9C4 00237624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023B9C8 00237628  7C 08 03 A6 */	mtlr r0
/* 8023B9CC 0023762C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023B9D0 00237630  4E 80 00 20 */	blr

.global func_8023B9D4
func_8023B9D4:
/* 8023B9D4 00237634  38 A0 00 01 */	li r5, 1
/* 8023B9D8 00237638  38 6D A4 78 */	addi r3, r13, lbl_8063F738-_SDA_BASE_
/* 8023B9DC 0023763C  38 80 00 04 */	li r4, 4
/* 8023B9E0 00237640  38 00 00 00 */	li r0, 0
/* 8023B9E4 00237644  98 AD A4 78 */	stb r5, lbl_8063F738-_SDA_BASE_(r13)
/* 8023B9E8 00237648  B0 83 00 02 */	sth r4, 2(r3)
/* 8023B9EC 0023764C  98 03 00 04 */	stb r0, 4(r3)
/* 8023B9F0 00237650  4E 80 00 20 */	blr
