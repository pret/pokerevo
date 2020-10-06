.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

BTUInterruptHandler:
/* 802BCFB8 002B8C18  3C 80 80 56 */	lis r4, lbl_80567620@ha
/* 802BCFBC 002B8C1C  3C 60 80 2C */	lis r3, btu_task_msg_handler@ha
/* 802BCFC0 002B8C20  38 84 76 20 */	addi r4, r4, lbl_80567620@l
/* 802BCFC4 002B8C24  38 63 D1 50 */	addi r3, r3, btu_task_msg_handler@l
/* 802BCFC8 002B8C28  38 84 10 00 */	addi r4, r4, 0x1000
/* 802BCFCC 002B8C2C  4B FA E0 64 */	b OSSwitchFiber

.global BTA_Init
BTA_Init:
/* 802BCFD0 002B8C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCFD4 002B8C34  7C 08 02 A6 */	mflr r0
/* 802BCFD8 002B8C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCFDC 002B8C3C  38 00 00 00 */	li r0, 0
/* 802BCFE0 002B8C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BCFE4 002B8C44  90 0D AE EC */	stw r0, lbl_806401AC-_SDA_BASE_(r13)
/* 802BCFE8 002B8C48  4B FF DF 81 */	bl GKI_init
/* 802BCFEC 002B8C4C  4B FF E1 71 */	bl GKI_enable
/* 802BCFF0 002B8C50  48 01 1B 15 */	bl BTE_Init
/* 802BCFF4 002B8C54  3C 80 80 40 */	lis r4, lbl_803FDAA8@ha
/* 802BCFF8 002B8C58  38 0D 8A 20 */	addi r0, r13, lbl_8063DCE0-_SDA_BASE_
/* 802BCFFC 002B8C5C  38 84 DA A8 */	addi r4, r4, lbl_803FDAA8@l
/* 802BD000 002B8C60  90 0D AE E4 */	stw r0, lbl_806401A4-_SDA_BASE_(r13)
/* 802BD004 002B8C64  38 60 00 00 */	li r3, 0
/* 802BD008 002B8C68  90 8D AE E0 */	stw r4, lbl_806401A0-_SDA_BASE_(r13)
/* 802BD00C 002B8C6C  4B FF FD 85 */	bl bte_hcisu_task
/* 802BD010 002B8C70  48 00 00 0C */	b lbl_802BD01C
lbl_802BD014:
/* 802BD014 002B8C74  38 60 00 64 */	li r3, 0x64
/* 802BD018 002B8C78  4B FF E0 95 */	bl GKI_delay
lbl_802BD01C:
/* 802BD01C 002B8C7C  80 0D 89 C8 */	lwz r0, lbl_8063DC88-_SDA_BASE_(r13)
/* 802BD020 002B8C80  2C 00 00 00 */	cmpwi r0, 0
/* 802BD024 002B8C84  40 82 FF F0 */	bne lbl_802BD014
/* 802BD028 002B8C88  48 00 00 E9 */	bl btu_task_init
/* 802BD02C 002B8C8C  3F E0 80 57 */	lis r31, lbl_80568620@ha
/* 802BD030 002B8C90  38 7F 86 20 */	addi r3, r31, lbl_80568620@l
/* 802BD034 002B8C94  4B FA C6 F1 */	bl OSCreateAlarm
/* 802BD038 002B8C98  4B FB 57 81 */	bl OSGetTime
/* 802BD03C 002B8C9C  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 802BD040 002B8CA0  3D 20 80 2C */	lis r9, BTUInterruptHandler@ha
/* 802BD044 002B8CA4  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 802BD048 002B8CA8  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 802BD04C 002B8CAC  7C 65 1B 78 */	mr r5, r3
/* 802BD050 002B8CB0  39 29 CF B8 */	addi r9, r9, BTUInterruptHandler@l
/* 802BD054 002B8CB4  38 66 4D D3 */	addi r3, r6, 0x10624DD3@l
/* 802BD058 002B8CB8  54 00 F0 BE */	srwi r0, r0, 2
/* 802BD05C 002B8CBC  7C 03 00 16 */	mulhwu r0, r3, r0
/* 802BD060 002B8CC0  7C 86 23 78 */	mr r6, r4
/* 802BD064 002B8CC4  38 7F 86 20 */	addi r3, r31, -31200
/* 802BD068 002B8CC8  38 E0 00 00 */	li r7, 0
/* 802BD06C 002B8CCC  54 08 D9 7C */	rlwinm r8, r0, 0x1b, 5, 0x1e
/* 802BD070 002B8CD0  4B FA C9 85 */	bl OSSetPeriodicAlarm
/* 802BD074 002B8CD4  38 60 00 00 */	li r3, 0
/* 802BD078 002B8CD8  4B FF E0 29 */	bl GKI_run
/* 802BD07C 002B8CDC  48 00 00 0C */	b lbl_802BD088
lbl_802BD080:
/* 802BD080 002B8CE0  38 60 07 D0 */	li r3, 0x7d0
/* 802BD084 002B8CE4  4B FF E0 29 */	bl GKI_delay
lbl_802BD088:
/* 802BD088 002B8CE8  48 00 30 65 */	bl BTA_DmIsDeviceUp
/* 802BD08C 002B8CEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BD090 002B8CF0  41 82 FF F0 */	beq lbl_802BD080
/* 802BD094 002B8CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BD098 002B8CF8  38 60 00 00 */	li r3, 0
/* 802BD09C 002B8CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD0A0 002B8D00  7C 08 03 A6 */	mtlr r0
/* 802BD0A4 002B8D04  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD0A8 002B8D08  4E 80 00 20 */	blr

