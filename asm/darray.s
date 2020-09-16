.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global ArrayNew
ArrayNew:
/* 80335DB8 00331A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80335DBC 00331A1C  7C 08 02 A6 */	mflr r0
/* 80335DC0 00331A20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80335DC4 00331A24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80335DC8 00331A28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80335DCC 00331A2C  7C BE 2B 78 */	mr r30, r5
/* 80335DD0 00331A30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80335DD4 00331A34  7C 9D 23 78 */	mr r29, r4
/* 80335DD8 00331A38  93 81 00 10 */	stw r28, 0x10(r1)
/* 80335DDC 00331A3C  7C 7C 1B 78 */	mr r28, r3
/* 80335DE0 00331A40  38 60 00 18 */	li r3, 0x18
/* 80335DE4 00331A44  48 00 35 31 */	bl gsimalloc
/* 80335DE8 00331A48  2C 1D 00 00 */	cmpwi r29, 0
/* 80335DEC 00331A4C  7C 7F 1B 78 */	mr r31, r3
/* 80335DF0 00331A50  40 82 00 08 */	bne lbl_80335DF8
/* 80335DF4 00331A54  3B A0 00 08 */	li r29, 8
lbl_80335DF8:
/* 80335DF8 00331A58  38 00 00 00 */	li r0, 0
/* 80335DFC 00331A5C  2C 1D 00 00 */	cmpwi r29, 0
/* 80335E00 00331A60  90 03 00 00 */	stw r0, 0(r3)
/* 80335E04 00331A64  93 A3 00 04 */	stw r29, 4(r3)
/* 80335E08 00331A68  93 83 00 08 */	stw r28, 8(r3)
/* 80335E0C 00331A6C  93 A3 00 0C */	stw r29, 0xc(r3)
/* 80335E10 00331A70  93 C3 00 10 */	stw r30, 0x10(r3)
/* 80335E14 00331A74  41 82 00 18 */	beq lbl_80335E2C
/* 80335E18 00331A78  80 03 00 08 */	lwz r0, 8(r3)
/* 80335E1C 00331A7C  7C 7D 01 D6 */	mullw r3, r29, r0
/* 80335E20 00331A80  48 00 34 F5 */	bl gsimalloc
/* 80335E24 00331A84  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80335E28 00331A88  48 00 00 08 */	b lbl_80335E30
lbl_80335E2C:
/* 80335E2C 00331A8C  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80335E30:
/* 80335E30 00331A90  7F E3 FB 78 */	mr r3, r31
/* 80335E34 00331A94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80335E38 00331A98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80335E3C 00331A9C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80335E40 00331AA0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80335E44 00331AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80335E48 00331AA8  7C 08 03 A6 */	mtlr r0
/* 80335E4C 00331AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80335E50 00331AB0  4E 80 00 20 */	blr

.global ArrayFree
ArrayFree:
/* 80335E54 00331AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80335E58 00331AB8  7C 08 02 A6 */	mflr r0
/* 80335E5C 00331ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80335E60 00331AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80335E64 00331AC4  3B E0 00 00 */	li r31, 0
/* 80335E68 00331AC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80335E6C 00331ACC  7C 7E 1B 78 */	mr r30, r3
/* 80335E70 00331AD0  48 00 00 44 */	b lbl_80335EB4
lbl_80335E74:
/* 80335E74 00331AD4  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 80335E78 00331AD8  2C 0C 00 00 */	cmpwi r12, 0
/* 80335E7C 00331ADC  41 82 00 34 */	beq lbl_80335EB0
/* 80335E80 00331AE0  2C 1F 00 00 */	cmpwi r31, 0
/* 80335E84 00331AE4  41 80 00 0C */	blt lbl_80335E90
/* 80335E88 00331AE8  7C 1F 00 00 */	cmpw r31, r0
/* 80335E8C 00331AEC  41 80 00 0C */	blt lbl_80335E98
lbl_80335E90:
/* 80335E90 00331AF0  38 60 00 00 */	li r3, 0
/* 80335E94 00331AF4  48 00 00 14 */	b lbl_80335EA8
lbl_80335E98:
/* 80335E98 00331AF8  80 1E 00 08 */	lwz r0, 8(r30)
/* 80335E9C 00331AFC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80335EA0 00331B00  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80335EA4 00331B04  7C 63 02 14 */	add r3, r3, r0
lbl_80335EA8:
/* 80335EA8 00331B08  7D 89 03 A6 */	mtctr r12
/* 80335EAC 00331B0C  4E 80 04 21 */	bctrl
lbl_80335EB0:
/* 80335EB0 00331B10  3B FF 00 01 */	addi r31, r31, 1
lbl_80335EB4:
/* 80335EB4 00331B14  80 1E 00 00 */	lwz r0, 0(r30)
/* 80335EB8 00331B18  7C 1F 00 00 */	cmpw r31, r0
/* 80335EBC 00331B1C  41 80 FF B8 */	blt lbl_80335E74
/* 80335EC0 00331B20  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80335EC4 00331B24  48 00 34 75 */	bl gsifree
/* 80335EC8 00331B28  7F C3 F3 78 */	mr r3, r30
/* 80335ECC 00331B2C  48 00 34 6D */	bl gsifree
/* 80335ED0 00331B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80335ED4 00331B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80335ED8 00331B38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80335EDC 00331B3C  7C 08 03 A6 */	mtlr r0
/* 80335EE0 00331B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80335EE4 00331B44  4E 80 00 20 */	blr

.global ArrayLength
ArrayLength:
/* 80335EE8 00331B48  80 63 00 00 */	lwz r3, 0(r3)
/* 80335EEC 00331B4C  4E 80 00 20 */	blr

.global ArrayNth
ArrayNth:
/* 80335EF0 00331B50  2C 04 00 00 */	cmpwi r4, 0
/* 80335EF4 00331B54  41 80 00 10 */	blt lbl_80335F04
/* 80335EF8 00331B58  80 03 00 00 */	lwz r0, 0(r3)
/* 80335EFC 00331B5C  7C 04 00 00 */	cmpw r4, r0
/* 80335F00 00331B60  41 80 00 0C */	blt lbl_80335F0C
lbl_80335F04:
/* 80335F04 00331B64  38 60 00 00 */	li r3, 0
/* 80335F08 00331B68  4E 80 00 20 */	blr
lbl_80335F0C:
/* 80335F0C 00331B6C  80 03 00 08 */	lwz r0, 8(r3)
/* 80335F10 00331B70  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80335F14 00331B74  7C 00 21 D6 */	mullw r0, r0, r4
/* 80335F18 00331B78  7C 63 02 14 */	add r3, r3, r0
/* 80335F1C 00331B7C  4E 80 00 20 */	blr

