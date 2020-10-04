.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DSPCheckMailToDSP
DSPCheckMailToDSP:
/* 8029ADF8 00296A58  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8029ADFC 00296A5C  A0 03 50 00 */	lhz r0, 0xCC005000@l(r3)
/* 8029AE00 00296A60  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8029AE04 00296A64  4E 80 00 20 */	blr

.global DSPCheckMailFromDSP
DSPCheckMailFromDSP:
/* 8029AE08 00296A68  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 8029AE0C 00296A6C  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 8029AE10 00296A70  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8029AE14 00296A74  4E 80 00 20 */	blr

.global DSPReadMailFromDSP
DSPReadMailFromDSP:
/* 8029AE18 00296A78  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 8029AE1C 00296A7C  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 8029AE20 00296A80  A0 63 50 06 */	lhz r3, 0x5006(r3)
/* 8029AE24 00296A84  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 8029AE28 00296A88  4E 80 00 20 */	blr

.global DSPSendMailToDSP
DSPSendMailToDSP:
/* 8029AE2C 00296A8C  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8029AE30 00296A90  54 60 84 3E */	srwi r0, r3, 0x10
/* 8029AE34 00296A94  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
/* 8029AE38 00296A98  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 8029AE3C 00296A9C  4E 80 00 20 */	blr

.global DSPInit
DSPInit:
/* 8029AE40 00296AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029AE44 00296AA4  7C 08 02 A6 */	mflr r0
/* 8029AE48 00296AA8  3C A0 80 44 */	lis r5, lbl_8043BD00@ha
/* 8029AE4C 00296AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029AE50 00296AB0  38 A5 BD 00 */	addi r5, r5, lbl_8043BD00@l
/* 8029AE54 00296AB4  38 65 00 48 */	addi r3, r5, 0x48
/* 8029AE58 00296AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029AE5C 00296ABC  38 85 00 68 */	addi r4, r5, 0x68
/* 8029AE60 00296AC0  38 A5 00 74 */	addi r5, r5, 0x74
/* 8029AE64 00296AC4  4C C6 31 82 */	crclr 6
/* 8029AE68 00296AC8  48 00 01 CD */	bl __DSP_debug_printf
/* 8029AE6C 00296ACC  80 0D AC 68 */	lwz r0, lbl_8063FF28-_SDA_BASE_(r13)
/* 8029AE70 00296AD0  2C 00 00 01 */	cmpwi r0, 1
/* 8029AE74 00296AD4  41 82 00 78 */	beq lbl_8029AEEC
/* 8029AE78 00296AD8  80 6D 89 00 */	lwz r3, lbl_8063DBC0-_SDA_BASE_(r13)
/* 8029AE7C 00296ADC  4B FC E7 D5 */	bl OSRegisterVersion
/* 8029AE80 00296AE0  4B FD 38 DD */	bl OSDisableInterrupts
/* 8029AE84 00296AE4  3C 80 80 2A */	lis r4, __DSPHandler@ha
/* 8029AE88 00296AE8  7C 7F 1B 78 */	mr r31, r3
/* 8029AE8C 00296AEC  38 84 B0 84 */	addi r4, r4, __DSPHandler@l
/* 8029AE90 00296AF0  38 60 00 07 */	li r3, 7
/* 8029AE94 00296AF4  4B FD 39 15 */	bl __OSSetInterruptHandler
/* 8029AE98 00296AF8  3C 60 01 00 */	lis r3, 0x100
/* 8029AE9C 00296AFC  4B FD 3C D1 */	bl __OSUnmaskInterrupts
/* 8029AEA0 00296B00  3C E0 CC 00 */	lis r7, 0xCC00500A@ha
/* 8029AEA4 00296B04  38 60 FF 57 */	li r3, -169
/* 8029AEA8 00296B08  A0 C7 50 0A */	lhz r6, 0xCC00500A@l(r7)
/* 8029AEAC 00296B0C  38 A0 FF 53 */	li r5, -173
/* 8029AEB0 00296B10  38 80 00 00 */	li r4, 0
/* 8029AEB4 00296B14  38 00 00 01 */	li r0, 1
/* 8029AEB8 00296B18  7C C3 18 38 */	and r3, r6, r3
/* 8029AEBC 00296B1C  60 63 08 00 */	ori r3, r3, 0x800
/* 8029AEC0 00296B20  B0 67 50 0A */	sth r3, 0x500a(r7)
/* 8029AEC4 00296B24  7F E3 FB 78 */	mr r3, r31
/* 8029AEC8 00296B28  A0 C7 50 0A */	lhz r6, 0x500a(r7)
/* 8029AECC 00296B2C  7C C5 28 38 */	and r5, r6, r5
/* 8029AED0 00296B30  B0 A7 50 0A */	sth r5, 0x500a(r7)
/* 8029AED4 00296B34  90 8D AC 78 */	stw r4, lbl_8063FF38-_SDA_BASE_(r13)
/* 8029AED8 00296B38  90 8D AC 84 */	stw r4, lbl_8063FF44-_SDA_BASE_(r13)
/* 8029AEDC 00296B3C  90 8D AC 7C */	stw r4, lbl_8063FF3C-_SDA_BASE_(r13)
/* 8029AEE0 00296B40  90 8D AC 80 */	stw r4, lbl_8063FF40-_SDA_BASE_(r13)
/* 8029AEE4 00296B44  90 0D AC 68 */	stw r0, lbl_8063FF28-_SDA_BASE_(r13)
/* 8029AEE8 00296B48  4B FD 38 9D */	bl OSRestoreInterrupts
lbl_8029AEEC:
/* 8029AEEC 00296B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AEF0 00296B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029AEF4 00296B54  7C 08 03 A6 */	mtlr r0
/* 8029AEF8 00296B58  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AEFC 00296B5C  4E 80 00 20 */	blr

