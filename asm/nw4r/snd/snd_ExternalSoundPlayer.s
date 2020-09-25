.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound:
/* 8036FF7C 0036BBDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036FF80 0036BBE0  7C 08 02 A6 */	mflr r0
/* 8036FF84 0036BBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036FF88 0036BBE8  38 03 00 04 */	addi r0, r3, 4
/* 8036FF8C 0036BBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036FF90 0036BBF0  7C 9F 23 78 */	mr r31, r4
/* 8036FF94 0036BBF4  38 81 00 08 */	addi r4, r1, 8
/* 8036FF98 0036BBF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036FF9C 0036BBFC  7C 7E 1B 78 */	mr r30, r3
/* 8036FFA0 0036BC00  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 8036FFA4 0036BC04  90 01 00 08 */	stw r0, 8(r1)
/* 8036FFA8 0036BC08  4B FF 2C A1 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 8036FFAC 0036BC0C  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8036FFB0 0036BC10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036FFB4 0036BC14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036FFB8 0036BC18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036FFBC 0036BC1C  7C 08 03 A6 */	mtlr r0
/* 8036FFC0 0036BC20  38 21 00 20 */	addi r1, r1, 0x20
/* 8036FFC4 0036BC24  4E 80 00 20 */	blr

.global RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound:
/* 8036FFC8 0036BC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036FFCC 0036BC2C  7C 08 02 A6 */	mflr r0
/* 8036FFD0 0036BC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036FFD4 0036BC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036FFD8 0036BC38  7C 9F 23 78 */	mr r31, r4
/* 8036FFDC 0036BC3C  38 84 00 D0 */	addi r4, r4, 0xd0
/* 8036FFE0 0036BC40  4B FF 2C 95 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8036FFE4 0036BC44  38 00 00 00 */	li r0, 0
/* 8036FFE8 0036BC48  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8036FFEC 0036BC4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036FFF0 0036BC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036FFF4 0036BC54  7C 08 03 A6 */	mtlr r0
/* 8036FFF8 0036BC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8036FFFC 0036BC5C  4E 80 00 20 */	blr

.global GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv
GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv:
/* 80370000 0036BC60  80 83 00 04 */	lwz r4, 4(r3)
/* 80370004 0036BC64  38 03 00 04 */	addi r0, r3, 4
/* 80370008 0036BC68  39 00 00 80 */	li r8, 0x80
/* 8037000C 0036BC6C  38 60 00 00 */	li r3, 0
/* 80370010 0036BC70  48 00 00 40 */	b lbl_80370050
lbl_80370014:
/* 80370014 0036BC74  88 C4 FF A4 */	lbz r6, -0x5c(r4)
/* 80370018 0036BC78  38 E4 FF 30 */	addi r7, r4, -208
/* 8037001C 0036BC7C  80 A4 FF 70 */	lwz r5, -0x90(r4)
/* 80370020 0036BC80  7C C6 2A 14 */	add r6, r6, r5
/* 80370024 0036BC84  2C 06 00 7F */	cmpwi r6, 0x7f
/* 80370028 0036BC88  40 81 00 0C */	ble lbl_80370034
/* 8037002C 0036BC8C  38 A0 00 7F */	li r5, 0x7f
/* 80370030 0036BC90  48 00 00 0C */	b lbl_8037003C
lbl_80370034:
/* 80370034 0036BC94  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 80370038 0036BC98  7C C5 28 78 */	andc r5, r6, r5
lbl_8037003C:
/* 8037003C 0036BC9C  7C 08 28 00 */	cmpw r8, r5
/* 80370040 0036BCA0  40 81 00 0C */	ble lbl_8037004C
/* 80370044 0036BCA4  7C E3 3B 78 */	mr r3, r7
/* 80370048 0036BCA8  7C A8 2B 78 */	mr r8, r5
lbl_8037004C:
/* 8037004C 0036BCAC  80 84 00 00 */	lwz r4, 0(r4)
lbl_80370050:
/* 80370050 0036BCB0  7C 04 00 40 */	cmplw r4, r0
/* 80370054 0036BCB4  40 82 FF C0 */	bne lbl_80370014
/* 80370058 0036BCB8  4E 80 00 20 */	blr