.global ArrayAppend
ArrayAppend:
/* 80335F20 00331B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80335F24 00331B84  7C 08 02 A6 */	mflr r0
/* 80335F28 00331B88  2C 03 00 00 */	cmpwi r3, 0
/* 80335F2C 00331B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80335F30 00331B90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80335F34 00331B94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80335F38 00331B98  7C 9E 23 78 */	mr r30, r4
/* 80335F3C 00331B9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80335F40 00331BA0  7C 7D 1B 78 */	mr r29, r3
/* 80335F44 00331BA4  41 82 00 E4 */	beq lbl_80336028
/* 80335F48 00331BA8  83 E3 00 00 */	lwz r31, 0(r3)
/* 80335F4C 00331BAC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80335F50 00331BB0  7C 1F 28 00 */	cmpw r31, r5
/* 80335F54 00331BB4  40 82 00 24 */	bne lbl_80335F78
/* 80335F58 00331BB8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80335F5C 00331BBC  80 1D 00 08 */	lwz r0, 8(r29)
/* 80335F60 00331BC0  7C A5 22 14 */	add r5, r5, r4
/* 80335F64 00331BC4  7C 85 01 D6 */	mullw r4, r5, r0
/* 80335F68 00331BC8  90 A3 00 04 */	stw r5, 4(r3)
/* 80335F6C 00331BCC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80335F70 00331BD0  48 00 33 B5 */	bl gsirealloc
/* 80335F74 00331BD4  90 7D 00 14 */	stw r3, 0x14(r29)
lbl_80335F78:
/* 80335F78 00331BD8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80335F7C 00331BDC  38 A3 00 01 */	addi r5, r3, 1
/* 80335F80 00331BE0  38 C5 FF FF */	addi r6, r5, -1
/* 80335F84 00331BE4  90 BD 00 00 */	stw r5, 0(r29)
/* 80335F88 00331BE8  7C 1F 30 00 */	cmpw r31, r6
/* 80335F8C 00331BEC  40 80 00 64 */	bge lbl_80335FF0
/* 80335F90 00331BF0  34 9F 00 01 */	addic. r4, r31, 1
/* 80335F94 00331BF4  41 80 00 0C */	blt lbl_80335FA0
/* 80335F98 00331BF8  7C 04 28 00 */	cmpw r4, r5
/* 80335F9C 00331BFC  41 80 00 0C */	blt lbl_80335FA8
lbl_80335FA0:
/* 80335FA0 00331C00  38 60 00 00 */	li r3, 0
/* 80335FA4 00331C04  48 00 00 14 */	b lbl_80335FB8
lbl_80335FA8:
/* 80335FA8 00331C08  80 1D 00 08 */	lwz r0, 8(r29)
/* 80335FAC 00331C0C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80335FB0 00331C10  7C 00 21 D6 */	mullw r0, r0, r4
/* 80335FB4 00331C14  7C 63 02 14 */	add r3, r3, r0
lbl_80335FB8:
/* 80335FB8 00331C18  2C 1F 00 00 */	cmpwi r31, 0
/* 80335FBC 00331C1C  41 80 00 0C */	blt lbl_80335FC8
/* 80335FC0 00331C20  7C 1F 28 00 */	cmpw r31, r5
/* 80335FC4 00331C24  41 80 00 0C */	blt lbl_80335FD0
lbl_80335FC8:
/* 80335FC8 00331C28  38 80 00 00 */	li r4, 0
/* 80335FCC 00331C2C  48 00 00 14 */	b lbl_80335FE0
lbl_80335FD0:
/* 80335FD0 00331C30  80 1D 00 08 */	lwz r0, 8(r29)
/* 80335FD4 00331C34  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 80335FD8 00331C38  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80335FDC 00331C3C  7C 84 02 14 */	add r4, r4, r0
lbl_80335FE0:
/* 80335FE0 00331C40  80 BD 00 08 */	lwz r5, 8(r29)
/* 80335FE4 00331C44  7C 1F 30 50 */	subf r0, r31, r6
/* 80335FE8 00331C48  7C A5 01 D6 */	mullw r5, r5, r0
/* 80335FEC 00331C4C  4B E9 42 89 */	bl memmove
lbl_80335FF0:
/* 80335FF0 00331C50  2C 1F 00 00 */	cmpwi r31, 0
/* 80335FF4 00331C54  41 80 00 10 */	blt lbl_80336004
/* 80335FF8 00331C58  80 1D 00 00 */	lwz r0, 0(r29)
/* 80335FFC 00331C5C  7C 1F 00 00 */	cmpw r31, r0
/* 80336000 00331C60  41 80 00 0C */	blt lbl_8033600C
lbl_80336004:
/* 80336004 00331C64  38 60 00 00 */	li r3, 0
/* 80336008 00331C68  48 00 00 14 */	b lbl_8033601C
lbl_8033600C:
/* 8033600C 00331C6C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80336010 00331C70  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80336014 00331C74  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80336018 00331C78  7C 63 02 14 */	add r3, r3, r0
lbl_8033601C:
/* 8033601C 00331C7C  80 BD 00 08 */	lwz r5, 8(r29)
/* 80336020 00331C80  7F C4 F3 78 */	mr r4, r30
/* 80336024 00331C84  4B CC DF DD */	bl memcpy
lbl_80336028:
/* 80336028 00331C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033602C 00331C8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80336030 00331C90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80336034 00331C94  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80336038 00331C98  7C 08 03 A6 */	mtlr r0
/* 8033603C 00331C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80336040 00331CA0  4E 80 00 20 */	blr

