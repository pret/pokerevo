.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80244EDC
func_80244EDC:
/* 80244EDC 00240B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244EE0 00240B40  7C 08 02 A6 */	mflr r0
/* 80244EE4 00240B44  3C 80 00 01 */	lis r4, 0x00008000@ha
/* 80244EE8 00240B48  38 A0 00 00 */	li r5, 0
/* 80244EEC 00240B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244EF0 00240B50  38 04 80 00 */	addi r0, r4, 0x00008000@l
/* 80244EF4 00240B54  2C 03 00 00 */	cmpwi r3, 0
/* 80244EF8 00240B58  90 AD A5 24 */	stw r5, lbl_8063F7E4-_SDA_BASE_(r13)
/* 80244EFC 00240B5C  90 0D A5 18 */	stw r0, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80244F00 00240B60  90 6D A5 1C */	stw r3, lbl_8063F7DC-_SDA_BASE_(r13)
/* 80244F04 00240B64  40 82 00 0C */	bne lbl_80244F10
/* 80244F08 00240B68  3C 60 00 08 */	lis r3, 8
/* 80244F0C 00240B6C  90 6D A5 1C */	stw r3, lbl_8063F7DC-_SDA_BASE_(r13)
lbl_80244F10:
/* 80244F10 00240B70  54 60 8B FF */	rlwinm. r0, r3, 0x11, 0xf, 0x1f
/* 80244F14 00240B74  90 0D A5 20 */	stw r0, lbl_8063F7E0-_SDA_BASE_(r13)
/* 80244F18 00240B78  40 82 00 0C */	bne lbl_80244F24
/* 80244F1C 00240B7C  38 60 00 00 */	li r3, 0
/* 80244F20 00240B80  48 00 00 98 */	b lbl_80244FB8
lbl_80244F24:
/* 80244F24 00240B84  80 6D 96 2C */	lwz r3, lbl_8063E8EC-_SDA_BASE_(r13)
/* 80244F28 00240B88  54 04 78 20 */	slwi r4, r0, 0xf
/* 80244F2C 00240B8C  4B F9 5D 69 */	bl func_801DAC94
/* 80244F30 00240B90  2C 03 00 00 */	cmpwi r3, 0
/* 80244F34 00240B94  90 6D A5 28 */	stw r3, lbl_8063F7E8-_SDA_BASE_(r13)
/* 80244F38 00240B98  40 82 00 0C */	bne lbl_80244F44
/* 80244F3C 00240B9C  38 60 00 00 */	li r3, 0
/* 80244F40 00240BA0  48 00 00 78 */	b lbl_80244FB8
lbl_80244F44:
/* 80244F44 00240BA4  80 0D A5 20 */	lwz r0, lbl_8063F7E0-_SDA_BASE_(r13)
/* 80244F48 00240BA8  54 03 20 36 */	slwi r3, r0, 4
/* 80244F4C 00240BAC  48 00 23 35 */	bl func_80247280
/* 80244F50 00240BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80244F54 00240BB4  90 6D A5 2C */	stw r3, lbl_8063F7EC-_SDA_BASE_(r13)
/* 80244F58 00240BB8  40 82 00 0C */	bne lbl_80244F64
/* 80244F5C 00240BBC  38 60 00 00 */	li r3, 0
/* 80244F60 00240BC0  48 00 00 58 */	b lbl_80244FB8
lbl_80244F64:
/* 80244F64 00240BC4  38 C0 00 00 */	li r6, 0
/* 80244F68 00240BC8  38 A0 00 00 */	li r5, 0
/* 80244F6C 00240BCC  38 80 00 00 */	li r4, 0
/* 80244F70 00240BD0  48 00 00 38 */	b lbl_80244FA8
lbl_80244F74:
/* 80244F74 00240BD4  80 6D A5 2C */	lwz r3, lbl_8063F7EC-_SDA_BASE_(r13)
/* 80244F78 00240BD8  38 C6 00 01 */	addi r6, r6, 1
/* 80244F7C 00240BDC  7C 83 29 2E */	stwx r4, r3, r5
/* 80244F80 00240BE0  80 0D A5 2C */	lwz r0, lbl_8063F7EC-_SDA_BASE_(r13)
/* 80244F84 00240BE4  7C 60 2A 14 */	add r3, r0, r5
/* 80244F88 00240BE8  90 83 00 04 */	stw r4, 4(r3)
/* 80244F8C 00240BEC  80 0D A5 2C */	lwz r0, lbl_8063F7EC-_SDA_BASE_(r13)
/* 80244F90 00240BF0  7C 60 2A 14 */	add r3, r0, r5
/* 80244F94 00240BF4  90 83 00 08 */	stw r4, 8(r3)
/* 80244F98 00240BF8  80 0D A5 2C */	lwz r0, lbl_8063F7EC-_SDA_BASE_(r13)
/* 80244F9C 00240BFC  7C 60 2A 14 */	add r3, r0, r5
/* 80244FA0 00240C00  38 A5 00 10 */	addi r5, r5, 0x10
/* 80244FA4 00240C04  90 83 00 0C */	stw r4, 0xc(r3)
lbl_80244FA8:
/* 80244FA8 00240C08  80 0D A5 20 */	lwz r0, lbl_8063F7E0-_SDA_BASE_(r13)
/* 80244FAC 00240C0C  7C 06 00 40 */	cmplw r6, r0
/* 80244FB0 00240C10  41 80 FF C4 */	blt lbl_80244F74
/* 80244FB4 00240C14  38 60 00 01 */	li r3, 1
lbl_80244FB8:
/* 80244FB8 00240C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244FBC 00240C1C  7C 08 03 A6 */	mtlr r0
/* 80244FC0 00240C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80244FC4 00240C24  4E 80 00 20 */	blr

