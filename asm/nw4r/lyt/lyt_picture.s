.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q34nw4r2ut5ColorFv
__ct__Q34nw4r2ut5ColorFv:
/* 80386DB4 00382A14  38 00 FF FF */	li r0, -1
/* 80386DB8 00382A18  90 03 00 00 */	stw r0, 0(r3)
/* 80386DBC 00382A1C  4E 80 00 20 */	blr 

.global __ct__Q34nw4r3lyt7PictureFPCQ44nw4r3lyt3res7PictureRCQ34nw4r3lyt11ResBlockSet
__ct__Q34nw4r3lyt7PictureFPCQ44nw4r3lyt3res7PictureRCQ34nw4r3lyt11ResBlockSet:
/* 80386DC0 00382A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80386DC4 00382A24  7C 08 02 A6 */	mflr r0
/* 80386DC8 00382A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80386DCC 00382A2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80386DD0 00382A30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80386DD4 00382A34  7C BE 2B 78 */	mr r30, r5
/* 80386DD8 00382A38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80386DDC 00382A3C  7C 9D 23 78 */	mr r29, r4
/* 80386DE0 00382A40  93 81 00 10 */	stw r28, 0x10(r1)
/* 80386DE4 00382A44  7C 7C 1B 78 */	mr r28, r3
/* 80386DE8 00382A48  4B FF E1 65 */	bl __ct__Q34nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pane
/* 80386DEC 00382A4C  3C 60 80 45 */	lis r3, lbl_8044E2E8@ha
/* 80386DF0 00382A50  3C 80 80 38 */	lis r4, __ct__Q34nw4r2ut5ColorFv@ha
/* 80386DF4 00382A54  38 63 E2 E8 */	addi r3, r3, lbl_8044E2E8@l
/* 80386DF8 00382A58  3C A0 80 36 */	lis r5, func_80362698@ha
/* 80386DFC 00382A5C  90 7C 00 00 */	stw r3, 0(r28)
/* 80386E00 00382A60  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80386E04 00382A64  38 84 6D B4 */	addi r4, r4, __ct__Q34nw4r2ut5ColorFv@l
/* 80386E08 00382A68  38 A5 26 98 */	addi r5, r5, func_80362698@l
/* 80386E0C 00382A6C  38 C0 00 04 */	li r6, 4
/* 80386E10 00382A70  38 E0 00 04 */	li r7, 4
/* 80386E14 00382A74  4B E4 00 55 */	bl __construct_array
/* 80386E18 00382A78  38 7C 00 E4 */	addi r3, r28, 0xe4
/* 80386E1C 00382A7C  48 00 79 59 */	bl func_8038E774
/* 80386E20 00382A80  88 1D 00 5E */	lbz r0, 0x5e(r29)
/* 80386E24 00382A84  3B E0 00 08 */	li r31, 8
/* 80386E28 00382A88  28 00 00 08 */	cmplwi r0, 8
/* 80386E2C 00382A8C  41 81 00 08 */	bgt lbl_80386E34
/* 80386E30 00382A90  7C 1F 03 78 */	mr r31, r0
lbl_80386E34:
/* 80386E34 00382A94  57 E4 06 3F */	clrlwi. r4, r31, 0x18
/* 80386E38 00382A98  41 82 00 0C */	beq lbl_80386E44
/* 80386E3C 00382A9C  38 7C 00 E4 */	addi r3, r28, 0xe4
/* 80386E40 00382AA0  48 00 79 95 */	bl func_8038E7D4
lbl_80386E44:
/* 80386E44 00382AA4  80 DD 00 4C */	lwz r6, 0x4c(r29)
/* 80386E48 00382AA8  57 E5 06 3F */	clrlwi. r5, r31, 0x18
/* 80386E4C 00382AAC  80 9D 00 50 */	lwz r4, 0x50(r29)
/* 80386E50 00382AB0  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 80386E54 00382AB4  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80386E58 00382AB8  90 DC 00 D4 */	stw r6, 0xd4(r28)
/* 80386E5C 00382ABC  90 9C 00 D8 */	stw r4, 0xd8(r28)
/* 80386E60 00382AC0  90 7C 00 DC */	stw r3, 0xdc(r28)
/* 80386E64 00382AC4  90 1C 00 E0 */	stw r0, 0xe0(r28)
/* 80386E68 00382AC8  41 82 00 1C */	beq lbl_80386E84
/* 80386E6C 00382ACC  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 80386E70 00382AD0  2C 00 00 00 */	cmpwi r0, 0
/* 80386E74 00382AD4  41 82 00 10 */	beq lbl_80386E84
/* 80386E78 00382AD8  38 7C 00 E4 */	addi r3, r28, 0xe4
/* 80386E7C 00382ADC  38 9D 00 60 */	addi r4, r29, 0x60
/* 80386E80 00382AE0  48 00 7A C1 */	bl func_8038E940
lbl_80386E84:
/* 80386E84 00382AE4  80 6D B2 B0 */	lwz r3, lbl_80640570-_SDA_BASE_(r13)
/* 80386E88 00382AE8  38 80 00 5C */	li r4, 0x5c
/* 80386E8C 00382AEC  4B F1 08 99 */	bl func_80297724
/* 80386E90 00382AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80386E94 00382AF4  41 82 00 2C */	beq lbl_80386EC0
/* 80386E98 00382AF8  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 80386E9C 00382AFC  80 BE 00 08 */	lwz r5, 8(r30)
/* 80386EA0 00382B00  54 00 10 3A */	slwi r0, r0, 2
/* 80386EA4 00382B04  7C 85 02 14 */	add r4, r5, r0
/* 80386EA8 00382B08  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80386EAC 00382B0C  7C 85 02 14 */	add r4, r5, r0
/* 80386EB0 00382B10  41 82 00 0C */	beq lbl_80386EBC
/* 80386EB4 00382B14  7F C5 F3 78 */	mr r5, r30
/* 80386EB8 00382B18  48 00 38 25 */	bl __ct__Q34nw4r3lyt8MaterialFPCQ44nw4r3lyt3res8MaterialRCQ34nw4r3lyt11ResBlockSet
lbl_80386EBC:
/* 80386EBC 00382B1C  90 7C 00 28 */	stw r3, 0x28(r28)
lbl_80386EC0:
/* 80386EC0 00382B20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80386EC4 00382B24  7F 83 E3 78 */	mr r3, r28
/* 80386EC8 00382B28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80386ECC 00382B2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80386ED0 00382B30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80386ED4 00382B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80386ED8 00382B38  7C 08 03 A6 */	mtlr r0
/* 80386EDC 00382B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80386EE0 00382B40  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3lyt7PictureFv
__dt__Q34nw4r3lyt7PictureFv:
/* 80386EE4 00382B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80386EE8 00382B48  7C 08 02 A6 */	mflr r0
/* 80386EEC 00382B4C  2C 03 00 00 */	cmpwi r3, 0
/* 80386EF0 00382B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80386EF4 00382B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80386EF8 00382B58  7C 9F 23 78 */	mr r31, r4
/* 80386EFC 00382B5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80386F00 00382B60  7C 7E 1B 78 */	mr r30, r3
/* 80386F04 00382B64  41 82 00 90 */	beq lbl_80386F94
/* 80386F08 00382B68  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80386F0C 00382B6C  3C 80 80 45 */	lis r4, lbl_8044E2E8@ha
/* 80386F10 00382B70  38 84 E2 E8 */	addi r4, r4, lbl_8044E2E8@l
/* 80386F14 00382B74  2C 05 00 00 */	cmpwi r5, 0
/* 80386F18 00382B78  90 83 00 00 */	stw r4, 0(r3)
/* 80386F1C 00382B7C  41 82 00 3C */	beq lbl_80386F58
/* 80386F20 00382B80  88 05 00 59 */	lbz r0, 0x59(r5)
/* 80386F24 00382B84  2C 00 00 00 */	cmpwi r0, 0
/* 80386F28 00382B88  40 82 00 30 */	bne lbl_80386F58
/* 80386F2C 00382B8C  81 85 00 00 */	lwz r12, 0(r5)
/* 80386F30 00382B90  7C A3 2B 78 */	mr r3, r5
/* 80386F34 00382B94  38 80 FF FF */	li r4, -1
/* 80386F38 00382B98  81 8C 00 08 */	lwz r12, 8(r12)
/* 80386F3C 00382B9C  7D 89 03 A6 */	mtctr r12
/* 80386F40 00382BA0  4E 80 04 21 */	bctrl 
/* 80386F44 00382BA4  80 6D B2 B0 */	lwz r3, lbl_80640570-_SDA_BASE_(r13)
/* 80386F48 00382BA8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80386F4C 00382BAC  4B F1 07 E9 */	bl func_80297734
/* 80386F50 00382BB0  38 00 00 00 */	li r0, 0
/* 80386F54 00382BB4  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_80386F58:
/* 80386F58 00382BB8  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 80386F5C 00382BBC  48 00 78 2D */	bl func_8038E788
/* 80386F60 00382BC0  3C 80 80 36 */	lis r4, func_80362698@ha
/* 80386F64 00382BC4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80386F68 00382BC8  38 84 26 98 */	addi r4, r4, func_80362698@l
/* 80386F6C 00382BCC  38 A0 00 04 */	li r5, 4
/* 80386F70 00382BD0  38 C0 00 04 */	li r6, 4
/* 80386F74 00382BD4  4B E3 FF ED */	bl __destroy_arr
/* 80386F78 00382BD8  7F C3 F3 78 */	mr r3, r30
/* 80386F7C 00382BDC  38 80 00 00 */	li r4, 0
/* 80386F80 00382BE0  4B FF E1 01 */	bl __dt__Q34nw4r3lyt4PaneFv
/* 80386F84 00382BE4  2C 1F 00 00 */	cmpwi r31, 0
/* 80386F88 00382BE8  40 81 00 0C */	ble lbl_80386F94
/* 80386F8C 00382BEC  7F C3 F3 78 */	mr r3, r30
/* 80386F90 00382BF0  4B E5 3B 29 */	bl func_801DAAB8
lbl_80386F94:
/* 80386F94 00382BF4  7F C3 F3 78 */	mr r3, r30
/* 80386F98 00382BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80386F9C 00382BFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80386FA0 00382C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80386FA4 00382C04  7C 08 03 A6 */	mtlr r0
/* 80386FA8 00382C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80386FAC 00382C0C  4E 80 00 20 */	blr 

