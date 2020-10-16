.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer
AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer:
/* 80372E1C 0036EA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372E20 0036EA80  7C 08 02 A6 */	mflr r0
/* 80372E24 0036EA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372E28 0036EA88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372E2C 0036EA8C  7C 9F 23 78 */	mr r31, r4
/* 80372E30 0036EA90  93 C1 00 08 */	stw r30, 8(r1)
/* 80372E34 0036EA94  7C 7E 1B 78 */	mr r30, r3
/* 80372E38 0036EA98  38 63 00 08 */	addi r3, r3, 8
/* 80372E3C 0036EA9C  4B FF ED 1D */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 80372E40 0036EAA0  2C 03 00 00 */	cmpwi r3, 0
/* 80372E44 0036EAA4  40 82 00 0C */	bne lbl_80372E50
/* 80372E48 0036EAA8  38 60 00 00 */	li r3, 0
/* 80372E4C 0036EAAC  48 00 00 0C */	b lbl_80372E58
lbl_80372E50:
/* 80372E50 0036EAB0  41 82 00 08 */	beq lbl_80372E58
/* 80372E54 0036EAB4  4B FF FF 09 */	bl __ct__Q44nw4r3snd6detail11MmlSeqTrackFv
lbl_80372E58:
/* 80372E58 0036EAB8  2C 03 00 00 */	cmpwi r3, 0
/* 80372E5C 0036EABC  41 82 00 10 */	beq lbl_80372E6C
/* 80372E60 0036EAC0  93 E3 00 B8 */	stw r31, 0xb8(r3)
/* 80372E64 0036EAC4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80372E68 0036EAC8  90 03 00 D8 */	stw r0, 0xd8(r3)
lbl_80372E6C:
/* 80372E6C 0036EACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372E70 0036EAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372E74 0036EAD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80372E78 0036EAD8  7C 08 03 A6 */	mtlr r0
/* 80372E7C 0036EADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80372E80 0036EAE0  4E 80 00 20 */	blr

.global FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack
FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack:
/* 80372E84 0036EAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372E88 0036EAE8  7C 08 02 A6 */	mflr r0
/* 80372E8C 0036EAEC  2C 04 00 00 */	cmpwi r4, 0
/* 80372E90 0036EAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372E94 0036EAF4  38 00 00 00 */	li r0, 0
/* 80372E98 0036EAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372E9C 0036EAFC  7C 9F 23 78 */	mr r31, r4
/* 80372EA0 0036EB00  93 C1 00 08 */	stw r30, 8(r1)
/* 80372EA4 0036EB04  7C 7E 1B 78 */	mr r30, r3
/* 80372EA8 0036EB08  90 04 00 B8 */	stw r0, 0xb8(r4)
/* 80372EAC 0036EB0C  41 82 00 28 */	beq lbl_80372ED4
/* 80372EB0 0036EB10  81 9F 00 00 */	lwz r12, 0(r31)
/* 80372EB4 0036EB14  7F E3 FB 78 */	mr r3, r31
/* 80372EB8 0036EB18  38 80 FF FF */	li r4, -1
/* 80372EBC 0036EB1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80372EC0 0036EB20  7D 89 03 A6 */	mtctr r12
/* 80372EC4 0036EB24  4E 80 04 21 */	bctrl
/* 80372EC8 0036EB28  7F E4 FB 78 */	mr r4, r31
/* 80372ECC 0036EB2C  38 7E 00 08 */	addi r3, r30, 8
/* 80372ED0 0036EB30  4B FF EC E5 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
lbl_80372ED4:
/* 80372ED4 0036EB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372ED8 0036EB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372EDC 0036EB3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80372EE0 0036EB40  7C 08 03 A6 */	mtlr r0
/* 80372EE4 0036EB44  38 21 00 10 */	addi r1, r1, 0x10
/* 80372EE8 0036EB48  4E 80 00 20 */	blr

.global Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl
Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl:
/* 80372EEC 0036EB4C  38 C0 00 F0 */	li r6, 0xf0
/* 80372EF0 0036EB50  38 63 00 08 */	addi r3, r3, 8
/* 80372EF4 0036EB54  4B FF EA 50 */	b CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl

.global Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl
Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl:
/* 80372EF8 0036EB58  38 63 00 08 */	addi r3, r3, 8
/* 80372EFC 0036EB5C  4B FF EB 8C */	b DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl

.global GetAllocatableTrackCount__Q44nw4r3snd6detail20MmlSeqTrackAllocatorCFv
GetAllocatableTrackCount__Q44nw4r3snd6detail20MmlSeqTrackAllocatorCFv:
/* 80372F00 0036EB60  38 63 00 08 */	addi r3, r3, 8
/* 80372F04 0036EB64  4B FF EC 04 */	b CountImpl__Q44nw4r3snd6detail8PoolImplCFv

.global __dt__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFv
__dt__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFv:
/* 80372F08 0036EB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372F0C 0036EB6C  7C 08 02 A6 */	mflr r0
/* 80372F10 0036EB70  2C 03 00 00 */	cmpwi r3, 0
/* 80372F14 0036EB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372F18 0036EB78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372F1C 0036EB7C  7C 7F 1B 78 */	mr r31, r3
/* 80372F20 0036EB80  41 82 00 10 */	beq lbl_80372F30
/* 80372F24 0036EB84  2C 04 00 00 */	cmpwi r4, 0
/* 80372F28 0036EB88  40 81 00 08 */	ble lbl_80372F30
/* 80372F2C 0036EB8C  4B E6 7B 8D */	bl __dl__FPv
lbl_80372F30:
/* 80372F30 0036EB90  7F E3 FB 78 */	mr r3, r31
/* 80372F34 0036EB94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372F38 0036EB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372F3C 0036EB9C  7C 08 03 A6 */	mtlr r0
/* 80372F40 0036EBA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80372F44 0036EBA4  4E 80 00 20 */	blr
