.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global bta_dm_init_pm
bta_dm_init_pm:
/* 802C05F8 002BC258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C05FC 002BC25C  7C 08 02 A6 */	mflr r0
/* 802C0600 002BC260  3C 60 80 57 */	lis r3, lbl_80568918@ha
/* 802C0604 002BC264  38 80 00 00 */	li r4, 0
/* 802C0608 002BC268  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C060C 002BC26C  38 63 89 18 */	addi r3, r3, lbl_80568918@l
/* 802C0610 002BC270  38 A0 00 2E */	li r5, 0x2e
/* 802C0614 002BC274  4B D4 3A F1 */	bl memset
/* 802C0618 002BC278  80 6D 89 F0 */	lwz r3, lbl_8063DCB0-_SDA_BASE_(r13)
/* 802C061C 002BC27C  88 03 00 01 */	lbz r0, 1(r3)
/* 802C0620 002BC280  2C 00 00 00 */	cmpwi r0, 0
/* 802C0624 002BC284  41 82 00 2C */	beq lbl_802C0650
/* 802C0628 002BC288  3C 60 80 2C */	lis r3, bta_dm_pm_cback@ha
/* 802C062C 002BC28C  38 63 06 78 */	addi r3, r3, bta_dm_pm_cback@l
/* 802C0630 002BC290  4B FF D0 25 */	bl bta_sys_pm_register
/* 802C0634 002BC294  3C 80 80 57 */	lis r4, lbl_80568814@ha
/* 802C0638 002BC298  3C A0 80 2C */	lis r5, bta_dm_pm_btm_cback@ha
/* 802C063C 002BC29C  38 84 88 14 */	addi r4, r4, lbl_80568814@l
/* 802C0640 002BC2A0  38 60 00 03 */	li r3, 3
/* 802C0644 002BC2A4  38 84 00 95 */	addi r4, r4, 0x95
/* 802C0648 002BC2A8  38 A5 0D 78 */	addi r5, r5, bta_dm_pm_btm_cback@l
/* 802C064C 002BC2AC  48 00 87 A1 */	bl BTM_PmRegister
lbl_802C0650:
/* 802C0650 002BC2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0654 002BC2B4  7C 08 03 A6 */	mtlr r0
/* 802C0658 002BC2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C065C 002BC2BC  4E 80 00 20 */	blr

.global bta_dm_disable_pm
bta_dm_disable_pm:
/* 802C0660 002BC2C0  3C 80 80 57 */	lis r4, lbl_80568814@ha
/* 802C0664 002BC2C4  38 60 00 04 */	li r3, 4
/* 802C0668 002BC2C8  38 84 88 14 */	addi r4, r4, lbl_80568814@l
/* 802C066C 002BC2CC  38 A0 00 00 */	li r5, 0
/* 802C0670 002BC2D0  38 84 00 95 */	addi r4, r4, 0x95
/* 802C0674 002BC2D4  48 00 87 78 */	b BTM_PmRegister