.global Append__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt6TexMap
Append__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt6TexMap:
/* 80386FB0 00382C10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80386FB4 00382C14  7C 08 02 A6 */	mflr r0
/* 80386FB8 00382C18  90 01 00 34 */	stw r0, 0x34(r1)
/* 80386FBC 00382C1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80386FC0 00382C20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80386FC4 00382C24  7C 7E 1B 78 */	mr r30, r3
/* 80386FC8 00382C28  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80386FCC 00382C2C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80386FD0 00382C30  7C 9C 23 78 */	mr r28, r4
/* 80386FD4 00382C34  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80386FD8 00382C38  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 80386FDC 00382C3C  80 65 00 38 */	lwz r3, 0x38(r5)
/* 80386FE0 00382C40  54 1F 27 3E */	srwi r31, r0, 0x1c
/* 80386FE4 00382C44  54 60 27 3E */	srwi r0, r3, 0x1c
/* 80386FE8 00382C48  7C 1F 00 40 */	cmplw r31, r0
/* 80386FEC 00382C4C  40 80 01 58 */	bge lbl_80387144
/* 80386FF0 00382C50  54 60 67 3E */	rlwinm r0, r3, 0xc, 0x1c, 0x1f
/* 80386FF4 00382C54  7C 1F 00 40 */	cmplw r31, r0
/* 80386FF8 00382C58  41 80 00 08 */	blt lbl_80387000
/* 80386FFC 00382C5C  48 00 01 48 */	b lbl_80387144
lbl_80387000:
/* 80387000 00382C60  38 1F 00 01 */	addi r0, r31, 1
/* 80387004 00382C64  7C A3 2B 78 */	mr r3, r5
/* 80387008 00382C68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8038700C 00382C6C  48 00 4F C5 */	bl SetTextureNum__Q34nw4r3lyt8MaterialFUc
/* 80387010 00382C70  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80387014 00382C74  48 00 4F 1D */	bl GetTexMapAry__Q34nw4r3lyt8MaterialFv
/* 80387018 00382C78  1C 1F 00 1C */	mulli r0, r31, 0x1c
/* 8038701C 00382C7C  80 DC 00 00 */	lwz r6, 0(r28)
/* 80387020 00382C80  80 BC 00 04 */	lwz r5, 4(r28)
/* 80387024 00382C84  A0 9C 00 08 */	lhz r4, 8(r28)
/* 80387028 00382C88  7C E3 02 14 */	add r7, r3, r0
/* 8038702C 00382C8C  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 80387030 00382C90  90 C7 00 00 */	stw r6, 0(r7)
/* 80387034 00382C94  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80387038 00382C98  90 A7 00 04 */	stw r5, 4(r7)
/* 8038703C 00382C9C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80387040 00382CA0  B0 87 00 08 */	sth r4, 8(r7)
/* 80387044 00382CA4  A0 9C 00 14 */	lhz r4, 0x14(r28)
/* 80387048 00382CA8  B0 07 00 0A */	sth r0, 0xa(r7)
/* 8038704C 00382CAC  A0 7C 00 16 */	lhz r3, 0x16(r28)
/* 80387050 00382CB0  D0 27 00 0C */	stfs f1, 0xc(r7)
/* 80387054 00382CB4  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80387058 00382CB8  D0 07 00 10 */	stfs f0, 0x10(r7)
/* 8038705C 00382CBC  B0 87 00 14 */	sth r4, 0x14(r7)
/* 80387060 00382CC0  B0 67 00 16 */	sth r3, 0x16(r7)
/* 80387064 00382CC4  90 07 00 18 */	stw r0, 0x18(r7)
/* 80387068 00382CC8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8038706C 00382CCC  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80387070 00382CD0  54 04 27 3E */	srwi r4, r0, 0x1c
/* 80387074 00382CD4  48 00 4F ED */	bl SetTexCoordGenNum__Q34nw4r3lyt8MaterialFUc
/* 80387078 00382CD8  3B 80 00 00 */	li r28, 0
/* 8038707C 00382CDC  3B A0 00 01 */	li r29, 1
/* 80387080 00382CE0  38 80 00 04 */	li r4, 4
/* 80387084 00382CE4  38 00 00 3C */	li r0, 0x3c
/* 80387088 00382CE8  9B 81 00 0B */	stb r28, 0xb(r1)
/* 8038708C 00382CEC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80387090 00382CF0  9B A1 00 08 */	stb r29, 8(r1)
/* 80387094 00382CF4  98 81 00 09 */	stb r4, 9(r1)
/* 80387098 00382CF8  98 01 00 0A */	stb r0, 0xa(r1)
/* 8038709C 00382CFC  80 01 00 08 */	lwz r0, 8(r1)
/* 803870A0 00382D00  90 01 00 0C */	stw r0, 0xc(r1)
/* 803870A4 00382D04  48 00 4E AD */	bl GetTexCoordGenAry__Q34nw4r3lyt8MaterialFv
/* 803870A8 00382D08  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 803870AC 00382D0C  88 81 00 0C */	lbz r4, 0xc(r1)
/* 803870B0 00382D10  7C A3 02 14 */	add r5, r3, r0
/* 803870B4 00382D14  88 01 00 0D */	lbz r0, 0xd(r1)
/* 803870B8 00382D18  98 85 00 00 */	stb r4, 0(r5)
/* 803870BC 00382D1C  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 803870C0 00382D20  88 81 00 0E */	lbz r4, 0xe(r1)
/* 803870C4 00382D24  98 05 00 01 */	stb r0, 1(r5)
/* 803870C8 00382D28  88 01 00 0F */	lbz r0, 0xf(r1)
/* 803870CC 00382D2C  98 85 00 02 */	stb r4, 2(r5)
/* 803870D0 00382D30  98 05 00 03 */	stb r0, 3(r5)
/* 803870D4 00382D34  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 803870D8 00382D38  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 803870DC 00382D3C  54 04 27 3E */	srwi r4, r0, 0x1c
/* 803870E0 00382D40  48 00 77 75 */	bl func_8038E854
/* 803870E4 00382D44  C0 22 A8 68 */	lfs f1, lbl_80642E68-_SDA2_BASE_(r2)
/* 803870E8 00382D48  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 803870EC 00382D4C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 803870F0 00382D50  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803870F4 00382D54  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 803870F8 00382D58  40 82 00 14 */	bne lbl_8038710C
/* 803870FC 00382D5C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80387100 00382D60  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80387104 00382D64  40 82 00 08 */	bne lbl_8038710C
/* 80387108 00382D68  7F BC EB 78 */	mr r28, r29
lbl_8038710C:
/* 8038710C 00382D6C  2C 1C 00 00 */	cmpwi r28, 0
/* 80387110 00382D70  41 82 00 34 */	beq lbl_80387144
/* 80387114 00382D74  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80387118 00382D78  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 8038711C 00382D7C  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80387120 00382D80  28 00 00 01 */	cmplwi r0, 1
/* 80387124 00382D84  40 82 00 20 */	bne lbl_80387144
/* 80387128 00382D88  38 61 00 10 */	addi r3, r1, 0x10
/* 8038712C 00382D8C  38 A0 00 00 */	li r5, 0
/* 80387130 00382D90  48 00 61 E9 */	bl GetTextureSize__Q34nw4r3lyt6detailFPQ34nw4r3lyt8MaterialUc
/* 80387134 00382D94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80387138 00382D98  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 8038713C 00382D9C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80387140 00382DA0  D0 1E 00 50 */	stfs f0, 0x50(r30)
lbl_80387144:
/* 80387144 00382DA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80387148 00382DA8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8038714C 00382DAC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80387150 00382DB0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80387154 00382DB4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80387158 00382DB8  7C 08 03 A6 */	mtlr r0
/* 8038715C 00382DBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80387160 00382DC0  4E 80 00 20 */	blr 