.global func_80244FC8
func_80244FC8:
/* 80244FC8 00240C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244FCC 00240C2C  7C 08 02 A6 */	mflr r0
/* 80244FD0 00240C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244FD4 00240C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244FD8 00240C38  3B E0 00 00 */	li r31, 0
/* 80244FDC 00240C3C  48 02 97 81 */	bl OSDisableInterrupts
/* 80244FE0 00240C40  80 ED A5 24 */	lwz r7, lbl_8063F7E4-_SDA_BASE_(r13)
/* 80244FE4 00240C44  38 80 00 00 */	li r4, 0
/* 80244FE8 00240C48  48 00 00 60 */	b lbl_80245048
lbl_80244FEC:
/* 80244FEC 00240C4C  80 AD A5 2C */	lwz r5, lbl_8063F7EC-_SDA_BASE_(r13)
/* 80244FF0 00240C50  54 E0 20 36 */	slwi r0, r7, 4
/* 80244FF4 00240C54  7C C5 02 14 */	add r6, r5, r0
/* 80244FF8 00240C58  80 06 00 08 */	lwz r0, 8(r6)
/* 80244FFC 00240C5C  2C 00 00 00 */	cmpwi r0, 0
/* 80245000 00240C60  40 82 00 28 */	bne lbl_80245028
/* 80245004 00240C64  80 0D A5 18 */	lwz r0, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80245008 00240C68  7C DF 33 78 */	mr r31, r6
/* 8024500C 00240C6C  80 AD A5 28 */	lwz r5, lbl_8063F7E8-_SDA_BASE_(r13)
/* 80245010 00240C70  7C 07 01 D6 */	mullw r0, r7, r0
/* 80245014 00240C74  7C 05 02 14 */	add r0, r5, r0
/* 80245018 00240C78  90 06 00 08 */	stw r0, 8(r6)
/* 8024501C 00240C7C  90 86 00 00 */	stw r4, 0(r6)
/* 80245020 00240C80  90 86 00 04 */	stw r4, 4(r6)
/* 80245024 00240C84  90 86 00 0C */	stw r4, 0xc(r6)
lbl_80245028:
/* 80245028 00240C88  80 0D A5 20 */	lwz r0, lbl_8063F7E0-_SDA_BASE_(r13)
/* 8024502C 00240C8C  38 E7 00 01 */	addi r7, r7, 1
/* 80245030 00240C90  7C 07 00 40 */	cmplw r7, r0
/* 80245034 00240C94  41 80 00 08 */	blt lbl_8024503C
/* 80245038 00240C98  38 E0 00 00 */	li r7, 0
lbl_8024503C:
/* 8024503C 00240C9C  80 0D A5 24 */	lwz r0, lbl_8063F7E4-_SDA_BASE_(r13)
/* 80245040 00240CA0  7C 00 38 40 */	cmplw r0, r7
/* 80245044 00240CA4  41 82 00 0C */	beq lbl_80245050
lbl_80245048:
/* 80245048 00240CA8  2C 1F 00 00 */	cmpwi r31, 0
/* 8024504C 00240CAC  41 82 FF A0 */	beq lbl_80244FEC
lbl_80245050:
/* 80245050 00240CB0  90 ED A5 24 */	stw r7, lbl_8063F7E4-_SDA_BASE_(r13)
/* 80245054 00240CB4  48 02 97 31 */	bl OSRestoreInterrupts
/* 80245058 00240CB8  7F E3 FB 78 */	mr r3, r31
/* 8024505C 00240CBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80245060 00240CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245064 00240CC4  7C 08 03 A6 */	mtlr r0
/* 80245068 00240CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8024506C 00240CCC  4E 80 00 20 */	blr