.global DSPCheckInit
DSPCheckInit:
/* 8029AF00 00296B60  80 6D AC 68 */	lwz r3, lbl_8063FF28-_SDA_BASE_(r13)
/* 8029AF04 00296B64  4E 80 00 20 */	blr

.global DSPAddTask
DSPAddTask:
/* 8029AF08 00296B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029AF0C 00296B6C  7C 08 02 A6 */	mflr r0
/* 8029AF10 00296B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029AF14 00296B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029AF18 00296B78  93 C1 00 08 */	stw r30, 8(r1)
/* 8029AF1C 00296B7C  7C 7E 1B 78 */	mr r30, r3
/* 8029AF20 00296B80  4B FD 38 3D */	bl OSDisableInterrupts
/* 8029AF24 00296B84  7C 7F 1B 78 */	mr r31, r3
/* 8029AF28 00296B88  7F C3 F3 78 */	mr r3, r30
/* 8029AF2C 00296B8C  48 00 08 BD */	bl __DSP_insert_task
/* 8029AF30 00296B90  38 60 00 00 */	li r3, 0
/* 8029AF34 00296B94  38 00 00 01 */	li r0, 1
/* 8029AF38 00296B98  90 7E 00 00 */	stw r3, 0(r30)
/* 8029AF3C 00296B9C  7F E3 FB 78 */	mr r3, r31
/* 8029AF40 00296BA0  90 1E 00 08 */	stw r0, 8(r30)
/* 8029AF44 00296BA4  4B FD 38 41 */	bl OSRestoreInterrupts
/* 8029AF48 00296BA8  80 0D AC 80 */	lwz r0, lbl_8063FF40-_SDA_BASE_(r13)
/* 8029AF4C 00296BAC  7C 1E 00 40 */	cmplw r30, r0
/* 8029AF50 00296BB0  40 82 00 0C */	bne lbl_8029AF5C
/* 8029AF54 00296BB4  7F C3 F3 78 */	mr r3, r30
/* 8029AF58 00296BB8  48 00 07 05 */	bl __DSP_boot_task
lbl_8029AF5C:
/* 8029AF5C 00296BBC  7F C3 F3 78 */	mr r3, r30
/* 8029AF60 00296BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029AF64 00296BC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029AF68 00296BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AF6C 00296BCC  7C 08 03 A6 */	mtlr r0
/* 8029AF70 00296BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AF74 00296BD4  4E 80 00 20 */	blr