.global BTA_CleanUp
BTA_CleanUp:
/* 802BD0AC 002B8D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD0B0 002B8D10  7C 08 02 A6 */	mflr r0
/* 802BD0B4 002B8D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD0B8 002B8D18  90 6D AE EC */	stw r3, lbl_806401AC-_SDA_BASE_(r13)
/* 802BD0BC 002B8D1C  3C 60 80 57 */	lis r3, lbl_80568620@ha
/* 802BD0C0 002B8D20  38 63 86 20 */	addi r3, r3, lbl_80568620@l
/* 802BD0C4 002B8D24  4B FA C9 B5 */	bl OSCancelAlarm
/* 802BD0C8 002B8D28  4B FF FD 2D */	bl bte_hcisu_close
/* 802BD0CC 002B8D2C  4B FF DF 2D */	bl GKI_shutdown
/* 802BD0D0 002B8D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD0D4 002B8D34  7C 08 03 A6 */	mtlr r0
/* 802BD0D8 002B8D38  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD0DC 002B8D3C  4E 80 00 20 */	blr

.global bta_usb_close_evt
bta_usb_close_evt:
/* 802BD0E0 002B8D40  81 8D AE EC */	lwz r12, lbl_806401AC-_SDA_BASE_(r13)
/* 802BD0E4 002B8D44  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD0E8 002B8D48  4D 82 00 20 */	beqlr
/* 802BD0EC 002B8D4C  7C 60 07 75 */	extsb. r0, r3
/* 802BD0F0 002B8D50  41 80 00 10 */	blt lbl_802BD100
/* 802BD0F4 002B8D54  38 60 00 00 */	li r3, 0
/* 802BD0F8 002B8D58  7D 89 03 A6 */	mtctr r12
/* 802BD0FC 002B8D5C  4E 80 04 20 */	bctr
lbl_802BD100:
/* 802BD100 002B8D60  38 60 00 01 */	li r3, 1
/* 802BD104 002B8D64  7D 89 03 A6 */	mtctr r12
/* 802BD108 002B8D68  4E 80 04 20 */	bctr
/* 802BD10C 002B8D6C  4E 80 00 20 */	blr