.global func_80245070
func_80245070:
/* 80245070 00240CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245074 00240CD4  7C 08 02 A6 */	mflr r0
/* 80245078 00240CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024507C 00240CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80245080 00240CE0  7C 9F 23 78 */	mr r31, r4
/* 80245084 00240CE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80245088 00240CE8  7C 7E 1B 78 */	mr r30, r3
/* 8024508C 00240CEC  48 02 96 D1 */	bl OSDisableInterrupts
/* 80245090 00240CF0  80 BE 00 00 */	lwz r5, 0(r30)
/* 80245094 00240CF4  2C 05 00 00 */	cmpwi r5, 0
/* 80245098 00240CF8  41 82 00 8C */	beq lbl_80245124
/* 8024509C 00240CFC  2C 1F 00 00 */	cmpwi r31, 0
/* 802450A0 00240D00  40 82 00 4C */	bne lbl_802450EC
/* 802450A4 00240D04  48 00 00 08 */	b lbl_802450AC
lbl_802450A8:
/* 802450A8 00240D08  7C 05 03 78 */	mr r5, r0
lbl_802450AC:
/* 802450AC 00240D0C  80 05 00 04 */	lwz r0, 4(r5)
/* 802450B0 00240D10  2C 00 00 00 */	cmpwi r0, 0
/* 802450B4 00240D14  40 82 FF F4 */	bne lbl_802450A8
/* 802450B8 00240D18  80 85 00 00 */	lwz r4, 0(r5)
/* 802450BC 00240D1C  2C 04 00 00 */	cmpwi r4, 0
/* 802450C0 00240D20  41 82 00 0C */	beq lbl_802450CC
/* 802450C4 00240D24  38 00 00 00 */	li r0, 0
/* 802450C8 00240D28  90 04 00 04 */	stw r0, 4(r4)
lbl_802450CC:
/* 802450CC 00240D2C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802450D0 00240D30  7C 00 28 40 */	cmplw r0, r5
/* 802450D4 00240D34  40 82 00 0C */	bne lbl_802450E0
/* 802450D8 00240D38  38 00 00 00 */	li r0, 0
/* 802450DC 00240D3C  90 1E 00 00 */	stw r0, 0(r30)
lbl_802450E0:
/* 802450E0 00240D40  38 00 00 00 */	li r0, 0
/* 802450E4 00240D44  90 05 00 08 */	stw r0, 8(r5)
/* 802450E8 00240D48  48 00 00 3C */	b lbl_80245124
lbl_802450EC:
/* 802450EC 00240D4C  80 85 00 00 */	lwz r4, 0(r5)
/* 802450F0 00240D50  2C 04 00 00 */	cmpwi r4, 0
/* 802450F4 00240D54  41 82 00 0C */	beq lbl_80245100
/* 802450F8 00240D58  80 05 00 04 */	lwz r0, 4(r5)
/* 802450FC 00240D5C  90 04 00 04 */	stw r0, 4(r4)
lbl_80245100:
/* 80245100 00240D60  80 85 00 04 */	lwz r4, 4(r5)
/* 80245104 00240D64  2C 04 00 00 */	cmpwi r4, 0
/* 80245108 00240D68  41 82 00 0C */	beq lbl_80245114
/* 8024510C 00240D6C  80 05 00 00 */	lwz r0, 0(r5)
/* 80245110 00240D70  90 04 00 00 */	stw r0, 0(r4)
lbl_80245114:
/* 80245114 00240D74  38 00 00 00 */	li r0, 0
/* 80245118 00240D78  90 05 00 08 */	stw r0, 8(r5)
/* 8024511C 00240D7C  80 05 00 04 */	lwz r0, 4(r5)
/* 80245120 00240D80  90 1E 00 00 */	stw r0, 0(r30)
lbl_80245124:
/* 80245124 00240D84  48 02 96 61 */	bl OSRestoreInterrupts
/* 80245128 00240D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024512C 00240D8C  38 60 00 01 */	li r3, 1
/* 80245130 00240D90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80245134 00240D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245138 00240D98  7C 08 03 A6 */	mtlr r0
/* 8024513C 00240D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80245140 00240DA0  4E 80 00 20 */	blr