.global ArrayInsertSorted
ArrayInsertSorted:
/* 80336044 00331CA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80336048 00331CA8  7C 08 02 A6 */	mflr r0
/* 8033604C 00331CAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80336050 00331CB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80336054 00331CB4  4B E9 10 C9 */	bl _savegpr_24
/* 80336058 00331CB8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8033605C 00331CBC  7C 7D 1B 78 */	mr r29, r3
/* 80336060 00331CC0  83 83 00 08 */	lwz r28, 8(r3)
/* 80336064 00331CC4  7C 9E 23 78 */	mr r30, r4
/* 80336068 00331CC8  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 8033606C 00331CCC  7C B8 2B 78 */	mr r24, r5
/* 80336070 00331CD0  3B 46 FF FF */	addi r26, r6, -1
/* 80336074 00331CD4  3B 20 00 00 */	li r25, 0
/* 80336078 00331CD8  48 00 00 3C */	b lbl_803360B4
lbl_8033607C:
/* 8033607C 00331CDC  7C 19 D2 14 */	add r0, r25, r26
/* 80336080 00331CE0  7F 0C C3 78 */	mr r12, r24
/* 80336084 00331CE4  7C 1B 0E 70 */	srawi r27, r0, 1
/* 80336088 00331CE8  7F C4 F3 78 */	mr r4, r30
/* 8033608C 00331CEC  7C 1B E1 D6 */	mullw r0, r27, r28
/* 80336090 00331CF0  7C 7F 02 14 */	add r3, r31, r0
/* 80336094 00331CF4  7D 89 03 A6 */	mtctr r12
/* 80336098 00331CF8  4E 80 04 21 */	bctrl
/* 8033609C 00331CFC  2C 03 00 00 */	cmpwi r3, 0
/* 803360A0 00331D00  40 80 00 08 */	bge lbl_803360A8
/* 803360A4 00331D04  3B 3B 00 01 */	addi r25, r27, 1
lbl_803360A8:
/* 803360A8 00331D08  2C 03 00 00 */	cmpwi r3, 0
/* 803360AC 00331D0C  41 80 00 08 */	blt lbl_803360B4
/* 803360B0 00331D10  3B 5B FF FF */	addi r26, r27, -1
lbl_803360B4:
/* 803360B4 00331D14  7C 19 D0 00 */	cmpw r25, r26
/* 803360B8 00331D18  40 81 FF C4 */	ble lbl_8033607C
/* 803360BC 00331D1C  7C D9 E1 D6 */	mullw r6, r25, r28
/* 803360C0 00331D20  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803360C4 00331D24  80 BD 00 08 */	lwz r5, 8(r29)
/* 803360C8 00331D28  80 1D 00 00 */	lwz r0, 0(r29)
/* 803360CC 00331D2C  80 9D 00 04 */	lwz r4, 4(r29)
/* 803360D0 00331D30  7C DF 32 14 */	add r6, r31, r6
/* 803360D4 00331D34  7C C3 30 50 */	subf r6, r3, r6
/* 803360D8 00331D38  7C 00 20 00 */	cmpw r0, r4
/* 803360DC 00331D3C  7F E6 2B D6 */	divw r31, r6, r5
/* 803360E0 00331D40  40 82 00 1C */	bne lbl_803360FC
/* 803360E4 00331D44  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803360E8 00331D48  7C 04 02 14 */	add r0, r4, r0
/* 803360EC 00331D4C  7C 80 29 D6 */	mullw r4, r0, r5
/* 803360F0 00331D50  90 1D 00 04 */	stw r0, 4(r29)
/* 803360F4 00331D54  48 00 32 31 */	bl gsirealloc
/* 803360F8 00331D58  90 7D 00 14 */	stw r3, 0x14(r29)
lbl_803360FC:
/* 803360FC 00331D5C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80336100 00331D60  38 A3 00 01 */	addi r5, r3, 1
/* 80336104 00331D64  38 C5 FF FF */	addi r6, r5, -1
/* 80336108 00331D68  90 BD 00 00 */	stw r5, 0(r29)
/* 8033610C 00331D6C  7C 1F 30 00 */	cmpw r31, r6
/* 80336110 00331D70  40 80 00 64 */	bge lbl_80336174
/* 80336114 00331D74  34 9F 00 01 */	addic. r4, r31, 1
/* 80336118 00331D78  41 80 00 0C */	blt lbl_80336124
/* 8033611C 00331D7C  7C 04 28 00 */	cmpw r4, r5
/* 80336120 00331D80  41 80 00 0C */	blt lbl_8033612C
lbl_80336124:
/* 80336124 00331D84  38 60 00 00 */	li r3, 0
/* 80336128 00331D88  48 00 00 14 */	b lbl_8033613C
lbl_8033612C:
/* 8033612C 00331D8C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80336130 00331D90  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80336134 00331D94  7C 00 21 D6 */	mullw r0, r0, r4
/* 80336138 00331D98  7C 63 02 14 */	add r3, r3, r0
lbl_8033613C:
/* 8033613C 00331D9C  2C 1F 00 00 */	cmpwi r31, 0
/* 80336140 00331DA0  41 80 00 0C */	blt lbl_8033614C
/* 80336144 00331DA4  7C 1F 28 00 */	cmpw r31, r5
/* 80336148 00331DA8  41 80 00 0C */	blt lbl_80336154
lbl_8033614C:
/* 8033614C 00331DAC  38 80 00 00 */	li r4, 0
/* 80336150 00331DB0  48 00 00 14 */	b lbl_80336164
lbl_80336154:
/* 80336154 00331DB4  80 1D 00 08 */	lwz r0, 8(r29)
/* 80336158 00331DB8  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8033615C 00331DBC  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80336160 00331DC0  7C 84 02 14 */	add r4, r4, r0
lbl_80336164:
/* 80336164 00331DC4  80 BD 00 08 */	lwz r5, 8(r29)
/* 80336168 00331DC8  7C 1F 30 50 */	subf r0, r31, r6
/* 8033616C 00331DCC  7C A5 01 D6 */	mullw r5, r5, r0
/* 80336170 00331DD0  4B E9 41 05 */	bl memmove
lbl_80336174:
/* 80336174 00331DD4  2C 1F 00 00 */	cmpwi r31, 0
/* 80336178 00331DD8  41 80 00 10 */	blt lbl_80336188
/* 8033617C 00331DDC  80 1D 00 00 */	lwz r0, 0(r29)
/* 80336180 00331DE0  7C 1F 00 00 */	cmpw r31, r0
/* 80336184 00331DE4  41 80 00 0C */	blt lbl_80336190
lbl_80336188:
/* 80336188 00331DE8  38 60 00 00 */	li r3, 0
/* 8033618C 00331DEC  48 00 00 14 */	b lbl_803361A0
lbl_80336190:
/* 80336190 00331DF0  80 1D 00 08 */	lwz r0, 8(r29)
/* 80336194 00331DF4  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80336198 00331DF8  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8033619C 00331DFC  7C 63 02 14 */	add r3, r3, r0
lbl_803361A0:
/* 803361A0 00331E00  80 BD 00 08 */	lwz r5, 8(r29)
/* 803361A4 00331E04  7F C4 F3 78 */	mr r4, r30
/* 803361A8 00331E08  4B CC DE 59 */	bl memcpy
/* 803361AC 00331E0C  39 61 00 30 */	addi r11, r1, 0x30
/* 803361B0 00331E10  4B E9 0F B9 */	bl _restgpr_24
/* 803361B4 00331E14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803361B8 00331E18  7C 08 03 A6 */	mtlr r0
/* 803361BC 00331E1C  38 21 00 30 */	addi r1, r1, 0x30
/* 803361C0 00331E20  4E 80 00 20 */	blr