.global GetVtxColor__Q34nw4r3lyt7PictureCFUl
GetVtxColor__Q34nw4r3lyt7PictureCFUl:
/* 80387164 00382DC4  54 A0 10 3A */	slwi r0, r5, 2
/* 80387168 00382DC8  7C E4 02 14 */	add r7, r4, r0
/* 8038716C 00382DCC  88 C7 00 D4 */	lbz r6, 0xd4(r7)
/* 80387170 00382DD0  88 A7 00 D5 */	lbz r5, 0xd5(r7)
/* 80387174 00382DD4  88 87 00 D6 */	lbz r4, 0xd6(r7)
/* 80387178 00382DD8  88 07 00 D7 */	lbz r0, 0xd7(r7)
/* 8038717C 00382DDC  98 C3 00 00 */	stb r6, 0(r3)
/* 80387180 00382DE0  98 A3 00 01 */	stb r5, 1(r3)
/* 80387184 00382DE4  98 83 00 02 */	stb r4, 2(r3)
/* 80387188 00382DE8  98 03 00 03 */	stb r0, 3(r3)
/* 8038718C 00382DEC  4E 80 00 20 */	blr 

.global SetVtxColor__Q34nw4r3lyt7PictureFUlQ34nw4r2ut5Color
SetVtxColor__Q34nw4r3lyt7PictureFUlQ34nw4r2ut5Color:
/* 80387190 00382DF0  54 80 10 3A */	slwi r0, r4, 2
/* 80387194 00382DF4  88 C5 00 00 */	lbz r6, 0(r5)
/* 80387198 00382DF8  7C 83 02 14 */	add r4, r3, r0
/* 8038719C 00382DFC  88 05 00 01 */	lbz r0, 1(r5)
/* 803871A0 00382E00  98 C4 00 D4 */	stb r6, 0xd4(r4)
/* 803871A4 00382E04  88 65 00 02 */	lbz r3, 2(r5)
/* 803871A8 00382E08  98 04 00 D5 */	stb r0, 0xd5(r4)
/* 803871AC 00382E0C  88 05 00 03 */	lbz r0, 3(r5)
/* 803871B0 00382E10  98 64 00 D6 */	stb r3, 0xd6(r4)
/* 803871B4 00382E14  98 04 00 D7 */	stb r0, 0xd7(r4)
/* 803871B8 00382E18  4E 80 00 20 */	blr 