.global func_80245144
func_80245144:
/* 80245144 00240DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245148 00240DA8  7C 08 02 A6 */	mflr r0
/* 8024514C 00240DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245150 00240DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80245154 00240DB4  7C 7F 1B 78 */	mr r31, r3
lbl_80245158:
/* 80245158 00240DB8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8024515C 00240DBC  2C 00 00 00 */	cmpwi r0, 0
/* 80245160 00240DC0  41 82 00 14 */	beq lbl_80245174
/* 80245164 00240DC4  7F E3 FB 78 */	mr r3, r31
/* 80245168 00240DC8  38 80 00 01 */	li r4, 1
/* 8024516C 00240DCC  4B FF FF 05 */	bl func_80245070
/* 80245170 00240DD0  4B FF FF E8 */	b lbl_80245158
lbl_80245174:
/* 80245174 00240DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245178 00240DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024517C 00240DDC  7C 08 03 A6 */	mtlr r0
/* 80245180 00240DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80245184 00240DE4  4E 80 00 20 */	blr

.global func_80245188
func_80245188:
/* 80245188 00240DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024518C 00240DEC  7C 08 02 A6 */	mflr r0
/* 80245190 00240DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245194 00240DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80245198 00240DF8  7C 9F 23 78 */	mr r31, r4
/* 8024519C 00240DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 802451A0 00240E00  7C 7E 1B 78 */	mr r30, r3
/* 802451A4 00240E04  48 02 95 B9 */	bl OSDisableInterrupts
/* 802451A8 00240E08  80 9E 00 00 */	lwz r4, 0(r30)
/* 802451AC 00240E0C  2C 04 00 00 */	cmpwi r4, 0
/* 802451B0 00240E10  41 82 00 38 */	beq lbl_802451E8
/* 802451B4 00240E14  80 BF 00 04 */	lwz r5, 4(r31)
/* 802451B8 00240E18  2C 05 00 00 */	cmpwi r5, 0
/* 802451BC 00240E1C  41 82 00 24 */	beq lbl_802451E0
/* 802451C0 00240E20  48 00 00 08 */	b lbl_802451C8
lbl_802451C4:
/* 802451C4 00240E24  7C 05 03 78 */	mr r5, r0
lbl_802451C8:
/* 802451C8 00240E28  80 05 00 04 */	lwz r0, 4(r5)
/* 802451CC 00240E2C  2C 00 00 00 */	cmpwi r0, 0
/* 802451D0 00240E30  40 82 FF F4 */	bne lbl_802451C4
/* 802451D4 00240E34  90 85 00 04 */	stw r4, 4(r5)
/* 802451D8 00240E38  90 A4 00 00 */	stw r5, 0(r4)
/* 802451DC 00240E3C  48 00 00 0C */	b lbl_802451E8
lbl_802451E0:
/* 802451E0 00240E40  90 9F 00 04 */	stw r4, 4(r31)
/* 802451E4 00240E44  93 E4 00 00 */	stw r31, 0(r4)
lbl_802451E8:
/* 802451E8 00240E48  93 FE 00 00 */	stw r31, 0(r30)
/* 802451EC 00240E4C  48 02 95 99 */	bl OSRestoreInterrupts
/* 802451F0 00240E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802451F4 00240E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802451F8 00240E58  83 C1 00 08 */	lwz r30, 8(r1)
/* 802451FC 00240E5C  7C 08 03 A6 */	mtlr r0
/* 80245200 00240E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80245204 00240E64  4E 80 00 20 */	blr