.global ArrayRemoveAt
ArrayRemoveAt:
/* 803361C4 00331E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803361C8 00331E28  7C 08 02 A6 */	mflr r0
/* 803361CC 00331E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803361D0 00331E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803361D4 00331E34  7C 7F 1B 78 */	mr r31, r3
/* 803361D8 00331E38  80 E3 00 00 */	lwz r7, 0(r3)
/* 803361DC 00331E3C  39 07 FF FF */	addi r8, r7, -1
/* 803361E0 00331E40  7C 04 40 00 */	cmpw r4, r8
/* 803361E4 00331E44  40 80 00 6C */	bge lbl_80336250
/* 803361E8 00331E48  2C 04 00 00 */	cmpwi r4, 0
/* 803361EC 00331E4C  41 80 00 0C */	blt lbl_803361F8
/* 803361F0 00331E50  7C 04 38 00 */	cmpw r4, r7
/* 803361F4 00331E54  41 80 00 0C */	blt lbl_80336200
lbl_803361F8:
/* 803361F8 00331E58  38 C0 00 00 */	li r6, 0
/* 803361FC 00331E5C  48 00 00 14 */	b lbl_80336210
lbl_80336200:
/* 80336200 00331E60  80 03 00 08 */	lwz r0, 8(r3)
/* 80336204 00331E64  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80336208 00331E68  7C 00 21 D6 */	mullw r0, r0, r4
/* 8033620C 00331E6C  7C C5 02 14 */	add r6, r5, r0
lbl_80336210:
/* 80336210 00331E70  34 A4 00 01 */	addic. r5, r4, 1
/* 80336214 00331E74  41 80 00 0C */	blt lbl_80336220
/* 80336218 00331E78  7C 05 38 00 */	cmpw r5, r7
/* 8033621C 00331E7C  41 80 00 0C */	blt lbl_80336228
lbl_80336220:
/* 80336220 00331E80  38 E0 00 00 */	li r7, 0
/* 80336224 00331E84  48 00 00 14 */	b lbl_80336238
lbl_80336228:
/* 80336228 00331E88  80 03 00 08 */	lwz r0, 8(r3)
/* 8033622C 00331E8C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80336230 00331E90  7C 00 29 D6 */	mullw r0, r0, r5
/* 80336234 00331E94  7C E3 02 14 */	add r7, r3, r0
lbl_80336238:
/* 80336238 00331E98  80 BF 00 08 */	lwz r5, 8(r31)
/* 8033623C 00331E9C  7C 04 40 50 */	subf r0, r4, r8
/* 80336240 00331EA0  7C C3 33 78 */	mr r3, r6
/* 80336244 00331EA4  7C E4 3B 78 */	mr r4, r7
/* 80336248 00331EA8  7C A5 01 D6 */	mullw r5, r5, r0
/* 8033624C 00331EAC  4B E9 40 29 */	bl memmove
lbl_80336250:
/* 80336250 00331EB0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80336254 00331EB4  38 03 FF FF */	addi r0, r3, -1
/* 80336258 00331EB8  90 1F 00 00 */	stw r0, 0(r31)
/* 8033625C 00331EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80336260 00331EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336264 00331EC4  7C 08 03 A6 */	mtlr r0
/* 80336268 00331EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033626C 00331ECC  4E 80 00 20 */	blr