.global DSPAssertTask
DSPAssertTask:
/* 8029AF78 00296BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029AF7C 00296BDC  7C 08 02 A6 */	mflr r0
/* 8029AF80 00296BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029AF84 00296BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029AF88 00296BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8029AF8C 00296BEC  7C 7E 1B 78 */	mr r30, r3
/* 8029AF90 00296BF0  4B FD 37 CD */	bl OSDisableInterrupts
/* 8029AF94 00296BF4  80 AD AC 84 */	lwz r5, lbl_8063FF44-_SDA_BASE_(r13)
/* 8029AF98 00296BF8  7C 7F 1B 78 */	mr r31, r3
/* 8029AF9C 00296BFC  7C 05 F0 40 */	cmplw r5, r30
/* 8029AFA0 00296C00  40 82 00 1C */	bne lbl_8029AFBC
/* 8029AFA4 00296C04  38 00 00 01 */	li r0, 1
/* 8029AFA8 00296C08  93 CD AC 74 */	stw r30, lbl_8063FF34-_SDA_BASE_(r13)
/* 8029AFAC 00296C0C  90 0D AC 70 */	stw r0, lbl_8063FF30-_SDA_BASE_(r13)
/* 8029AFB0 00296C10  4B FD 37 D5 */	bl OSRestoreInterrupts
/* 8029AFB4 00296C14  7F C3 F3 78 */	mr r3, r30
/* 8029AFB8 00296C18  48 00 00 64 */	b lbl_8029B01C
lbl_8029AFBC:
/* 8029AFBC 00296C1C  80 9E 00 04 */	lwz r4, 4(r30)
/* 8029AFC0 00296C20  80 05 00 04 */	lwz r0, 4(r5)
/* 8029AFC4 00296C24  7C 04 00 40 */	cmplw r4, r0
/* 8029AFC8 00296C28  40 80 00 4C */	bge lbl_8029B014
/* 8029AFCC 00296C2C  38 00 00 01 */	li r0, 1
/* 8029AFD0 00296C30  93 CD AC 74 */	stw r30, lbl_8063FF34-_SDA_BASE_(r13)
/* 8029AFD4 00296C34  90 0D AC 70 */	stw r0, lbl_8063FF30-_SDA_BASE_(r13)
/* 8029AFD8 00296C38  80 05 00 00 */	lwz r0, 0(r5)
/* 8029AFDC 00296C3C  28 00 00 01 */	cmplwi r0, 1
/* 8029AFE0 00296C40  40 82 00 24 */	bne lbl_8029B004
/* 8029AFE4 00296C44  4B FD 37 79 */	bl OSDisableInterrupts
/* 8029AFE8 00296C48  3C A0 CC 00 */	lis r5, 0xCC00500A@ha
/* 8029AFEC 00296C4C  38 00 FF 57 */	li r0, -169
/* 8029AFF0 00296C50  A0 85 50 0A */	lhz r4, 0xCC00500A@l(r5)
/* 8029AFF4 00296C54  7C 80 00 38 */	and r0, r4, r0
/* 8029AFF8 00296C58  60 00 00 02 */	ori r0, r0, 2
/* 8029AFFC 00296C5C  B0 05 50 0A */	sth r0, 0x500a(r5)
/* 8029B000 00296C60  4B FD 37 85 */	bl OSRestoreInterrupts
lbl_8029B004:
/* 8029B004 00296C64  7F E3 FB 78 */	mr r3, r31
/* 8029B008 00296C68  4B FD 37 7D */	bl OSRestoreInterrupts
/* 8029B00C 00296C6C  7F C3 F3 78 */	mr r3, r30
/* 8029B010 00296C70  48 00 00 0C */	b lbl_8029B01C
lbl_8029B014:
/* 8029B014 00296C74  4B FD 37 71 */	bl OSRestoreInterrupts
/* 8029B018 00296C78  38 60 00 00 */	li r3, 0
lbl_8029B01C:
/* 8029B01C 00296C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029B020 00296C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029B024 00296C84  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029B028 00296C88  7C 08 03 A6 */	mtlr r0
/* 8029B02C 00296C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029B030 00296C90  4E 80 00 20 */	blr