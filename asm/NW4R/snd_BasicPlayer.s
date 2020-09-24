.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail11BasicPlayerFv
__ct__Q44nw4r3snd6detail11BasicPlayerFv:
/* 8036CE84 00368AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CE88 00368AE8  7C 08 02 A6 */	mflr r0
/* 8036CE8C 00368AEC  3C 80 80 45 */	lis r4, lbl_8044C908@ha
/* 8036CE90 00368AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CE94 00368AF4  38 00 FF FF */	li r0, -1
/* 8036CE98 00368AF8  38 84 C9 08 */	addi r4, r4, lbl_8044C908@l
/* 8036CE9C 00368AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036CEA0 00368B00  7C 7F 1B 78 */	mr r31, r3
/* 8036CEA4 00368B04  90 03 00 04 */	stw r0, 4(r3)
/* 8036CEA8 00368B08  90 83 00 00 */	stw r4, 0(r3)
/* 8036CEAC 00368B0C  48 00 00 1D */	bl InitParam__Q44nw4r3snd6detail11BasicPlayerFv
/* 8036CEB0 00368B10  7F E3 FB 78 */	mr r3, r31
/* 8036CEB4 00368B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036CEB8 00368B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CEBC 00368B1C  7C 08 03 A6 */	mtlr r0
/* 8036CEC0 00368B20  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CEC4 00368B24  4E 80 00 20 */	blr

.global InitParam__Q44nw4r3snd6detail11BasicPlayerFv
InitParam__Q44nw4r3snd6detail11BasicPlayerFv:
/* 8036CEC8 00368B28  C0 02 A5 AC */	lfs f0, lbl_80642BAC-_SDA2_BASE_(r2)
/* 8036CECC 00368B2C  38 80 00 00 */	li r4, 0
/* 8036CED0 00368B30  C0 22 A5 A8 */	lfs f1, lbl_80642BA8-_SDA2_BASE_(r2)
/* 8036CED4 00368B34  38 00 00 01 */	li r0, 1
/* 8036CED8 00368B38  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8036CEDC 00368B3C  D0 23 00 08 */	stfs f1, 8(r3)
/* 8036CEE0 00368B40  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8036CEE4 00368B44  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8036CEE8 00368B48  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8036CEEC 00368B4C  98 83 00 68 */	stb r4, 0x68(r3)
/* 8036CEF0 00368B50  90 83 00 6C */	stw r4, 0x6c(r3)
/* 8036CEF4 00368B54  90 83 00 70 */	stw r4, 0x70(r3)
/* 8036CEF8 00368B58  90 03 00 20 */	stw r0, 0x20(r3)
/* 8036CEFC 00368B5C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8036CF00 00368B60  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8036CF04 00368B64  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8036CF08 00368B68  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8036CF0C 00368B6C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8036CF10 00368B70  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8036CF14 00368B74  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8036CF18 00368B78  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8036CF1C 00368B7C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8036CF20 00368B80  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8036CF24 00368B84  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 8036CF28 00368B88  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8036CF2C 00368B8C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 8036CF30 00368B90  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 8036CF34 00368B94  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 8036CF38 00368B98  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 8036CF3C 00368B9C  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 8036CF40 00368BA0  4E 80 00 20 */	blr

.global SetFxSend__Q44nw4r3snd6detail11BasicPlayerFQ34nw4r3snd6AuxBusf
SetFxSend__Q44nw4r3snd6detail11BasicPlayerFQ34nw4r3snd6AuxBusf:
/* 8036CF44 00368BA4  54 80 10 3A */	slwi r0, r4, 2
/* 8036CF48 00368BA8  7C 63 02 14 */	add r3, r3, r0
/* 8036CF4C 00368BAC  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8036CF50 00368BB0  4E 80 00 20 */	blr

.global GetFxSend__Q44nw4r3snd6detail11BasicPlayerCFQ34nw4r3snd6AuxBus
GetFxSend__Q44nw4r3snd6detail11BasicPlayerCFQ34nw4r3snd6AuxBus:
/* 8036CF54 00368BB4  54 80 10 3A */	slwi r0, r4, 2
/* 8036CF58 00368BB8  7C 63 02 14 */	add r3, r3, r0
/* 8036CF5C 00368BBC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8036CF60 00368BC0  4E 80 00 20 */	blr

.global SetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerFif
SetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerFif:
/* 8036CF64 00368BC4  54 80 10 3A */	slwi r0, r4, 2
/* 8036CF68 00368BC8  7C 63 02 14 */	add r3, r3, r0
/* 8036CF6C 00368BCC  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8036CF70 00368BD0  4E 80 00 20 */	blr

.global GetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerCFi
GetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerCFi:
/* 8036CF74 00368BD4  54 80 10 3A */	slwi r0, r4, 2
/* 8036CF78 00368BD8  7C 63 02 14 */	add r3, r3, r0
/* 8036CF7C 00368BDC  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8036CF80 00368BE0  4E 80 00 20 */	blr

.global GetRemoteSend__Q44nw4r3snd6detail11BasicPlayerCFi
GetRemoteSend__Q44nw4r3snd6detail11BasicPlayerCFi:
/* 8036CF84 00368BE4  54 80 10 3A */	slwi r0, r4, 2
/* 8036CF88 00368BE8  7C 63 02 14 */	add r3, r3, r0
/* 8036CF8C 00368BEC  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8036CF90 00368BF0  4E 80 00 20 */	blr

.global GetRemoteFxSend__Q44nw4r3snd6detail11BasicPlayerCFi
GetRemoteFxSend__Q44nw4r3snd6detail11BasicPlayerCFi:
/* 8036CF94 00368BF4  54 80 10 3A */	slwi r0, r4, 2
/* 8036CF98 00368BF8  7C 63 02 14 */	add r3, r3, r0
/* 8036CF9C 00368BFC  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 8036CFA0 00368C00  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail11BasicPlayerFv
__dt__Q44nw4r3snd6detail11BasicPlayerFv:
/* 8036CFA4 00368C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CFA8 00368C08  7C 08 02 A6 */	mflr r0
/* 8036CFAC 00368C0C  2C 03 00 00 */	cmpwi r3, 0
/* 8036CFB0 00368C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CFB4 00368C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036CFB8 00368C18  7C 7F 1B 78 */	mr r31, r3
/* 8036CFBC 00368C1C  41 82 00 10 */	beq lbl_8036CFCC
/* 8036CFC0 00368C20  2C 04 00 00 */	cmpwi r4, 0
/* 8036CFC4 00368C24  40 81 00 08 */	ble lbl_8036CFCC
/* 8036CFC8 00368C28  4B E6 DA F1 */	bl func_801DAAB8
lbl_8036CFCC:
/* 8036CFCC 00368C2C  7F E3 FB 78 */	mr r3, r31
/* 8036CFD0 00368C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036CFD4 00368C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CFD8 00368C38  7C 08 03 A6 */	mtlr r0
/* 8036CFDC 00368C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CFE0 00368C40  4E 80 00 20 */	blr