.global lbl_80245208
lbl_80245208:
/* 80245208 00240E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024520C 00240E6C  7C 08 02 A6 */	mflr r0
/* 80245210 00240E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245214 00240E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80245218 00240E78  7C 9F 23 78 */	mr r31, r4
/* 8024521C 00240E7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80245220 00240E80  7C 7E 1B 78 */	mr r30, r3
/* 80245224 00240E84  48 02 95 39 */	bl OSDisableInterrupts
/* 80245228 00240E88  80 BE 00 00 */	lwz r5, 0(r30)
/* 8024522C 00240E8C  2C 05 00 00 */	cmpwi r5, 0
/* 80245230 00240E90  41 82 00 7C */	beq lbl_802452AC
/* 80245234 00240E94  48 00 00 08 */	b lbl_8024523C
lbl_80245238:
/* 80245238 00240E98  7C 05 03 78 */	mr r5, r0
lbl_8024523C:
/* 8024523C 00240E9C  80 05 00 04 */	lwz r0, 4(r5)
/* 80245240 00240EA0  2C 00 00 00 */	cmpwi r0, 0
/* 80245244 00240EA4  40 82 FF F4 */	bne lbl_80245238
/* 80245248 00240EA8  80 85 00 00 */	lwz r4, 0(r5)
/* 8024524C 00240EAC  2C 04 00 00 */	cmpwi r4, 0
/* 80245250 00240EB0  41 82 00 0C */	beq lbl_8024525C
/* 80245254 00240EB4  38 00 00 00 */	li r0, 0
/* 80245258 00240EB8  90 04 00 04 */	stw r0, 4(r4)
lbl_8024525C:
/* 8024525C 00240EBC  80 1E 00 00 */	lwz r0, 0(r30)
/* 80245260 00240EC0  7C 00 28 40 */	cmplw r0, r5
/* 80245264 00240EC4  40 82 00 0C */	bne lbl_80245270
/* 80245268 00240EC8  38 00 00 00 */	li r0, 0
/* 8024526C 00240ECC  90 1E 00 00 */	stw r0, 0(r30)
lbl_80245270:
/* 80245270 00240ED0  38 00 00 00 */	li r0, 0
/* 80245274 00240ED4  90 05 00 00 */	stw r0, 0(r5)
/* 80245278 00240ED8  90 05 00 04 */	stw r0, 4(r5)
/* 8024527C 00240EDC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80245280 00240EE0  2C 04 00 00 */	cmpwi r4, 0
/* 80245284 00240EE4  41 82 00 24 */	beq lbl_802452A8
/* 80245288 00240EE8  48 00 00 08 */	b lbl_80245290
lbl_8024528C:
/* 8024528C 00240EEC  7C 04 03 78 */	mr r4, r0
lbl_80245290:
/* 80245290 00240EF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80245294 00240EF4  2C 00 00 00 */	cmpwi r0, 0
/* 80245298 00240EF8  40 82 FF F4 */	bne lbl_8024528C
/* 8024529C 00240EFC  90 A4 00 04 */	stw r5, 4(r4)
/* 802452A0 00240F00  90 85 00 00 */	stw r4, 0(r5)
/* 802452A4 00240F04  48 00 00 08 */	b lbl_802452AC
lbl_802452A8:
/* 802452A8 00240F08  90 BF 00 00 */	stw r5, 0(r31)
lbl_802452AC:
/* 802452AC 00240F0C  48 02 94 D9 */	bl OSRestoreInterrupts
/* 802452B0 00240F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802452B4 00240F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802452B8 00240F18  83 C1 00 08 */	lwz r30, 8(r1)
/* 802452BC 00240F1C  7C 08 03 A6 */	mtlr r0
/* 802452C0 00240F20  38 21 00 10 */	addi r1, r1, 0x10
/* 802452C4 00240F24  4E 80 00 20 */	blr

.global func_802452C8
func_802452C8:
/* 802452C8 00240F28  38 A0 00 01 */	li r5, 1
/* 802452CC 00240F2C  38 6D A5 10 */	addi r3, r13, lbl_8063F7D0-_SDA_BASE_
/* 802452D0 00240F30  38 80 00 04 */	li r4, 4
/* 802452D4 00240F34  38 00 00 00 */	li r0, 0
/* 802452D8 00240F38  98 AD A5 10 */	stb r5, lbl_8063F7D0-_SDA_BASE_(r13)
/* 802452DC 00240F3C  B0 83 00 02 */	sth r4, 2(r3)
/* 802452E0 00240F40  98 03 00 04 */	stb r0, 4(r3)
/* 802452E4 00240F44  4E 80 00 20 */	blr