.global ArrayDeleteAt
ArrayDeleteAt:
/* 80336270 00331ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336274 00331ED4  7C 08 02 A6 */	mflr r0
/* 80336278 00331ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033627C 00331EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80336280 00331EE0  7C 7F 1B 78 */	mr r31, r3
/* 80336284 00331EE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80336288 00331EE8  7C 9E 23 78 */	mr r30, r4
/* 8033628C 00331EEC  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80336290 00331EF0  2C 0C 00 00 */	cmpwi r12, 0
/* 80336294 00331EF4  41 82 00 38 */	beq lbl_803362CC
/* 80336298 00331EF8  2C 04 00 00 */	cmpwi r4, 0
/* 8033629C 00331EFC  41 80 00 10 */	blt lbl_803362AC
/* 803362A0 00331F00  80 03 00 00 */	lwz r0, 0(r3)
/* 803362A4 00331F04  7C 04 00 00 */	cmpw r4, r0
/* 803362A8 00331F08  41 80 00 0C */	blt lbl_803362B4
lbl_803362AC:
/* 803362AC 00331F0C  38 60 00 00 */	li r3, 0
/* 803362B0 00331F10  48 00 00 14 */	b lbl_803362C4
lbl_803362B4:
/* 803362B4 00331F14  80 03 00 08 */	lwz r0, 8(r3)
/* 803362B8 00331F18  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803362BC 00331F1C  7C 00 21 D6 */	mullw r0, r0, r4
/* 803362C0 00331F20  7C 63 02 14 */	add r3, r3, r0
lbl_803362C4:
/* 803362C4 00331F24  7D 89 03 A6 */	mtctr r12
/* 803362C8 00331F28  4E 80 04 21 */	bctrl
lbl_803362CC:
/* 803362CC 00331F2C  80 9F 00 00 */	lwz r4, 0(r31)
/* 803362D0 00331F30  38 C4 FF FF */	addi r6, r4, -1
/* 803362D4 00331F34  7C 1E 30 00 */	cmpw r30, r6
/* 803362D8 00331F38  40 80 00 64 */	bge lbl_8033633C
/* 803362DC 00331F3C  2C 1E 00 00 */	cmpwi r30, 0
/* 803362E0 00331F40  41 80 00 0C */	blt lbl_803362EC
/* 803362E4 00331F44  7C 1E 20 00 */	cmpw r30, r4
/* 803362E8 00331F48  41 80 00 0C */	blt lbl_803362F4
lbl_803362EC:
/* 803362EC 00331F4C  38 60 00 00 */	li r3, 0
/* 803362F0 00331F50  48 00 00 14 */	b lbl_80336304
lbl_803362F4:
/* 803362F4 00331F54  80 1F 00 08 */	lwz r0, 8(r31)
/* 803362F8 00331F58  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803362FC 00331F5C  7C 00 F1 D6 */	mullw r0, r0, r30
/* 80336300 00331F60  7C 63 02 14 */	add r3, r3, r0
lbl_80336304:
/* 80336304 00331F64  34 BE 00 01 */	addic. r5, r30, 1
/* 80336308 00331F68  41 80 00 0C */	blt lbl_80336314
/* 8033630C 00331F6C  7C 05 20 00 */	cmpw r5, r4
/* 80336310 00331F70  41 80 00 0C */	blt lbl_8033631C
lbl_80336314:
/* 80336314 00331F74  38 80 00 00 */	li r4, 0
/* 80336318 00331F78  48 00 00 14 */	b lbl_8033632C
lbl_8033631C:
/* 8033631C 00331F7C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80336320 00331F80  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80336324 00331F84  7C 00 29 D6 */	mullw r0, r0, r5
/* 80336328 00331F88  7C 84 02 14 */	add r4, r4, r0
lbl_8033632C:
/* 8033632C 00331F8C  80 BF 00 08 */	lwz r5, 8(r31)
/* 80336330 00331F90  7C 1E 30 50 */	subf r0, r30, r6
/* 80336334 00331F94  7C A5 01 D6 */	mullw r5, r5, r0
/* 80336338 00331F98  4B E9 3F 3D */	bl memmove
lbl_8033633C:
/* 8033633C 00331F9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80336340 00331FA0  38 03 FF FF */	addi r0, r3, -1
/* 80336344 00331FA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80336348 00331FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033634C 00331FAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80336350 00331FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336354 00331FB4  7C 08 03 A6 */	mtlr r0
/* 80336358 00331FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033635C 00331FBC  4E 80 00 20 */	blr

.global ArrayReplaceAt
ArrayReplaceAt:
/* 80336360 00331FC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80336364 00331FC4  7C 08 02 A6 */	mflr r0
/* 80336368 00331FC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033636C 00331FCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80336370 00331FD0  7C BF 2B 78 */	mr r31, r5
/* 80336374 00331FD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80336378 00331FD8  7C 9E 23 78 */	mr r30, r4
/* 8033637C 00331FDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80336380 00331FE0  7C 7D 1B 78 */	mr r29, r3
/* 80336384 00331FE4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80336388 00331FE8  2C 0C 00 00 */	cmpwi r12, 0
/* 8033638C 00331FEC  41 82 00 38 */	beq lbl_803363C4
/* 80336390 00331FF0  2C 05 00 00 */	cmpwi r5, 0
/* 80336394 00331FF4  41 80 00 10 */	blt lbl_803363A4
/* 80336398 00331FF8  80 03 00 00 */	lwz r0, 0(r3)
/* 8033639C 00331FFC  7C 05 00 00 */	cmpw r5, r0
/* 803363A0 00332000  41 80 00 0C */	blt lbl_803363AC
lbl_803363A4:
/* 803363A4 00332004  38 60 00 00 */	li r3, 0
/* 803363A8 00332008  48 00 00 14 */	b lbl_803363BC
lbl_803363AC:
/* 803363AC 0033200C  80 03 00 08 */	lwz r0, 8(r3)
/* 803363B0 00332010  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803363B4 00332014  7C 00 29 D6 */	mullw r0, r0, r5
/* 803363B8 00332018  7C 63 02 14 */	add r3, r3, r0
lbl_803363BC:
/* 803363BC 0033201C  7D 89 03 A6 */	mtctr r12
/* 803363C0 00332020  4E 80 04 21 */	bctrl
lbl_803363C4:
/* 803363C4 00332024  2C 1F 00 00 */	cmpwi r31, 0
/* 803363C8 00332028  41 80 00 10 */	blt lbl_803363D8
/* 803363CC 0033202C  80 1D 00 00 */	lwz r0, 0(r29)
/* 803363D0 00332030  7C 1F 00 00 */	cmpw r31, r0
/* 803363D4 00332034  41 80 00 0C */	blt lbl_803363E0
lbl_803363D8:
/* 803363D8 00332038  38 60 00 00 */	li r3, 0
/* 803363DC 0033203C  48 00 00 14 */	b lbl_803363F0
lbl_803363E0:
/* 803363E0 00332040  80 1D 00 08 */	lwz r0, 8(r29)
/* 803363E4 00332044  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803363E8 00332048  7C 00 F9 D6 */	mullw r0, r0, r31
/* 803363EC 0033204C  7C 63 02 14 */	add r3, r3, r0
lbl_803363F0:
/* 803363F0 00332050  80 BD 00 08 */	lwz r5, 8(r29)
/* 803363F4 00332054  7F C4 F3 78 */	mr r4, r30
/* 803363F8 00332058  4B CC DC 09 */	bl memcpy
/* 803363FC 0033205C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80336400 00332060  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80336404 00332064  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80336408 00332068  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033640C 0033206C  7C 08 03 A6 */	mtlr r0
/* 80336410 00332070  38 21 00 20 */	addi r1, r1, 0x20
/* 80336414 00332074  4E 80 00 20 */	blr

.global ArraySort
ArraySort:
/* 80336418 00332078  7C 65 1B 78 */	mr r5, r3
/* 8033641C 0033207C  7C 86 23 78 */	mr r6, r4
/* 80336420 00332080  80 85 00 00 */	lwz r4, 0(r5)
/* 80336424 00332084  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80336428 00332088  80 A5 00 08 */	lwz r5, 8(r5)
/* 8033642C 0033208C  4B E9 67 A0 */	b qsort