bta_dm_pm_cback:
/* 802C0678 002BC2D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C067C 002BC2DC  7C 08 02 A6 */	mflr r0
/* 802C0680 002BC2E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C0684 002BC2E4  39 61 00 40 */	addi r11, r1, 0x40
/* 802C0688 002BC2E8  4B F0 6A 91 */	bl _savegpr_23
/* 802C068C 002BC2EC  7C 79 1B 78 */	mr r25, r3
/* 802C0690 002BC2F0  7C 9A 23 78 */	mr r26, r4
/* 802C0694 002BC2F4  7C BB 2B 78 */	mr r27, r5
/* 802C0698 002BC2F8  7C DC 33 78 */	mr r28, r6
/* 802C069C 002BC2FC  38 61 00 0C */	addi r3, r1, 0xc
/* 802C06A0 002BC300  48 00 61 E5 */	bl BTM_ReadLocalVersion
/* 802C06A4 002BC304  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C06A8 002BC308  40 82 00 6C */	bne lbl_802C0714
/* 802C06AC 002BC30C  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 802C06B0 002BC310  28 00 00 0F */	cmplwi r0, 0xf
/* 802C06B4 002BC314  40 82 00 60 */	bne lbl_802C0714
/* 802C06B8 002BC318  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802C06BC 002BC31C  28 00 00 03 */	cmplwi r0, 3
/* 802C06C0 002BC320  40 80 00 54 */	bge lbl_802C0714
/* 802C06C4 002BC324  28 19 00 04 */	cmplwi r25, 4
/* 802C06C8 002BC328  40 82 00 28 */	bne lbl_802C06F0
/* 802C06CC 002BC32C  3C A0 80 40 */	lis r5, lbl_803FDAC0@ha
/* 802C06D0 002BC330  7F 83 E3 78 */	mr r3, r28
/* 802C06D4 002BC334  38 A5 DA C0 */	addi r5, r5, lbl_803FDAC0@l
/* 802C06D8 002BC338  38 81 00 08 */	addi r4, r1, 8
/* 802C06DC 002BC33C  A0 05 00 04 */	lhz r0, 4(r5)
/* 802C06E0 002BC340  70 00 00 0B */	andi. r0, r0, 0xb
/* 802C06E4 002BC344  B0 01 00 08 */	sth r0, 8(r1)
/* 802C06E8 002BC348  48 00 35 AD */	bl BTM_SetLinkPolicy
/* 802C06EC 002BC34C  48 00 00 28 */	b lbl_802C0714
lbl_802C06F0:
/* 802C06F0 002BC350  28 19 00 05 */	cmplwi r25, 5
/* 802C06F4 002BC354  40 82 00 20 */	bne lbl_802C0714
/* 802C06F8 002BC358  3C A0 80 40 */	lis r5, lbl_803FDAC0@ha
/* 802C06FC 002BC35C  7F 83 E3 78 */	mr r3, r28
/* 802C0700 002BC360  38 A5 DA C0 */	addi r5, r5, lbl_803FDAC0@l
/* 802C0704 002BC364  38 81 00 08 */	addi r4, r1, 8
/* 802C0708 002BC368  A0 05 00 04 */	lhz r0, 4(r5)
/* 802C070C 002BC36C  B0 01 00 08 */	sth r0, 8(r1)
/* 802C0710 002BC370  48 00 35 85 */	bl BTM_SetLinkPolicy
lbl_802C0714:
/* 802C0714 002BC374  80 AD 89 F0 */	lwz r5, lbl_8063DCB0-_SDA_BASE_(r13)
/* 802C0718 002BC378  3B C0 00 01 */	li r30, 1
/* 802C071C 002BC37C  88 85 00 01 */	lbz r4, 1(r5)
/* 802C0720 002BC380  48 00 00 38 */	b lbl_802C0758
lbl_802C0724:
/* 802C0724 002BC384  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802C0728 002BC388  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802C072C 002BC38C  7C 03 00 50 */	subf r0, r3, r0
/* 802C0730 002BC390  7C 65 02 14 */	add r3, r5, r0
/* 802C0734 002BC394  7C 05 00 AE */	lbzx r0, r5, r0
/* 802C0738 002BC398  7C 1A 00 40 */	cmplw r26, r0
/* 802C073C 002BC39C  40 82 00 18 */	bne lbl_802C0754
/* 802C0740 002BC3A0  88 03 00 01 */	lbz r0, 1(r3)
/* 802C0744 002BC3A4  28 00 00 FF */	cmplwi r0, 0xff
/* 802C0748 002BC3A8  41 82 00 1C */	beq lbl_802C0764
/* 802C074C 002BC3AC  7C 1B 00 40 */	cmplw r27, r0
/* 802C0750 002BC3B0  41 82 00 14 */	beq lbl_802C0764
lbl_802C0754:
/* 802C0754 002BC3B4  3B DE 00 01 */	addi r30, r30, 1
lbl_802C0758:
/* 802C0758 002BC3B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C075C 002BC3BC  7C 00 20 40 */	cmplw r0, r4
/* 802C0760 002BC3C0  40 81 FF C4 */	ble lbl_802C0724
lbl_802C0764:
/* 802C0764 002BC3C4  88 05 00 01 */	lbz r0, 1(r5)
/* 802C0768 002BC3C8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802C076C 002BC3CC  7C 03 00 40 */	cmplw r3, r0
/* 802C0770 002BC3D0  41 81 02 70 */	bgt lbl_802C09E0
/* 802C0774 002BC3D4  3E E0 80 57 */	lis r23, lbl_80568814@ha
/* 802C0778 002BC3D8  3B E0 00 00 */	li r31, 0
/* 802C077C 002BC3DC  3A F7 88 14 */	addi r23, r23, lbl_80568814@l
lbl_802C0780:
/* 802C0780 002BC3E0  57 FD 2C F4 */	rlwinm r29, r31, 5, 0x13, 0x1a
/* 802C0784 002BC3E4  7F 17 EA 14 */	add r24, r23, r29
/* 802C0788 002BC3E8  88 18 00 B6 */	lbz r0, 0xb6(r24)
/* 802C078C 002BC3EC  2C 00 00 00 */	cmpwi r0, 0
/* 802C0790 002BC3F0  41 82 00 30 */	beq lbl_802C07C0
/* 802C0794 002BC3F4  7F 84 E3 78 */	mr r4, r28
/* 802C0798 002BC3F8  38 78 00 B0 */	addi r3, r24, 0xb0
/* 802C079C 002BC3FC  4B FF CD F9 */	bl bdcmp
/* 802C07A0 002BC400  2C 03 00 00 */	cmpwi r3, 0
/* 802C07A4 002BC404  40 82 00 1C */	bne lbl_802C07C0
/* 802C07A8 002BC408  7F 03 C3 78 */	mr r3, r24
/* 802C07AC 002BC40C  38 63 00 98 */	addi r3, r3, 0x98
/* 802C07B0 002BC410  4B FF D2 99 */	bl bta_sys_stop_timer
/* 802C07B4 002BC414  38 00 00 00 */	li r0, 0
/* 802C07B8 002BC418  98 18 00 B6 */	stb r0, 0xb6(r24)
/* 802C07BC 002BC41C  48 00 00 10 */	b lbl_802C07CC
lbl_802C07C0:
/* 802C07C0 002BC420  3B FF 00 01 */	addi r31, r31, 1
/* 802C07C4 002BC424  28 1F 00 03 */	cmplwi r31, 3
/* 802C07C8 002BC428  41 80 FF B8 */	blt lbl_802C0780
lbl_802C07CC:
/* 802C07CC 002BC42C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802C07D0 002BC430  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802C07D4 002BC434  7F C4 18 50 */	subf r30, r4, r3
/* 802C07D8 002BC438  80 0D 89 F0 */	lwz r0, lbl_8063DCB0-_SDA_BASE_(r13)
/* 802C07DC 002BC43C  80 8D 89 F4 */	lwz r4, lbl_8063DCB4-_SDA_BASE_(r13)
/* 802C07E0 002BC440  57 3F 1D 78 */	rlwinm r31, r25, 3, 0x15, 0x1c
/* 802C07E4 002BC444  7C 60 F2 14 */	add r3, r0, r30
/* 802C07E8 002BC448  88 03 00 02 */	lbz r0, 2(r3)
/* 802C07EC 002BC44C  1C 00 00 4A */	mulli r0, r0, 0x4a
/* 802C07F0 002BC450  7C 04 02 14 */	add r0, r4, r0
/* 802C07F4 002BC454  7C 60 FA 14 */	add r3, r0, r31
/* 802C07F8 002BC458  88 03 00 02 */	lbz r0, 2(r3)
/* 802C07FC 002BC45C  2C 00 00 00 */	cmpwi r0, 0
/* 802C0800 002BC460  41 82 01 E0 */	beq lbl_802C09E0
/* 802C0804 002BC464  3E E0 80 57 */	lis r23, lbl_80568918@ha
/* 802C0808 002BC468  3B A0 00 00 */	li r29, 0
/* 802C080C 002BC46C  3B 17 89 18 */	addi r24, r23, lbl_80568918@l
/* 802C0810 002BC470  48 00 00 44 */	b lbl_802C0854
lbl_802C0814:
/* 802C0814 002BC474  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802C0818 002BC478  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 802C081C 002BC47C  7C 00 1A 14 */	add r0, r0, r3
/* 802C0820 002BC480  7C 78 02 14 */	add r3, r24, r0
/* 802C0824 002BC484  88 03 00 07 */	lbz r0, 7(r3)
/* 802C0828 002BC488  7C 1A 00 40 */	cmplw r26, r0
/* 802C082C 002BC48C  40 82 00 24 */	bne lbl_802C0850
/* 802C0830 002BC490  88 03 00 08 */	lbz r0, 8(r3)
/* 802C0834 002BC494  7C 1B 00 40 */	cmplw r27, r0
/* 802C0838 002BC498  40 82 00 18 */	bne lbl_802C0850
/* 802C083C 002BC49C  7F 84 E3 78 */	mr r4, r28
/* 802C0840 002BC4A0  38 63 00 01 */	addi r3, r3, 1
/* 802C0844 002BC4A4  4B FF CD 51 */	bl bdcmp
/* 802C0848 002BC4A8  2C 03 00 00 */	cmpwi r3, 0
/* 802C084C 002BC4AC  41 82 00 18 */	beq lbl_802C0864
lbl_802C0850:
/* 802C0850 002BC4B0  3B BD 00 01 */	addi r29, r29, 1
lbl_802C0854:
/* 802C0854 002BC4B4  88 17 89 18 */	lbz r0, -0x76e8(r23)
/* 802C0858 002BC4B8  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802C085C 002BC4BC  7C 03 00 40 */	cmplw r3, r0
/* 802C0860 002BC4C0  41 80 FF B4 */	blt lbl_802C0814
lbl_802C0864:
/* 802C0864 002BC4C4  80 0D 89 F0 */	lwz r0, lbl_8063DCB0-_SDA_BASE_(r13)
/* 802C0868 002BC4C8  80 8D 89 F4 */	lwz r4, lbl_8063DCB4-_SDA_BASE_(r13)
/* 802C086C 002BC4CC  7C 60 F2 14 */	add r3, r0, r30
/* 802C0870 002BC4D0  88 03 00 02 */	lbz r0, 2(r3)
/* 802C0874 002BC4D4  1C 00 00 4A */	mulli r0, r0, 0x4a
/* 802C0878 002BC4D8  7C 04 02 14 */	add r0, r4, r0
/* 802C087C 002BC4DC  7C 60 FA 14 */	add r3, r0, r31
/* 802C0880 002BC4E0  88 03 00 02 */	lbz r0, 2(r3)
/* 802C0884 002BC4E4  28 00 00 10 */	cmplwi r0, 0x10
/* 802C0888 002BC4E8  40 82 00 70 */	bne lbl_802C08F8
/* 802C088C 002BC4EC  3F 60 80 57 */	lis r27, lbl_80568918@ha
/* 802C0890 002BC4F0  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802C0894 002BC4F4  88 1B 89 18 */	lbz r0, lbl_80568918@l(r27)
/* 802C0898 002BC4F8  7C 03 00 40 */	cmplw r3, r0
/* 802C089C 002BC4FC  41 82 00 C8 */	beq lbl_802C0964
/* 802C08A0 002BC500  3B 5B 89 18 */	addi r26, r27, -30440
/* 802C08A4 002BC504  48 00 00 38 */	b lbl_802C08DC
lbl_802C08A8:
/* 802C08A8 002BC508  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 802C08AC 002BC50C  57 A4 1D 78 */	rlwinm r4, r29, 3, 0x15, 0x1c
/* 802C08B0 002BC510  38 66 00 01 */	addi r3, r6, 1
/* 802C08B4 002BC514  38 A0 00 09 */	li r5, 9
/* 802C08B8 002BC518  54 60 18 38 */	slwi r0, r3, 3
/* 802C08BC 002BC51C  7C 84 32 14 */	add r4, r4, r6
/* 802C08C0 002BC520  7C 00 1A 14 */	add r0, r0, r3
/* 802C08C4 002BC524  7C 7A 22 14 */	add r3, r26, r4
/* 802C08C8 002BC528  7C 9A 02 14 */	add r4, r26, r0
/* 802C08CC 002BC52C  38 63 00 01 */	addi r3, r3, 1
/* 802C08D0 002BC530  38 84 00 01 */	addi r4, r4, 1
/* 802C08D4 002BC534  4B D4 37 2D */	bl memcpy
/* 802C08D8 002BC538  3B BD 00 01 */	addi r29, r29, 1
lbl_802C08DC:
/* 802C08DC 002BC53C  88 7B 89 18 */	lbz r3, -0x76e8(r27)
/* 802C08E0 002BC540  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C08E4 002BC544  7C 00 18 40 */	cmplw r0, r3
/* 802C08E8 002BC548  41 80 FF C0 */	blt lbl_802C08A8
/* 802C08EC 002BC54C  38 03 FF FF */	addi r0, r3, -1
/* 802C08F0 002BC550  98 1B 89 18 */	stb r0, -0x76e8(r27)
/* 802C08F4 002BC554  48 00 00 70 */	b lbl_802C0964
lbl_802C08F8:
/* 802C08F8 002BC558  3F C0 80 57 */	lis r30, lbl_80568918@ha
/* 802C08FC 002BC55C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 802C0900 002BC560  88 1E 89 18 */	lbz r0, lbl_80568918@l(r30)
/* 802C0904 002BC564  7C 04 00 40 */	cmplw r4, r0
/* 802C0908 002BC568  40 82 00 5C */	bne lbl_802C0964
/* 802C090C 002BC56C  28 00 00 05 */	cmplwi r0, 5
/* 802C0910 002BC570  40 82 00 24 */	bne lbl_802C0934
/* 802C0914 002BC574  88 0D AE F8 */	lbz r0, lbl_806401B8-_SDA_BASE_(r13)
/* 802C0918 002BC578  28 00 00 02 */	cmplwi r0, 2
/* 802C091C 002BC57C  41 80 00 C4 */	blt lbl_802C09E0
/* 802C0920 002BC580  3C 80 80 44 */	lis r4, lbl_804401A8@ha
/* 802C0924 002BC584  38 60 05 01 */	li r3, 0x501
/* 802C0928 002BC588  38 84 01 A8 */	addi r4, r4, lbl_804401A8@l
/* 802C092C 002BC58C  4B FF C5 E5 */	bl LogMsg_0
/* 802C0930 002BC590  48 00 00 B0 */	b lbl_802C09E0
lbl_802C0934:
/* 802C0934 002BC594  57 A3 1D 78 */	rlwinm r3, r29, 3, 0x15, 0x1c
/* 802C0938 002BC598  38 1E 89 18 */	addi r0, r30, -30440
/* 802C093C 002BC59C  7C 63 22 14 */	add r3, r3, r4
/* 802C0940 002BC5A0  7F 84 E3 78 */	mr r4, r28
/* 802C0944 002BC5A4  7C A0 1A 14 */	add r5, r0, r3
/* 802C0948 002BC5A8  9B 45 00 07 */	stb r26, 7(r5)
/* 802C094C 002BC5AC  38 65 00 01 */	addi r3, r5, 1
/* 802C0950 002BC5B0  9B 65 00 08 */	stb r27, 8(r5)
/* 802C0954 002BC5B4  4B FF CC 0D */	bl bdcpy
/* 802C0958 002BC5B8  88 7E 89 18 */	lbz r3, -0x76e8(r30)
/* 802C095C 002BC5BC  38 03 00 01 */	addi r0, r3, 1
/* 802C0960 002BC5C0  98 1E 89 18 */	stb r0, -0x76e8(r30)
lbl_802C0964:
/* 802C0964 002BC5C4  3C 60 80 57 */	lis r3, lbl_80568814@ha
/* 802C0968 002BC5C8  3B 00 00 00 */	li r24, 0
/* 802C096C 002BC5CC  3B 43 88 14 */	addi r26, r3, lbl_80568814@l
/* 802C0970 002BC5D0  48 00 00 38 */	b lbl_802C09A8
lbl_802C0974:
/* 802C0974 002BC5D4  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 802C0978 002BC5D8  7F 84 E3 78 */	mr r4, r28
/* 802C097C 002BC5DC  1E E0 00 0B */	mulli r23, r0, 0xb
/* 802C0980 002BC5E0  7C 7A BA 14 */	add r3, r26, r23
/* 802C0984 002BC5E4  4B FF CC 11 */	bl bdcmp
/* 802C0988 002BC5E8  2C 03 00 00 */	cmpwi r3, 0
/* 802C098C 002BC5EC  40 82 00 18 */	bne lbl_802C09A4
/* 802C0990 002BC5F0  7C 7A BA 14 */	add r3, r26, r23
/* 802C0994 002BC5F4  38 00 00 00 */	li r0, 0
/* 802C0998 002BC5F8  98 03 00 09 */	stb r0, 9(r3)
/* 802C099C 002BC5FC  98 03 00 0A */	stb r0, 0xa(r3)
/* 802C09A0 002BC600  48 00 00 18 */	b lbl_802C09B8
lbl_802C09A4:
/* 802C09A4 002BC604  3B 18 00 01 */	addi r24, r24, 1
lbl_802C09A8:
/* 802C09A8 002BC608  88 1A 00 4D */	lbz r0, 0x4d(r26)
/* 802C09AC 002BC60C  57 03 06 3E */	clrlwi r3, r24, 0x18
/* 802C09B0 002BC610  7C 03 00 40 */	cmplw r3, r0
/* 802C09B4 002BC614  41 80 FF C0 */	blt lbl_802C0974
lbl_802C09B8:
/* 802C09B8 002BC618  3C C0 80 57 */	lis r6, lbl_80568918@ha
/* 802C09BC 002BC61C  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 802C09C0 002BC620  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 802C09C4 002BC624  7F 83 E3 78 */	mr r3, r28
/* 802C09C8 002BC628  38 C6 89 18 */	addi r6, r6, lbl_80568918@l
/* 802C09CC 002BC62C  38 80 00 00 */	li r4, 0
/* 802C09D0 002BC630  7C 00 2A 14 */	add r0, r0, r5
/* 802C09D4 002BC634  7C A6 02 14 */	add r5, r6, r0
/* 802C09D8 002BC638  9B 25 00 09 */	stb r25, 9(r5)
/* 802C09DC 002BC63C  48 00 00 1D */	bl bta_dm_pm_set_mode
lbl_802C09E0:
/* 802C09E0 002BC640  39 61 00 40 */	addi r11, r1, 0x40
/* 802C09E4 002BC644  4B F0 67 81 */	bl _restgpr_23
/* 802C09E8 002BC648  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C09EC 002BC64C  7C 08 03 A6 */	mtlr r0
/* 802C09F0 002BC650  38 21 00 40 */	addi r1, r1, 0x40
/* 802C09F4 002BC654  4E 80 00 20 */	blr

