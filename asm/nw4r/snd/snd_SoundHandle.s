.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global detail_AttachSoundAsTempHandle__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound
detail_AttachSoundAsTempHandle__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound:
/* 8037A924 00376584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A928 00376588  7C 08 02 A6 */	mflr r0
/* 8037A92C 0037658C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A930 00376590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A934 00376594  7C 7F 1B 78 */	mr r31, r3
/* 8037A938 00376598  90 83 00 00 */	stw r4, 0(r3)
/* 8037A93C 0037659C  7C 83 23 78 */	mr r3, r4
/* 8037A940 003765A0  4B FF 37 A1 */	bl IsAttachedTempGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
/* 8037A944 003765A4  2C 03 00 00 */	cmpwi r3, 0
/* 8037A948 003765A8  41 82 00 0C */	beq lbl_8037A954
/* 8037A94C 003765AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A950 003765B0  4B FF 37 AD */	bl DetachTempGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
lbl_8037A954:
/* 8037A954 003765B4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A958 003765B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8037A95C 003765BC  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8037A960 003765C0  7D 89 03 A6 */	mtctr r12
/* 8037A964 003765C4  4E 80 04 21 */	bctrl
/* 8037A968 003765C8  2C 03 00 00 */	cmpwi r3, 0
/* 8037A96C 003765CC  41 82 00 18 */	beq lbl_8037A984
/* 8037A970 003765D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A974 003765D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8037A978 003765D8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8037A97C 003765DC  7D 89 03 A6 */	mtctr r12
/* 8037A980 003765E0  4E 80 04 21 */	bctrl
lbl_8037A984:
/* 8037A984 003765E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A988 003765E8  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8037A98C 003765EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A990 003765F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A994 003765F4  7C 08 03 A6 */	mtlr r0
/* 8037A998 003765F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A99C 003765FC  4E 80 00 20 */	blr

.global detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound
detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound:
/* 8037A9A0 00376600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A9A4 00376604  7C 08 02 A6 */	mflr r0
/* 8037A9A8 00376608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A9AC 0037660C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A9B0 00376610  7C 7F 1B 78 */	mr r31, r3
/* 8037A9B4 00376614  90 83 00 00 */	stw r4, 0(r3)
/* 8037A9B8 00376618  7C 83 23 78 */	mr r3, r4
/* 8037A9BC 0037661C  4B FF 37 11 */	bl IsAttachedGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
/* 8037A9C0 00376620  2C 03 00 00 */	cmpwi r3, 0
/* 8037A9C4 00376624  41 82 00 0C */	beq lbl_8037A9D0
/* 8037A9C8 00376628  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A9CC 0037662C  4B FF 37 29 */	bl DetachGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
lbl_8037A9D0:
/* 8037A9D0 00376630  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A9D4 00376634  93 E3 00 08 */	stw r31, 8(r3)
/* 8037A9D8 00376638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A9DC 0037663C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A9E0 00376640  7C 08 03 A6 */	mtlr r0
/* 8037A9E4 00376644  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A9E8 00376648  4E 80 00 20 */	blr

.global DetachSound__Q34nw4r3snd11SoundHandleFv
DetachSound__Q34nw4r3snd11SoundHandleFv:
/* 8037A9EC 0037664C  80 83 00 00 */	lwz r4, 0(r3)
/* 8037A9F0 00376650  2C 04 00 00 */	cmpwi r4, 0
/* 8037A9F4 00376654  41 82 00 30 */	beq lbl_8037AA24
/* 8037A9F8 00376658  80 04 00 08 */	lwz r0, 8(r4)
/* 8037A9FC 0037665C  7C 00 18 40 */	cmplw r0, r3
/* 8037AA00 00376660  40 82 00 0C */	bne lbl_8037AA0C
/* 8037AA04 00376664  38 00 00 00 */	li r0, 0
/* 8037AA08 00376668  90 04 00 08 */	stw r0, 8(r4)
lbl_8037AA0C:
/* 8037AA0C 0037666C  80 83 00 00 */	lwz r4, 0(r3)
/* 8037AA10 00376670  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8037AA14 00376674  7C 00 18 40 */	cmplw r0, r3
/* 8037AA18 00376678  40 82 00 0C */	bne lbl_8037AA24
/* 8037AA1C 0037667C  38 00 00 00 */	li r0, 0
/* 8037AA20 00376680  90 04 00 0C */	stw r0, 0xc(r4)
lbl_8037AA24:
/* 8037AA24 00376684  80 03 00 00 */	lwz r0, 0(r3)
/* 8037AA28 00376688  2C 00 00 00 */	cmpwi r0, 0
/* 8037AA2C 0037668C  4D 82 00 20 */	beqlr
/* 8037AA30 00376690  38 00 00 00 */	li r0, 0
/* 8037AA34 00376694  90 03 00 00 */	stw r0, 0(r3)
/* 8037AA38 00376698  4E 80 00 20 */	blr