.global ArraySearch
ArraySearch:
/* 80336430 00332090  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80336434 00332094  7C 08 02 A6 */	mflr r0
/* 80336438 00332098  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033643C 0033209C  39 61 00 30 */	addi r11, r1, 0x30
/* 80336440 003320A0  4B E9 0C D9 */	bl _savegpr_23
/* 80336444 003320A4  2C 03 00 00 */	cmpwi r3, 0
/* 80336448 003320A8  7C 7C 1B 78 */	mr r28, r3
/* 8033644C 003320AC  7C 9D 23 78 */	mr r29, r4
/* 80336450 003320B0  7C BE 2B 78 */	mr r30, r5
/* 80336454 003320B4  3B E0 00 01 */	li r31, 1
/* 80336458 003320B8  41 82 00 10 */	beq lbl_80336468
/* 8033645C 003320BC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80336460 003320C0  2C 05 00 00 */	cmpwi r5, 0
/* 80336464 003320C4  40 82 00 0C */	bne lbl_80336470
lbl_80336468:
/* 80336468 003320C8  38 60 FF FF */	li r3, -1
/* 8033646C 003320CC  48 00 01 44 */	b lbl_803365B0
lbl_80336470:
/* 80336470 003320D0  2C 07 00 00 */	cmpwi r7, 0
/* 80336474 003320D4  41 82 00 9C */	beq lbl_80336510
/* 80336478 003320D8  2C 06 00 00 */	cmpwi r6, 0
/* 8033647C 003320DC  41 80 00 0C */	blt lbl_80336488
/* 80336480 003320E0  7C 06 28 00 */	cmpw r6, r5
/* 80336484 003320E4  41 80 00 0C */	blt lbl_80336490
lbl_80336488:
/* 80336488 003320E8  3B 60 00 00 */	li r27, 0
/* 8033648C 003320EC  48 00 00 14 */	b lbl_803364A0
lbl_80336490:
/* 80336490 003320F0  80 03 00 08 */	lwz r0, 8(r3)
/* 80336494 003320F4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80336498 003320F8  7C 00 31 D6 */	mullw r0, r0, r6
/* 8033649C 003320FC  7F 64 02 14 */	add r27, r4, r0
lbl_803364A0:
/* 803364A0 00332100  7C 86 28 50 */	subf r4, r6, r5
/* 803364A4 00332104  83 43 00 08 */	lwz r26, 8(r3)
/* 803364A8 00332108  3B 04 FF FF */	addi r24, r4, -1
/* 803364AC 0033210C  3A E0 00 00 */	li r23, 0
/* 803364B0 00332110  3B E0 00 00 */	li r31, 0
/* 803364B4 00332114  48 00 00 48 */	b lbl_803364FC
lbl_803364B8:
/* 803364B8 00332118  7C 17 C2 14 */	add r0, r23, r24
/* 803364BC 0033211C  7F CC F3 78 */	mr r12, r30
/* 803364C0 00332120  7C 19 0E 70 */	srawi r25, r0, 1
/* 803364C4 00332124  7F A4 EB 78 */	mr r4, r29
/* 803364C8 00332128  7C 19 D1 D6 */	mullw r0, r25, r26
/* 803364CC 0033212C  7C 7B 02 14 */	add r3, r27, r0
/* 803364D0 00332130  7D 89 03 A6 */	mtctr r12
/* 803364D4 00332134  4E 80 04 21 */	bctrl
/* 803364D8 00332138  2C 03 00 00 */	cmpwi r3, 0
/* 803364DC 0033213C  40 82 00 08 */	bne lbl_803364E4
/* 803364E0 00332140  3B E0 00 01 */	li r31, 1
lbl_803364E4:
/* 803364E4 00332144  2C 03 00 00 */	cmpwi r3, 0
/* 803364E8 00332148  40 80 00 08 */	bge lbl_803364F0
/* 803364EC 0033214C  3A F9 00 01 */	addi r23, r25, 1
lbl_803364F0:
/* 803364F0 00332150  2C 03 00 00 */	cmpwi r3, 0
/* 803364F4 00332154  41 80 00 08 */	blt lbl_803364FC
/* 803364F8 00332158  3B 19 FF FF */	addi r24, r25, -1
lbl_803364FC:
/* 803364FC 0033215C  7C 17 C0 00 */	cmpw r23, r24
/* 80336500 00332160  40 81 FF B8 */	ble lbl_803364B8
/* 80336504 00332164  7C 17 D1 D6 */	mullw r0, r23, r26
/* 80336508 00332168  7C 9B 02 14 */	add r4, r27, r0
/* 8033650C 0033216C  48 00 00 7C */	b lbl_80336588
lbl_80336510:
/* 80336510 00332170  2C 06 00 00 */	cmpwi r6, 0
/* 80336514 00332174  41 80 00 0C */	blt lbl_80336520
/* 80336518 00332178  7C 06 28 00 */	cmpw r6, r5
/* 8033651C 0033217C  41 80 00 0C */	blt lbl_80336528
lbl_80336520:
/* 80336520 00332180  3A E0 00 00 */	li r23, 0
/* 80336524 00332184  48 00 00 14 */	b lbl_80336538
lbl_80336528:
/* 80336528 00332188  80 03 00 08 */	lwz r0, 8(r3)
/* 8033652C 0033218C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80336530 00332190  7C 00 31 D6 */	mullw r0, r0, r6
/* 80336534 00332194  7E E4 02 14 */	add r23, r4, r0
lbl_80336538:
/* 80336538 00332198  83 23 00 08 */	lwz r25, 8(r3)
/* 8033653C 0033219C  7F 06 28 50 */	subf r24, r6, r5
/* 80336540 003321A0  3B 40 00 00 */	li r26, 0
/* 80336544 003321A4  3B 60 00 00 */	li r27, 0
/* 80336548 003321A8  48 00 00 34 */	b lbl_8033657C
lbl_8033654C:
/* 8033654C 003321AC  7F CC F3 78 */	mr r12, r30
/* 80336550 003321B0  7F A3 EB 78 */	mr r3, r29
/* 80336554 003321B4  7C 97 DA 14 */	add r4, r23, r27
/* 80336558 003321B8  7D 89 03 A6 */	mtctr r12
/* 8033655C 003321BC  4E 80 04 21 */	bctrl
/* 80336560 003321C0  2C 03 00 00 */	cmpwi r3, 0
/* 80336564 003321C4  40 82 00 10 */	bne lbl_80336574
/* 80336568 003321C8  7C 19 D1 D6 */	mullw r0, r25, r26
/* 8033656C 003321CC  7C 97 02 14 */	add r4, r23, r0
/* 80336570 003321D0  48 00 00 18 */	b lbl_80336588
lbl_80336574:
/* 80336574 003321D4  7F 7B CA 14 */	add r27, r27, r25
/* 80336578 003321D8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8033657C:
/* 8033657C 003321DC  7C 1A C0 00 */	cmpw r26, r24
/* 80336580 003321E0  41 80 FF CC */	blt lbl_8033654C
/* 80336584 003321E4  38 80 00 00 */	li r4, 0
lbl_80336588:
/* 80336588 003321E8  2C 04 00 00 */	cmpwi r4, 0
/* 8033658C 003321EC  41 82 00 20 */	beq lbl_803365AC
/* 80336590 003321F0  2C 1F 00 00 */	cmpwi r31, 0
/* 80336594 003321F4  41 82 00 18 */	beq lbl_803365AC
/* 80336598 003321F8  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8033659C 003321FC  80 1C 00 08 */	lwz r0, 8(r28)
/* 803365A0 00332200  7C 63 20 50 */	subf r3, r3, r4
/* 803365A4 00332204  7C 63 03 D6 */	divw r3, r3, r0
/* 803365A8 00332208  48 00 00 08 */	b lbl_803365B0
lbl_803365AC:
/* 803365AC 0033220C  38 60 FF FF */	li r3, -1
lbl_803365B0:
/* 803365B0 00332210  39 61 00 30 */	addi r11, r1, 0x30
/* 803365B4 00332214  4B E9 0B B1 */	bl _restgpr_23
/* 803365B8 00332218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803365BC 0033221C  7C 08 03 A6 */	mtlr r0
/* 803365C0 00332220  38 21 00 30 */	addi r1, r1, 0x30
/* 803365C4 00332224  4E 80 00 20 */	blr