.global bta_dm_pm_set_mode
bta_dm_pm_set_mode:
/* 802C09F8 002BC658  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C09FC 002BC65C  7C 08 02 A6 */	mflr r0
/* 802C0A00 002BC660  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C0A04 002BC664  39 61 00 50 */	addi r11, r1, 0x50
/* 802C0A08 002BC668  4B F0 67 05 */	bl _savegpr_20
/* 802C0A0C 002BC66C  3C A0 80 57 */	lis r5, lbl_80568814@ha
/* 802C0A10 002BC670  7C 74 1B 78 */	mr r20, r3
/* 802C0A14 002BC674  3B 85 88 14 */	addi r28, r5, lbl_80568814@l
/* 802C0A18 002BC678  7C 95 23 78 */	mr r21, r4
/* 802C0A1C 002BC67C  88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 802C0A20 002BC680  3B 60 00 00 */	li r27, 0
/* 802C0A24 002BC684  3B 40 00 00 */	li r26, 0
/* 802C0A28 002BC688  3B 20 00 00 */	li r25, 0
/* 802C0A2C 002BC68C  2C 00 00 00 */	cmpwi r0, 0
/* 802C0A30 002BC690  3B 00 00 00 */	li r24, 0
/* 802C0A34 002BC694  3A E0 00 00 */	li r23, 0
/* 802C0A38 002BC698  3A C0 00 00 */	li r22, 0
/* 802C0A3C 002BC69C  41 82 03 24 */	beq lbl_802C0D60
/* 802C0A40 002BC6A0  3B C0 00 00 */	li r30, 0
/* 802C0A44 002BC6A4  48 00 00 30 */	b lbl_802C0A74
lbl_802C0A48:
/* 802C0A48 002BC6A8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C0A4C 002BC6AC  7E 84 A3 78 */	mr r4, r20
/* 802C0A50 002BC6B0  1F A0 00 0B */	mulli r29, r0, 0xb
/* 802C0A54 002BC6B4  7C 7C EA 14 */	add r3, r28, r29
/* 802C0A58 002BC6B8  4B FF CB 3D */	bl bdcmp
/* 802C0A5C 002BC6BC  2C 03 00 00 */	cmpwi r3, 0
/* 802C0A60 002BC6C0  40 82 00 10 */	bne lbl_802C0A70
/* 802C0A64 002BC6C4  7F 1C EA 14 */	add r24, r28, r29
/* 802C0A68 002BC6C8  8B 38 00 0A */	lbz r25, 0xa(r24)
/* 802C0A6C 002BC6CC  48 00 00 18 */	b lbl_802C0A84
lbl_802C0A70:
/* 802C0A70 002BC6D0  3B DE 00 01 */	addi r30, r30, 1
lbl_802C0A74:
/* 802C0A74 002BC6D4  88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 802C0A78 002BC6D8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802C0A7C 002BC6DC  7C 03 00 40 */	cmplw r3, r0
/* 802C0A80 002BC6E0  41 80 FF C8 */	blt lbl_802C0A48
lbl_802C0A84:
/* 802C0A84 002BC6E4  2C 18 00 00 */	cmpwi r24, 0
/* 802C0A88 002BC6E8  41 82 02 D8 */	beq lbl_802C0D60
/* 802C0A8C 002BC6EC  3F C0 80 57 */	lis r30, lbl_80568918@ha
/* 802C0A90 002BC6F0  3B 80 00 00 */	li r28, 0
/* 802C0A94 002BC6F4  3B FE 89 18 */	addi r31, r30, lbl_80568918@l
/* 802C0A98 002BC6F8  48 00 01 30 */	b lbl_802C0BC8
lbl_802C0A9C:
/* 802C0A9C 002BC6FC  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802C0AA0 002BC700  57 80 1D 78 */	rlwinm r0, r28, 3, 0x15, 0x1c
/* 802C0AA4 002BC704  7F A0 1A 14 */	add r29, r0, r3
/* 802C0AA8 002BC708  7E 84 A3 78 */	mr r4, r20
/* 802C0AAC 002BC70C  7C 7F EA 14 */	add r3, r31, r29
/* 802C0AB0 002BC710  38 63 00 01 */	addi r3, r3, 1
/* 802C0AB4 002BC714  4B FF CA E1 */	bl bdcmp
/* 802C0AB8 002BC718  2C 03 00 00 */	cmpwi r3, 0
/* 802C0ABC 002BC71C  40 82 01 08 */	bne lbl_802C0BC4
/* 802C0AC0 002BC720  80 ED 89 F0 */	lwz r7, lbl_8063DCB0-_SDA_BASE_(r13)
/* 802C0AC4 002BC724  7D 1F EA 14 */	add r8, r31, r29
/* 802C0AC8 002BC728  88 68 00 08 */	lbz r3, 8(r8)
/* 802C0ACC 002BC72C  39 20 00 01 */	li r9, 1
/* 802C0AD0 002BC730  88 C7 00 01 */	lbz r6, 1(r7)
/* 802C0AD4 002BC734  88 88 00 07 */	lbz r4, 7(r8)
/* 802C0AD8 002BC738  48 00 00 38 */	b lbl_802C0B10
lbl_802C0ADC:
/* 802C0ADC 002BC73C  55 25 06 3E */	clrlwi r5, r9, 0x18
/* 802C0AE0 002BC740  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802C0AE4 002BC744  7C 05 00 50 */	subf r0, r5, r0
/* 802C0AE8 002BC748  7C A7 02 14 */	add r5, r7, r0
/* 802C0AEC 002BC74C  7C 07 00 AE */	lbzx r0, r7, r0
/* 802C0AF0 002BC750  7C 00 20 40 */	cmplw r0, r4
/* 802C0AF4 002BC754  40 82 00 18 */	bne lbl_802C0B0C
/* 802C0AF8 002BC758  88 05 00 01 */	lbz r0, 1(r5)
/* 802C0AFC 002BC75C  28 00 00 FF */	cmplwi r0, 0xff
/* 802C0B00 002BC760  41 82 00 1C */	beq lbl_802C0B1C
/* 802C0B04 002BC764  7C 00 18 40 */	cmplw r0, r3
/* 802C0B08 002BC768  41 82 00 14 */	beq lbl_802C0B1C
lbl_802C0B0C:
/* 802C0B0C 002BC76C  39 29 00 01 */	addi r9, r9, 1
lbl_802C0B10:
/* 802C0B10 002BC770  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802C0B14 002BC774  7C 00 30 40 */	cmplw r0, r6
/* 802C0B18 002BC778  40 81 FF C4 */	ble lbl_802C0ADC
lbl_802C0B1C:
/* 802C0B1C 002BC77C  55 23 06 3E */	clrlwi r3, r9, 0x18
/* 802C0B20 002BC780  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802C0B24 002BC784  7C 63 00 50 */	subf r3, r3, r0
/* 802C0B28 002BC788  88 08 00 09 */	lbz r0, 9(r8)
/* 802C0B2C 002BC78C  7C 87 1A 14 */	add r4, r7, r3
/* 802C0B30 002BC790  80 6D 89 F4 */	lwz r3, lbl_8063DCB4-_SDA_BASE_(r13)
/* 802C0B34 002BC794  88 84 00 02 */	lbz r4, 2(r4)
/* 802C0B38 002BC798  54 00 18 38 */	slwi r0, r0, 3
/* 802C0B3C 002BC79C  1C 84 00 4A */	mulli r4, r4, 0x4a
/* 802C0B40 002BC7A0  7C A3 22 14 */	add r5, r3, r4
/* 802C0B44 002BC7A4  7C 65 02 14 */	add r3, r5, r0
/* 802C0B48 002BC7A8  88 05 00 00 */	lbz r0, 0(r5)
/* 802C0B4C 002BC7AC  88 83 00 02 */	lbz r4, 2(r3)
/* 802C0B50 002BC7B0  7E F7 03 78 */	or r23, r23, r0
/* 802C0B54 002BC7B4  7F 20 20 39 */	and. r0, r25, r4
/* 802C0B58 002BC7B8  40 82 00 34 */	bne lbl_802C0B8C
/* 802C0B5C 002BC7BC  7C 7F EA 14 */	add r3, r31, r29
/* 802C0B60 002BC7C0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802C0B64 002BC7C4  88 63 00 09 */	lbz r3, 9(r3)
/* 802C0B68 002BC7C8  54 63 18 38 */	slwi r3, r3, 3
/* 802C0B6C 002BC7CC  7C A5 1A 14 */	add r5, r5, r3
/* 802C0B70 002BC7D0  88 65 00 02 */	lbz r3, 2(r5)
/* 802C0B74 002BC7D4  7C 03 00 40 */	cmplw r3, r0
/* 802C0B78 002BC7D8  7E D6 1B 78 */	or r22, r22, r3
/* 802C0B7C 002BC7DC  40 81 00 48 */	ble lbl_802C0BC4
/* 802C0B80 002BC7E0  A3 45 00 04 */	lhz r26, 4(r5)
/* 802C0B84 002BC7E4  7C 9B 23 78 */	mr r27, r4
/* 802C0B88 002BC7E8  48 00 00 3C */	b lbl_802C0BC4
lbl_802C0B8C:
/* 802C0B8C 002BC7EC  88 63 00 06 */	lbz r3, 6(r3)
/* 802C0B90 002BC7F0  7F 20 18 39 */	and. r0, r25, r3
/* 802C0B94 002BC7F4  40 82 00 30 */	bne lbl_802C0BC4
/* 802C0B98 002BC7F8  7C 9F EA 14 */	add r4, r31, r29
/* 802C0B9C 002BC7FC  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802C0BA0 002BC800  88 84 00 09 */	lbz r4, 9(r4)
/* 802C0BA4 002BC804  54 84 18 38 */	slwi r4, r4, 3
/* 802C0BA8 002BC808  7C A5 22 14 */	add r5, r5, r4
/* 802C0BAC 002BC80C  88 85 00 06 */	lbz r4, 6(r5)
/* 802C0BB0 002BC810  7C 04 00 40 */	cmplw r4, r0
/* 802C0BB4 002BC814  7E D6 23 78 */	or r22, r22, r4
/* 802C0BB8 002BC818  40 81 00 0C */	ble lbl_802C0BC4
/* 802C0BBC 002BC81C  7C 7B 1B 78 */	mr r27, r3
/* 802C0BC0 002BC820  A3 45 00 08 */	lhz r26, 8(r5)
lbl_802C0BC4:
/* 802C0BC4 002BC824  3B 9C 00 01 */	addi r28, r28, 1
lbl_802C0BC8:
/* 802C0BC8 002BC828  88 1E 89 18 */	lbz r0, -0x76e8(r30)
/* 802C0BCC 002BC82C  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802C0BD0 002BC830  7C 03 00 40 */	cmplw r3, r0
/* 802C0BD4 002BC834  41 80 FE C8 */	blt lbl_802C0A9C
/* 802C0BD8 002BC838  57 60 07 BF */	clrlwi. r0, r27, 0x1e
/* 802C0BDC 002BC83C  41 82 00 24 */	beq lbl_802C0C00
/* 802C0BE0 002BC840  56 E3 06 3E */	clrlwi r3, r23, 0x18
/* 802C0BE4 002BC844  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802C0BE8 002BC848  7C 60 00 39 */	and. r0, r3, r0
/* 802C0BEC 002BC84C  40 82 00 14 */	bne lbl_802C0C00
/* 802C0BF0 002BC850  7E E0 B0 38 */	and r0, r23, r22
/* 802C0BF4 002BC854  54 1B 07 BF */	clrlwi. r27, r0, 0x1e
/* 802C0BF8 002BC858  40 82 00 08 */	bne lbl_802C0C00
/* 802C0BFC 002BC85C  3B 40 00 00 */	li r26, 0
lbl_802C0C00:
/* 802C0C00 002BC860  2C 15 00 00 */	cmpwi r21, 0
/* 802C0C04 002BC864  40 82 00 A0 */	bne lbl_802C0CA4
/* 802C0C08 002BC868  2C 1A 00 00 */	cmpwi r26, 0
/* 802C0C0C 002BC86C  41 82 00 98 */	beq lbl_802C0CA4
/* 802C0C10 002BC870  3E A0 80 57 */	lis r21, lbl_80568814@ha
/* 802C0C14 002BC874  38 00 00 03 */	li r0, 3
/* 802C0C18 002BC878  3A B5 88 14 */	addi r21, r21, lbl_80568814@l
/* 802C0C1C 002BC87C  38 80 00 00 */	li r4, 0
/* 802C0C20 002BC880  7C 09 03 A6 */	mtctr r0
lbl_802C0C24:
/* 802C0C24 002BC884  54 96 2C F4 */	rlwinm r22, r4, 5, 0x13, 0x1a
/* 802C0C28 002BC888  7C 75 B2 14 */	add r3, r21, r22
/* 802C0C2C 002BC88C  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 802C0C30 002BC890  2C 00 00 00 */	cmpwi r0, 0
/* 802C0C34 002BC894  40 82 00 3C */	bne lbl_802C0C70
/* 802C0C38 002BC898  38 00 00 01 */	li r0, 1
/* 802C0C3C 002BC89C  7E 84 A3 78 */	mr r4, r20
/* 802C0C40 002BC8A0  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 802C0C44 002BC8A4  38 63 00 B0 */	addi r3, r3, 0xb0
/* 802C0C48 002BC8A8  4B FF C9 19 */	bl bdcpy
/* 802C0C4C 002BC8AC  3C 80 80 2C */	lis r4, bta_dm_pm_timer_cback@ha
/* 802C0C50 002BC8B0  7C 75 B2 14 */	add r3, r21, r22
/* 802C0C54 002BC8B4  38 84 0D F0 */	addi r4, r4, bta_dm_pm_timer_cback@l
/* 802C0C58 002BC8B8  7F 45 D3 78 */	mr r5, r26
/* 802C0C5C 002BC8BC  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 802C0C60 002BC8C0  38 63 00 98 */	addi r3, r3, 0x98
/* 802C0C64 002BC8C4  38 80 00 00 */	li r4, 0
/* 802C0C68 002BC8C8  4B FF CD C1 */	bl bta_sys_start_timer
/* 802C0C6C 002BC8CC  48 00 00 F4 */	b lbl_802C0D60
lbl_802C0C70:
/* 802C0C70 002BC8D0  38 84 00 01 */	addi r4, r4, 1
/* 802C0C74 002BC8D4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802C0C78 002BC8D8  42 00 FF AC */	bdnz lbl_802C0C24
/* 802C0C7C 002BC8DC  28 00 00 03 */	cmplwi r0, 3
/* 802C0C80 002BC8E0  40 82 00 24 */	bne lbl_802C0CA4
/* 802C0C84 002BC8E4  88 0D AE F8 */	lbz r0, lbl_806401B8-_SDA_BASE_(r13)
/* 802C0C88 002BC8E8  28 00 00 02 */	cmplwi r0, 2
/* 802C0C8C 002BC8EC  41 80 00 D4 */	blt lbl_802C0D60
/* 802C0C90 002BC8F0  3C 80 80 44 */	lis r4, lbl_804401D4@ha
/* 802C0C94 002BC8F4  38 60 05 01 */	li r3, 0x501
/* 802C0C98 002BC8F8  38 84 01 D4 */	addi r4, r4, lbl_804401D4@l
/* 802C0C9C 002BC8FC  4B FF C2 75 */	bl LogMsg_0
/* 802C0CA0 002BC900  48 00 00 C0 */	b lbl_802C0D60
lbl_802C0CA4:
/* 802C0CA4 002BC904  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802C0CA8 002BC908  41 82 00 B8 */	beq lbl_802C0D60
/* 802C0CAC 002BC90C  28 00 00 01 */	cmplwi r0, 1
/* 802C0CB0 002BC910  40 82 00 44 */	bne lbl_802C0CF4
/* 802C0CB4 002BC914  38 00 00 01 */	li r0, 1
/* 802C0CB8 002BC918  7E 83 A3 78 */	mr r3, r20
/* 802C0CBC 002BC91C  98 18 00 09 */	stb r0, 9(r24)
/* 802C0CC0 002BC920  38 81 00 09 */	addi r4, r1, 9
/* 802C0CC4 002BC924  48 00 83 B5 */	bl BTM_ReadPowerMode
/* 802C0CC8 002BC928  88 01 00 09 */	lbz r0, 9(r1)
/* 802C0CCC 002BC92C  28 00 00 03 */	cmplwi r0, 3
/* 802C0CD0 002BC930  41 82 00 90 */	beq lbl_802C0D60
/* 802C0CD4 002BC934  3C 60 80 57 */	lis r3, lbl_80568814@ha
/* 802C0CD8 002BC938  80 AD 89 F8 */	lwz r5, lbl_8063DCB8-_SDA_BASE_(r13)
/* 802C0CDC 002BC93C  38 63 88 14 */	addi r3, r3, lbl_80568814@l
/* 802C0CE0 002BC940  7E 84 A3 78 */	mr r4, r20
/* 802C0CE4 002BC944  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802C0CE8 002BC948  38 A5 00 0A */	addi r5, r5, 0xa
/* 802C0CEC 002BC94C  48 00 81 BD */	bl BTM_SetPowerMode
/* 802C0CF0 002BC950  48 00 00 70 */	b lbl_802C0D60
lbl_802C0CF4:
/* 802C0CF4 002BC954  28 00 00 02 */	cmplwi r0, 2
/* 802C0CF8 002BC958  40 82 00 40 */	bne lbl_802C0D38
/* 802C0CFC 002BC95C  38 00 00 02 */	li r0, 2
/* 802C0D00 002BC960  7E 83 A3 78 */	mr r3, r20
/* 802C0D04 002BC964  98 18 00 09 */	stb r0, 9(r24)
/* 802C0D08 002BC968  38 81 00 08 */	addi r4, r1, 8
/* 802C0D0C 002BC96C  48 00 83 6D */	bl BTM_ReadPowerMode
/* 802C0D10 002BC970  88 01 00 08 */	lbz r0, 8(r1)
/* 802C0D14 002BC974  28 00 00 02 */	cmplwi r0, 2
/* 802C0D18 002BC978  41 82 00 48 */	beq lbl_802C0D60
/* 802C0D1C 002BC97C  3C 60 80 57 */	lis r3, lbl_80568814@ha
/* 802C0D20 002BC980  80 AD 89 F8 */	lwz r5, lbl_8063DCB8-_SDA_BASE_(r13)
/* 802C0D24 002BC984  38 63 88 14 */	addi r3, r3, lbl_80568814@l
/* 802C0D28 002BC988  7E 84 A3 78 */	mr r4, r20
/* 802C0D2C 002BC98C  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802C0D30 002BC990  48 00 81 79 */	bl BTM_SetPowerMode
/* 802C0D34 002BC994  48 00 00 2C */	b lbl_802C0D60
lbl_802C0D38:
/* 802C0D38 002BC998  28 00 00 04 */	cmplwi r0, 4
/* 802C0D3C 002BC99C  40 82 00 24 */	bne lbl_802C0D60
/* 802C0D40 002BC9A0  3C 60 80 57 */	lis r3, lbl_80568814@ha
/* 802C0D44 002BC9A4  38 00 00 00 */	li r0, 0
/* 802C0D48 002BC9A8  38 63 88 14 */	addi r3, r3, lbl_80568814@l
/* 802C0D4C 002BC9AC  98 01 00 14 */	stb r0, 0x14(r1)
/* 802C0D50 002BC9B0  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802C0D54 002BC9B4  7E 84 A3 78 */	mr r4, r20
/* 802C0D58 002BC9B8  38 A1 00 0C */	addi r5, r1, 0xc
/* 802C0D5C 002BC9BC  48 00 81 4D */	bl BTM_SetPowerMode
lbl_802C0D60:
/* 802C0D60 002BC9C0  39 61 00 50 */	addi r11, r1, 0x50
/* 802C0D64 002BC9C4  4B F0 63 F5 */	bl _restgpr_20
/* 802C0D68 002BC9C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C0D6C 002BC9CC  7C 08 03 A6 */	mtlr r0
/* 802C0D70 002BC9D0  38 21 00 50 */	addi r1, r1, 0x50
/* 802C0D74 002BC9D4  4E 80 00 20 */	blr

