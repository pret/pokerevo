.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q34nw4r3lyt8BoundingFPCQ44nw4r3lyt3res8BoundingRCQ34nw4r3lyt11ResBlockSet
__ct__Q34nw4r3lyt8BoundingFPCQ44nw4r3lyt3res8BoundingRCQ34nw4r3lyt11ResBlockSet:
/* 8038A32C 00385F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A330 00385F90  7C 08 02 A6 */	mflr r0
/* 8038A334 00385F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A338 00385F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A33C 00385F9C  7C 7F 1B 78 */	mr r31, r3
/* 8038A340 00385FA0  4B FF AC 0D */	bl __ct__Q34nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pane
/* 8038A344 00385FA4  3C 80 80 45 */	lis r4, lbl_8044E480@ha
/* 8038A348 00385FA8  7F E3 FB 78 */	mr r3, r31
/* 8038A34C 00385FAC  38 84 E4 80 */	addi r4, r4, lbl_8044E480@l
/* 8038A350 00385FB0  90 9F 00 00 */	stw r4, 0(r31)
/* 8038A354 00385FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A358 00385FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A35C 00385FBC  7C 08 03 A6 */	mtlr r0
/* 8038A360 00385FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A364 00385FC4  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3lyt8BoundingFv
__dt__Q34nw4r3lyt8BoundingFv:
/* 8038A368 00385FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A36C 00385FCC  7C 08 02 A6 */	mflr r0
/* 8038A370 00385FD0  2C 03 00 00 */	cmpwi r3, 0
/* 8038A374 00385FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A378 00385FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A37C 00385FDC  7C 9F 23 78 */	mr r31, r4
/* 8038A380 00385FE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8038A384 00385FE4  7C 7E 1B 78 */	mr r30, r3
/* 8038A388 00385FE8  41 82 00 1C */	beq lbl_8038A3A4
/* 8038A38C 00385FEC  38 80 00 00 */	li r4, 0
/* 8038A390 00385FF0  4B FF AC F1 */	bl __dt__Q34nw4r3lyt4PaneFv
/* 8038A394 00385FF4  2C 1F 00 00 */	cmpwi r31, 0
/* 8038A398 00385FF8  40 81 00 0C */	ble lbl_8038A3A4
/* 8038A39C 00385FFC  7F C3 F3 78 */	mr r3, r30
/* 8038A3A0 00386000  4B E5 07 19 */	bl __dl__FPv
lbl_8038A3A4:
/* 8038A3A4 00386004  7F C3 F3 78 */	mr r3, r30
/* 8038A3A8 00386008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A3AC 0038600C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038A3B0 00386010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A3B4 00386014  7C 08 03 A6 */	mtlr r0
/* 8038A3B8 00386018  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A3BC 0038601C  4E 80 00 20 */	blr 

.global DrawSelf__Q34nw4r3lyt8BoundingFRCQ34nw4r3lyt8DrawInfo
DrawSelf__Q34nw4r3lyt8BoundingFRCQ34nw4r3lyt8DrawInfo:
/* 8038A3C0 00386020  4E 80 00 20 */	blr 

.global GetRuntimeTypeInfo__Q34nw4r3lyt8BoundingCFv
GetRuntimeTypeInfo__Q34nw4r3lyt8BoundingCFv:
/* 8038A3C4 00386024  38 6D B2 D0 */	addi r3, r13, lbl_80640590-_SDA_BASE_
/* 8038A3C8 00386028  4E 80 00 20 */	blr 

.global __sinit_$3lyt_bounding_cpp
__sinit_$3lyt_bounding_cpp:
/* 8038A3CC 0038602C  38 0D B2 A8 */	addi r0, r13, lbl_80640568-_SDA_BASE_
/* 8038A3D0 00386030  90 0D B2 D0 */	stw r0, lbl_80640590-_SDA_BASE_(r13)
/* 8038A3D4 00386034  4E 80 00 20 */	blr 