.global ArrayMapBackwards
ArrayMapBackwards:
/* 803365C8 00332228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803365CC 0033222C  7C 08 02 A6 */	mflr r0
/* 803365D0 00332230  90 01 00 24 */	stw r0, 0x24(r1)
/* 803365D4 00332234  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803365D8 00332238  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803365DC 0033223C  7C BE 2B 78 */	mr r30, r5
/* 803365E0 00332240  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803365E4 00332244  7C 9D 23 78 */	mr r29, r4
/* 803365E8 00332248  93 81 00 10 */	stw r28, 0x10(r1)
/* 803365EC 0033224C  7C 7C 1B 78 */	mr r28, r3
/* 803365F0 00332250  80 C3 00 00 */	lwz r6, 0(r3)
/* 803365F4 00332254  3B E6 FF FF */	addi r31, r6, -1
/* 803365F8 00332258  48 00 00 44 */	b lbl_8033663C
lbl_803365FC:
/* 803365FC 0033225C  2C 1F 00 00 */	cmpwi r31, 0
/* 80336600 00332260  41 80 00 10 */	blt lbl_80336610
/* 80336604 00332264  80 1C 00 00 */	lwz r0, 0(r28)
/* 80336608 00332268  7C 1F 00 00 */	cmpw r31, r0
/* 8033660C 0033226C  41 80 00 0C */	blt lbl_80336618
lbl_80336610:
/* 80336610 00332270  38 60 00 00 */	li r3, 0
/* 80336614 00332274  48 00 00 14 */	b lbl_80336628
lbl_80336618:
/* 80336618 00332278  80 1C 00 08 */	lwz r0, 8(r28)
/* 8033661C 0033227C  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80336620 00332280  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80336624 00332284  7C 63 02 14 */	add r3, r3, r0
lbl_80336628:
/* 80336628 00332288  7F AC EB 78 */	mr r12, r29
/* 8033662C 0033228C  7F C4 F3 78 */	mr r4, r30
/* 80336630 00332290  7D 89 03 A6 */	mtctr r12
/* 80336634 00332294  4E 80 04 21 */	bctrl
/* 80336638 00332298  3B FF FF FF */	addi r31, r31, -1
lbl_8033663C:
/* 8033663C 0033229C  2C 1F 00 00 */	cmpwi r31, 0
/* 80336640 003322A0  40 80 FF BC */	bge lbl_803365FC
/* 80336644 003322A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80336648 003322A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033664C 003322AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80336650 003322B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80336654 003322B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80336658 003322B8  7C 08 03 A6 */	mtlr r0
/* 8033665C 003322BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80336660 003322C0  4E 80 00 20 */	blr

.global ArrayMapBackwards2
ArrayMapBackwards2:
/* 80336664 003322C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80336668 003322C8  7C 08 02 A6 */	mflr r0
/* 8033666C 003322CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80336670 003322D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80336674 003322D4  4B E9 0A B5 */	bl _savegpr_27
/* 80336678 003322D8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8033667C 003322DC  7C 7B 1B 78 */	mr r27, r3
/* 80336680 003322E0  7C 9C 23 78 */	mr r28, r4
/* 80336684 003322E4  7C BD 2B 78 */	mr r29, r5
/* 80336688 003322E8  3B C6 FF FF */	addi r30, r6, -1
/* 8033668C 003322EC  48 00 00 58 */	b lbl_803366E4
lbl_80336690:
/* 80336690 003322F0  2C 1E 00 00 */	cmpwi r30, 0
/* 80336694 003322F4  41 80 00 10 */	blt lbl_803366A4
/* 80336698 003322F8  80 1B 00 00 */	lwz r0, 0(r27)
/* 8033669C 003322FC  7C 1E 00 00 */	cmpw r30, r0
/* 803366A0 00332300  41 80 00 0C */	blt lbl_803366AC
lbl_803366A4:
/* 803366A4 00332304  3B E0 00 00 */	li r31, 0
/* 803366A8 00332308  48 00 00 14 */	b lbl_803366BC
lbl_803366AC:
/* 803366AC 0033230C  80 1B 00 08 */	lwz r0, 8(r27)
/* 803366B0 00332310  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 803366B4 00332314  7C 00 F1 D6 */	mullw r0, r0, r30
/* 803366B8 00332318  7F E3 02 14 */	add r31, r3, r0
lbl_803366BC:
/* 803366BC 0033231C  7F 8C E3 78 */	mr r12, r28
/* 803366C0 00332320  7F E3 FB 78 */	mr r3, r31
/* 803366C4 00332324  7F A4 EB 78 */	mr r4, r29
/* 803366C8 00332328  7D 89 03 A6 */	mtctr r12
/* 803366CC 0033232C  4E 80 04 21 */	bctrl
/* 803366D0 00332330  2C 03 00 00 */	cmpwi r3, 0
/* 803366D4 00332334  40 82 00 0C */	bne lbl_803366E0
/* 803366D8 00332338  7F E3 FB 78 */	mr r3, r31
/* 803366DC 0033233C  48 00 00 14 */	b lbl_803366F0
lbl_803366E0:
/* 803366E0 00332340  3B DE FF FF */	addi r30, r30, -1
lbl_803366E4:
/* 803366E4 00332344  2C 1E 00 00 */	cmpwi r30, 0
/* 803366E8 00332348  40 80 FF A8 */	bge lbl_80336690
/* 803366EC 0033234C  38 60 00 00 */	li r3, 0
lbl_803366F0:
/* 803366F0 00332350  39 61 00 20 */	addi r11, r1, 0x20
/* 803366F4 00332354  4B E9 0A 81 */	bl _restgpr_27
/* 803366F8 00332358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803366FC 0033235C  7C 08 03 A6 */	mtlr r0
/* 80336700 00332360  38 21 00 20 */	addi r1, r1, 0x20
/* 80336704 00332364  4E 80 00 20 */	blr