bta_dm_pm_btm_cback:
/* 802C0D78 002BC9D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0D7C 002BC9DC  7C 08 02 A6 */	mflr r0
/* 802C0D80 002BC9E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0D84 002BC9E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0D88 002BC9E8  4B F0 63 A1 */	bl _savegpr_27
/* 802C0D8C 002BC9EC  7C 7B 1B 78 */	mr r27, r3
/* 802C0D90 002BC9F0  7C 9C 23 78 */	mr r28, r4
/* 802C0D94 002BC9F4  7C BD 2B 78 */	mr r29, r5
/* 802C0D98 002BC9F8  7C DE 33 78 */	mr r30, r6
/* 802C0D9C 002BC9FC  38 60 00 14 */	li r3, 0x14
/* 802C0DA0 002BCA00  4B FF 8D 0D */	bl GKI_getbuf
/* 802C0DA4 002BCA04  2C 03 00 00 */	cmpwi r3, 0
/* 802C0DA8 002BCA08  7C 7F 1B 78 */	mr r31, r3
/* 802C0DAC 002BCA0C  41 82 00 2C */	beq lbl_802C0DD8
/* 802C0DB0 002BCA10  38 00 01 09 */	li r0, 0x109
/* 802C0DB4 002BCA14  7F 64 DB 78 */	mr r4, r27
/* 802C0DB8 002BCA18  B0 03 00 00 */	sth r0, 0(r3)
/* 802C0DBC 002BCA1C  9B 83 00 0E */	stb r28, 0xe(r3)
/* 802C0DC0 002BCA20  B3 A3 00 10 */	sth r29, 0x10(r3)
/* 802C0DC4 002BCA24  9B C3 00 12 */	stb r30, 0x12(r3)
/* 802C0DC8 002BCA28  38 63 00 08 */	addi r3, r3, 8
/* 802C0DCC 002BCA2C  4B FF C7 95 */	bl bdcpy
/* 802C0DD0 002BCA30  7F E3 FB 78 */	mr r3, r31
/* 802C0DD4 002BCA34  4B FF CC 39 */	bl bta_sys_sendmsg
lbl_802C0DD8:
/* 802C0DD8 002BCA38  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0DDC 002BCA3C  4B F0 63 99 */	bl _restgpr_27
/* 802C0DE0 002BCA40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0DE4 002BCA44  7C 08 03 A6 */	mtlr r0
/* 802C0DE8 002BCA48  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0DEC 002BCA4C  4E 80 00 20 */	blr