.global GetVtxColorElement__Q34nw4r3lyt7PictureCFUl
GetVtxColorElement__Q34nw4r3lyt7PictureCFUl:
/* 803871BC 00382E1C  54 85 00 3A */	rlwinm r5, r4, 0, 0, 0x1d
/* 803871C0 00382E20  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 803871C4 00382E24  7C 63 2A 14 */	add r3, r3, r5
/* 803871C8 00382E28  7C 63 02 14 */	add r3, r3, r0
/* 803871CC 00382E2C  88 63 00 D4 */	lbz r3, 0xd4(r3)
/* 803871D0 00382E30  4E 80 00 20 */	blr 

.global SetVtxColorElement__Q34nw4r3lyt7PictureFUlUc
SetVtxColorElement__Q34nw4r3lyt7PictureFUlUc:
/* 803871D4 00382E34  54 86 00 3A */	rlwinm r6, r4, 0, 0, 0x1d
/* 803871D8 00382E38  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 803871DC 00382E3C  7C 63 32 14 */	add r3, r3, r6
/* 803871E0 00382E40  7C 63 02 14 */	add r3, r3, r0
/* 803871E4 00382E44  98 A3 00 D4 */	stb r5, 0xd4(r3)
/* 803871E8 00382E48  4E 80 00 20 */	blr 