.global ArrayClear
ArrayClear:
/* 80336708 00332368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033670C 0033236C  7C 08 02 A6 */	mflr r0
/* 80336710 00332370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80336714 00332374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80336718 00332378  93 C1 00 08 */	stw r30, 8(r1)
/* 8033671C 0033237C  7C 7E 1B 78 */	mr r30, r3
/* 80336720 00332380  80 83 00 00 */	lwz r4, 0(r3)
/* 80336724 00332384  3B E4 FF FF */	addi r31, r4, -1
/* 80336728 00332388  48 00 00 C4 */	b lbl_803367EC
lbl_8033672C:
/* 8033672C 0033238C  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 80336730 00332390  2C 0C 00 00 */	cmpwi r12, 0
/* 80336734 00332394  41 82 00 38 */	beq lbl_8033676C
/* 80336738 00332398  2C 1F 00 00 */	cmpwi r31, 0
/* 8033673C 0033239C  41 80 00 10 */	blt lbl_8033674C
/* 80336740 003323A0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80336744 003323A4  7C 1F 00 00 */	cmpw r31, r0
/* 80336748 003323A8  41 80 00 0C */	blt lbl_80336754
lbl_8033674C:
/* 8033674C 003323AC  38 60 00 00 */	li r3, 0
/* 80336750 003323B0  48 00 00 14 */	b lbl_80336764
lbl_80336754:
/* 80336754 003323B4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80336758 003323B8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8033675C 003323BC  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80336760 003323C0  7C 63 02 14 */	add r3, r3, r0
lbl_80336764:
/* 80336764 003323C4  7D 89 03 A6 */	mtctr r12
/* 80336768 003323C8  4E 80 04 21 */	bctrl
lbl_8033676C:
/* 8033676C 003323CC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80336770 003323D0  38 C4 FF FF */	addi r6, r4, -1
/* 80336774 003323D4  7C 1F 30 00 */	cmpw r31, r6
/* 80336778 003323D8  40 80 00 64 */	bge lbl_803367DC
/* 8033677C 003323DC  2C 1F 00 00 */	cmpwi r31, 0
/* 80336780 003323E0  41 80 00 0C */	blt lbl_8033678C
/* 80336784 003323E4  7C 1F 20 00 */	cmpw r31, r4
/* 80336788 003323E8  41 80 00 0C */	blt lbl_80336794
lbl_8033678C:
/* 8033678C 003323EC  38 60 00 00 */	li r3, 0
/* 80336790 003323F0  48 00 00 14 */	b lbl_803367A4
lbl_80336794:
/* 80336794 003323F4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80336798 003323F8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8033679C 003323FC  7C 00 F9 D6 */	mullw r0, r0, r31
/* 803367A0 00332400  7C 63 02 14 */	add r3, r3, r0
lbl_803367A4:
/* 803367A4 00332404  34 BF 00 01 */	addic. r5, r31, 1
/* 803367A8 00332408  41 80 00 0C */	blt lbl_803367B4
/* 803367AC 0033240C  7C 05 20 00 */	cmpw r5, r4
/* 803367B0 00332410  41 80 00 0C */	blt lbl_803367BC
lbl_803367B4:
/* 803367B4 00332414  38 80 00 00 */	li r4, 0
/* 803367B8 00332418  48 00 00 14 */	b lbl_803367CC
lbl_803367BC:
/* 803367BC 0033241C  80 1E 00 08 */	lwz r0, 8(r30)
/* 803367C0 00332420  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 803367C4 00332424  7C 00 29 D6 */	mullw r0, r0, r5
/* 803367C8 00332428  7C 84 02 14 */	add r4, r4, r0
lbl_803367CC:
/* 803367CC 0033242C  80 BE 00 08 */	lwz r5, 8(r30)
/* 803367D0 00332430  7C 1F 30 50 */	subf r0, r31, r6
/* 803367D4 00332434  7C A5 01 D6 */	mullw r5, r5, r0
/* 803367D8 00332438  4B E9 3A 9D */	bl memmove
lbl_803367DC:
/* 803367DC 0033243C  80 7E 00 00 */	lwz r3, 0(r30)
/* 803367E0 00332440  3B FF FF FF */	addi r31, r31, -1
/* 803367E4 00332444  38 03 FF FF */	addi r0, r3, -1
/* 803367E8 00332448  90 1E 00 00 */	stw r0, 0(r30)
lbl_803367EC:
/* 803367EC 0033244C  2C 1F 00 00 */	cmpwi r31, 0
/* 803367F0 00332450  40 80 FF 3C */	bge lbl_8033672C
/* 803367F4 00332454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803367F8 00332458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803367FC 0033245C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80336800 00332460  7C 08 03 A6 */	mtlr r0
/* 80336804 00332464  38 21 00 10 */	addi r1, r1, 0x10
/* 80336808 00332468  4E 80 00 20 */	blr