bta_dm_pm_timer_cback:
/* 802C0DF0 002BCA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0DF4 002BCA54  7C 08 02 A6 */	mflr r0
/* 802C0DF8 002BCA58  3C 80 80 57 */	lis r4, lbl_80568814@ha
/* 802C0DFC 002BCA5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0E00 002BCA60  38 84 88 14 */	addi r4, r4, lbl_80568814@l
/* 802C0E04 002BCA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0E08 002BCA68  93 C1 00 08 */	stw r30, 8(r1)
/* 802C0E0C 002BCA6C  3B C0 00 00 */	li r30, 0
/* 802C0E10 002BCA70  88 04 00 B6 */	lbz r0, 0xb6(r4)
/* 802C0E14 002BCA74  2C 00 00 00 */	cmpwi r0, 0
/* 802C0E18 002BCA78  41 82 00 1C */	beq lbl_802C0E34
/* 802C0E1C 002BCA7C  38 04 00 98 */	addi r0, r4, 0x98
/* 802C0E20 002BCA80  7C 00 18 40 */	cmplw r0, r3
/* 802C0E24 002BCA84  40 82 00 10 */	bne lbl_802C0E34
/* 802C0E28 002BCA88  38 00 00 00 */	li r0, 0
/* 802C0E2C 002BCA8C  98 04 00 B6 */	stb r0, 0xb6(r4)
/* 802C0E30 002BCA90  48 00 00 58 */	b lbl_802C0E88
lbl_802C0E34:
/* 802C0E34 002BCA94  88 04 00 D6 */	lbz r0, 0xd6(r4)
/* 802C0E38 002BCA98  3B C0 00 01 */	li r30, 1
/* 802C0E3C 002BCA9C  2C 00 00 00 */	cmpwi r0, 0
/* 802C0E40 002BCAA0  41 82 00 1C */	beq lbl_802C0E5C
/* 802C0E44 002BCAA4  38 04 00 B8 */	addi r0, r4, 0xb8
/* 802C0E48 002BCAA8  7C 00 18 40 */	cmplw r0, r3
/* 802C0E4C 002BCAAC  40 82 00 10 */	bne lbl_802C0E5C
/* 802C0E50 002BCAB0  38 00 00 00 */	li r0, 0
/* 802C0E54 002BCAB4  98 04 00 D6 */	stb r0, 0xd6(r4)
/* 802C0E58 002BCAB8  48 00 00 30 */	b lbl_802C0E88
lbl_802C0E5C:
/* 802C0E5C 002BCABC  88 04 00 F6 */	lbz r0, 0xf6(r4)
/* 802C0E60 002BCAC0  3B C0 00 02 */	li r30, 2
/* 802C0E64 002BCAC4  2C 00 00 00 */	cmpwi r0, 0
/* 802C0E68 002BCAC8  41 82 00 1C */	beq lbl_802C0E84
/* 802C0E6C 002BCACC  38 04 00 D8 */	addi r0, r4, 0xd8
/* 802C0E70 002BCAD0  7C 00 18 40 */	cmplw r0, r3
/* 802C0E74 002BCAD4  40 82 00 10 */	bne lbl_802C0E84
/* 802C0E78 002BCAD8  38 00 00 00 */	li r0, 0
/* 802C0E7C 002BCADC  98 04 00 F6 */	stb r0, 0xf6(r4)
/* 802C0E80 002BCAE0  48 00 00 08 */	b lbl_802C0E88
lbl_802C0E84:
/* 802C0E84 002BCAE4  3B C0 00 03 */	li r30, 3
lbl_802C0E88:
/* 802C0E88 002BCAE8  28 1E 00 03 */	cmplwi r30, 3
/* 802C0E8C 002BCAEC  41 82 00 44 */	beq lbl_802C0ED0
/* 802C0E90 002BCAF0  38 60 00 0E */	li r3, 0xe
/* 802C0E94 002BCAF4  4B FF 8C 19 */	bl GKI_getbuf
/* 802C0E98 002BCAF8  2C 03 00 00 */	cmpwi r3, 0
/* 802C0E9C 002BCAFC  7C 7F 1B 78 */	mr r31, r3
/* 802C0EA0 002BCB00  41 82 00 30 */	beq lbl_802C0ED0
/* 802C0EA4 002BCB04  3C 80 80 57 */	lis r4, lbl_80568814@ha
/* 802C0EA8 002BCB08  38 A0 01 0A */	li r5, 0x10a
/* 802C0EAC 002BCB0C  38 84 88 14 */	addi r4, r4, lbl_80568814@l
/* 802C0EB0 002BCB10  57 C0 2C F4 */	rlwinm r0, r30, 5, 0x13, 0x1a
/* 802C0EB4 002BCB14  B0 A3 00 00 */	sth r5, 0(r3)
/* 802C0EB8 002BCB18  7C 84 02 14 */	add r4, r4, r0
/* 802C0EBC 002BCB1C  38 84 00 B0 */	addi r4, r4, 0xb0
/* 802C0EC0 002BCB20  38 63 00 08 */	addi r3, r3, 8
/* 802C0EC4 002BCB24  4B FF C6 9D */	bl bdcpy
/* 802C0EC8 002BCB28  7F E3 FB 78 */	mr r3, r31
/* 802C0ECC 002BCB2C  4B FF CB 41 */	bl bta_sys_sendmsg
lbl_802C0ED0:
/* 802C0ED0 002BCB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0ED4 002BCB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0ED8 002BCB38  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C0EDC 002BCB3C  7C 08 03 A6 */	mtlr r0
/* 802C0EE0 002BCB40  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0EE4 002BCB44  4E 80 00 20 */	blr