.global DrawSelf__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt8DrawInfo
DrawSelf__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt8DrawInfo:
/* 803871EC 00382E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803871F0 00382E50  7C 08 02 A6 */	mflr r0
/* 803871F4 00382E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 803871F8 00382E58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803871FC 00382E5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80387200 00382E60  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80387204 00382E64  93 81 00 10 */	stw r28, 0x10(r1)
/* 80387208 00382E68  7C 7C 1B 78 */	mr r28, r3
/* 8038720C 00382E6C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80387210 00382E70  2C 00 00 00 */	cmpwi r0, 0
/* 80387214 00382E74  41 82 00 94 */	beq lbl_803872A8
/* 80387218 00382E78  81 83 00 00 */	lwz r12, 0(r3)
/* 8038721C 00382E7C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80387220 00382E80  7D 89 03 A6 */	mtctr r12
/* 80387224 00382E84  4E 80 04 21 */	bctrl 
/* 80387228 00382E88  8B BC 00 B5 */	lbz r29, 0xb5(r28)
/* 8038722C 00382E8C  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80387230 00382E90  7F A4 EB 78 */	mr r4, r29
/* 80387234 00382E94  48 00 77 A1 */	bl func_8038E9D4
/* 80387238 00382E98  7C 64 1B 78 */	mr r4, r3
/* 8038723C 00382E9C  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80387240 00382EA0  7F A5 EB 78 */	mr r5, r29
/* 80387244 00382EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80387248 00382EA8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8038724C 00382EAC  7D 89 03 A6 */	mtctr r12
/* 80387250 00382EB0  4E 80 04 21 */	bctrl 
/* 80387254 00382EB4  88 9C 00 E5 */	lbz r4, 0xe5(r28)
/* 80387258 00382EB8  7C 7D 1B 78 */	mr r29, r3
/* 8038725C 00382EBC  48 00 78 35 */	bl func_8038EA90
/* 80387260 00382EC0  2C 1D 00 00 */	cmpwi r29, 0
/* 80387264 00382EC4  41 82 00 0C */	beq lbl_80387270
/* 80387268 00382EC8  3B DC 00 D4 */	addi r30, r28, 0xd4
/* 8038726C 00382ECC  48 00 00 08 */	b lbl_80387274
lbl_80387270:
/* 80387270 00382ED0  3B C0 00 00 */	li r30, 0
lbl_80387274:
/* 80387274 00382ED4  83 BC 00 E8 */	lwz r29, 0xe8(r28)
/* 80387278 00382ED8  7F 83 E3 78 */	mr r3, r28
/* 8038727C 00382EDC  8B FC 00 E5 */	lbz r31, 0xe5(r28)
/* 80387280 00382EE0  4B FF EA 99 */	bl GetVtxPos__Q34nw4r3lyt4PaneCFv
/* 80387284 00382EE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80387288 00382EE8  7F E5 FB 78 */	mr r5, r31
/* 8038728C 00382EEC  7F A6 EB 78 */	mr r6, r29
/* 80387290 00382EF0  7F C7 F3 78 */	mr r7, r30
/* 80387294 00382EF4  90 61 00 08 */	stw r3, 8(r1)
/* 80387298 00382EF8  38 61 00 08 */	addi r3, r1, 8
/* 8038729C 00382EFC  38 9C 00 4C */	addi r4, r28, 0x4c
/* 803872A0 00382F00  89 1C 00 B5 */	lbz r8, 0xb5(r28)
/* 803872A4 00382F04  48 00 7E 31 */	bl func_8038F0D4
lbl_803872A8:
/* 803872A8 00382F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803872AC 00382F0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803872B0 00382F10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803872B4 00382F14  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803872B8 00382F18  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803872BC 00382F1C  7C 08 03 A6 */	mtlr r0
/* 803872C0 00382F20  38 21 00 20 */	addi r1, r1, 0x20
/* 803872C4 00382F24  4E 80 00 20 */	blr 

.global GetRuntimeTypeInfo__Q34nw4r3lyt7PictureCFv
GetRuntimeTypeInfo__Q34nw4r3lyt7PictureCFv:
/* 803872C8 00382F28  38 6D B2 B8 */	addi r3, r13, lbl_80640578-_SDA_BASE_
/* 803872CC 00382F2C  4E 80 00 20 */	blr 

.global __sinit_$3lyt_picture_cpp
__sinit_$3lyt_picture_cpp:
/* 803872D0 00382F30  38 0D B2 A8 */	addi r0, r13, lbl_80640568-_SDA_BASE_
/* 803872D4 00382F34  90 0D B2 B8 */	stw r0, lbl_80640578-_SDA_BASE_(r13)
/* 803872D8 00382F38  4E 80 00 20 */	blr 
