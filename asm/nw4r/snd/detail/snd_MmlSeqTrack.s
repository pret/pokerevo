.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail11MmlSeqTrackFv
__ct__Q44nw4r3snd6detail11MmlSeqTrackFv:
/* 80372D5C 0036E9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372D60 0036E9C0  7C 08 02 A6 */	mflr r0
/* 80372D64 0036E9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372D68 0036E9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372D6C 0036E9CC  7C 7F 1B 78 */	mr r31, r3
/* 80372D70 0036E9D0  48 00 26 3D */	bl __ct__Q44nw4r3snd6detail8SeqTrackFv
/* 80372D74 0036E9D4  3C A0 80 45 */	lis r5, lbl_8044CCF8@ha
/* 80372D78 0036E9D8  38 80 00 01 */	li r4, 1
/* 80372D7C 0036E9DC  38 00 00 00 */	li r0, 0
/* 80372D80 0036E9E0  98 9F 00 DD */	stb r4, 0xdd(r31)
/* 80372D84 0036E9E4  38 A5 CC F8 */	addi r5, r5, lbl_8044CCF8@l
/* 80372D88 0036E9E8  7F E3 FB 78 */	mr r3, r31
/* 80372D8C 0036E9EC  90 BF 00 00 */	stw r5, 0(r31)
/* 80372D90 0036E9F0  98 1F 00 DE */	stb r0, 0xde(r31)
/* 80372D94 0036E9F4  98 9F 00 DC */	stb r4, 0xdc(r31)
/* 80372D98 0036E9F8  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 80372D9C 0036E9FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372DA0 0036EA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372DA4 0036EA04  7C 08 03 A6 */	mtlr r0
/* 80372DA8 0036EA08  38 21 00 10 */	addi r1, r1, 0x10
/* 80372DAC 0036EA0C  4E 80 00 20 */	blr

.global Parse__Q44nw4r3snd6detail11MmlSeqTrackFb
Parse__Q44nw4r3snd6detail11MmlSeqTrackFb:
/* 80372DB0 0036EA10  7C 60 1B 78 */	mr r0, r3
/* 80372DB4 0036EA14  80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 80372DB8 0036EA18  7C 85 23 78 */	mr r5, r4
/* 80372DBC 0036EA1C  7C 04 03 78 */	mr r4, r0
/* 80372DC0 0036EA20  4B FF F0 B0 */	b Parse__Q44nw4r3snd6detail9MmlParserCFPQ44nw4r3snd6detail11MmlSeqTrackb

.global __dt__Q44nw4r3snd6detail11MmlSeqTrackFv
__dt__Q44nw4r3snd6detail11MmlSeqTrackFv:
/* 80372DC4 0036EA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372DC8 0036EA28  7C 08 02 A6 */	mflr r0
/* 80372DCC 0036EA2C  2C 03 00 00 */	cmpwi r3, 0
/* 80372DD0 0036EA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372DD4 0036EA34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372DD8 0036EA38  7C 9F 23 78 */	mr r31, r4
/* 80372DDC 0036EA3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80372DE0 0036EA40  7C 7E 1B 78 */	mr r30, r3
/* 80372DE4 0036EA44  41 82 00 1C */	beq lbl_80372E00
/* 80372DE8 0036EA48  38 80 00 00 */	li r4, 0
/* 80372DEC 0036EA4C  48 00 26 29 */	bl __dt__Q44nw4r3snd6detail8SeqTrackFv
/* 80372DF0 0036EA50  2C 1F 00 00 */	cmpwi r31, 0
/* 80372DF4 0036EA54  40 81 00 0C */	ble lbl_80372E00
/* 80372DF8 0036EA58  7F C3 F3 78 */	mr r3, r30
/* 80372DFC 0036EA5C  4B E6 7C BD */	bl __dl__FPv
lbl_80372E00:
/* 80372E00 0036EA60  7F C3 F3 78 */	mr r3, r30
/* 80372E04 0036EA64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372E08 0036EA68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80372E0C 0036EA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372E10 0036EA70  7C 08 03 A6 */	mtlr r0
/* 80372E14 0036EA74  38 21 00 10 */	addi r1, r1, 0x10
/* 80372E18 0036EA78  4E 80 00 20 */	blr