bta_dm_pm_btm_status:
/* 802C0EE8 002BCB48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0EEC 002BCB4C  7C 08 02 A6 */	mflr r0
/* 802C0EF0 002BCB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0EF4 002BCB54  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0EF8 002BCB58  4B F0 62 31 */	bl _savegpr_27
/* 802C0EFC 002BCB5C  3F C0 80 57 */	lis r30, lbl_80568814@ha
/* 802C0F00 002BCB60  7C 7F 1B 78 */	mr r31, r3
/* 802C0F04 002BCB64  3B DE 88 14 */	addi r30, r30, lbl_80568814@l
/* 802C0F08 002BCB68  3B 60 00 00 */	li r27, 0
lbl_802C0F0C:
/* 802C0F0C 002BCB6C  57 7C 2C F4 */	rlwinm r28, r27, 5, 0x13, 0x1a
/* 802C0F10 002BCB70  7F BE E2 14 */	add r29, r30, r28
/* 802C0F14 002BCB74  88 1D 00 B6 */	lbz r0, 0xb6(r29)
/* 802C0F18 002BCB78  2C 00 00 00 */	cmpwi r0, 0
/* 802C0F1C 002BCB7C  41 82 00 30 */	beq lbl_802C0F4C
/* 802C0F20 002BCB80  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 802C0F24 002BCB84  38 9F 00 08 */	addi r4, r31, 8
/* 802C0F28 002BCB88  4B FF C6 6D */	bl bdcmp
/* 802C0F2C 002BCB8C  2C 03 00 00 */	cmpwi r3, 0
/* 802C0F30 002BCB90  40 82 00 1C */	bne lbl_802C0F4C
/* 802C0F34 002BCB94  7F A3 EB 78 */	mr r3, r29
/* 802C0F38 002BCB98  38 63 00 98 */	addi r3, r3, 0x98
/* 802C0F3C 002BCB9C  4B FF CB 0D */	bl bta_sys_stop_timer
/* 802C0F40 002BCBA0  38 00 00 00 */	li r0, 0
/* 802C0F44 002BCBA4  98 1D 00 B6 */	stb r0, 0xb6(r29)
/* 802C0F48 002BCBA8  48 00 00 10 */	b lbl_802C0F58
lbl_802C0F4C:
/* 802C0F4C 002BCBAC  3B 7B 00 01 */	addi r27, r27, 1
/* 802C0F50 002BCBB0  28 1B 00 03 */	cmplwi r27, 3
/* 802C0F54 002BCBB4  41 80 FF B8 */	blt lbl_802C0F0C
lbl_802C0F58:
/* 802C0F58 002BCBB8  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 802C0F5C 002BCBBC  2C 00 00 00 */	cmpwi r0, 0
/* 802C0F60 002BCBC0  41 82 00 08 */	beq lbl_802C0F68
/* 802C0F64 002BCBC4  48 00 00 8C */	b lbl_802C0FF0
lbl_802C0F68:
/* 802C0F68 002BCBC8  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 802C0F6C 002BCBCC  2C 00 00 00 */	cmpwi r0, 0
/* 802C0F70 002BCBD0  41 82 00 74 */	beq lbl_802C0FE4
/* 802C0F74 002BCBD4  3C 60 80 57 */	lis r3, lbl_80568814@ha
/* 802C0F78 002BCBD8  3B A0 00 00 */	li r29, 0
/* 802C0F7C 002BCBDC  3B C3 88 14 */	addi r30, r3, lbl_80568814@l
/* 802C0F80 002BCBE0  48 00 00 50 */	b lbl_802C0FD0
lbl_802C0F84:
/* 802C0F84 002BCBE4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C0F88 002BCBE8  38 9F 00 08 */	addi r4, r31, 8
/* 802C0F8C 002BCBEC  1F 80 00 0B */	mulli r28, r0, 0xb
/* 802C0F90 002BCBF0  7C 7E E2 14 */	add r3, r30, r28
/* 802C0F94 002BCBF4  4B FF C6 01 */	bl bdcmp
/* 802C0F98 002BCBF8  2C 03 00 00 */	cmpwi r3, 0
/* 802C0F9C 002BCBFC  40 82 00 30 */	bne lbl_802C0FCC
/* 802C0FA0 002BCC00  7C BE E2 14 */	add r5, r30, r28
/* 802C0FA4 002BCC04  88 05 00 09 */	lbz r0, 9(r5)
/* 802C0FA8 002BCC08  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 802C0FAC 002BCC0C  41 82 00 44 */	beq lbl_802C0FF0
/* 802C0FB0 002BCC10  88 05 00 0A */	lbz r0, 0xa(r5)
/* 802C0FB4 002BCC14  38 7F 00 08 */	addi r3, r31, 8
/* 802C0FB8 002BCC18  38 80 00 00 */	li r4, 0
/* 802C0FBC 002BCC1C  7C 00 33 78 */	or r0, r0, r6
/* 802C0FC0 002BCC20  98 05 00 0A */	stb r0, 0xa(r5)
/* 802C0FC4 002BCC24  4B FF FA 35 */	bl bta_dm_pm_set_mode
/* 802C0FC8 002BCC28  48 00 00 28 */	b lbl_802C0FF0
lbl_802C0FCC:
/* 802C0FCC 002BCC2C  3B BD 00 01 */	addi r29, r29, 1
lbl_802C0FD0:
/* 802C0FD0 002BCC30  88 1E 00 4D */	lbz r0, 0x4d(r30)
/* 802C0FD4 002BCC34  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802C0FD8 002BCC38  7C 03 00 40 */	cmplw r3, r0
/* 802C0FDC 002BCC3C  41 80 FF A8 */	blt lbl_802C0F84
/* 802C0FE0 002BCC40  48 00 00 10 */	b lbl_802C0FF0
lbl_802C0FE4:
/* 802C0FE4 002BCC44  38 7F 00 08 */	addi r3, r31, 8
/* 802C0FE8 002BCC48  38 80 00 00 */	li r4, 0
/* 802C0FEC 002BCC4C  4B FF FA 0D */	bl bta_dm_pm_set_mode
lbl_802C0FF0:
/* 802C0FF0 002BCC50  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0FF4 002BCC54  4B F0 61 81 */	bl _restgpr_27
/* 802C0FF8 002BCC58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0FFC 002BCC5C  7C 08 03 A6 */	mtlr r0
/* 802C1000 002BCC60  38 21 00 20 */	addi r1, r1, 0x20
/* 802C1004 002BCC64  4E 80 00 20 */	blr

bta_dm_pm_timer:
/* 802C1008 002BCC68  38 80 00 01 */	li r4, 1
/* 802C100C 002BCC6C  38 63 00 08 */	addi r3, r3, 8
/* 802C1010 002BCC70  4B FF F9 E8 */	b bta_dm_pm_set_mode
