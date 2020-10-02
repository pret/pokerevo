.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DBInit
DBInit:
/* 80277394 00272FF4  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 80277398 00272FF8  3C 60 80 27 */	lis r3, __DBExceptionDestination@ha
/* 8027739C 00272FFC  38 A4 00 40 */	addi r5, r4, 0x80000040@l
/* 802773A0 00273000  38 00 00 01 */	li r0, 1
/* 802773A4 00273004  38 63 74 20 */	addi r3, r3, __DBExceptionDestination@l
/* 802773A8 00273008  90 AD A8 B8 */	stw r5, lbl_8063FB78-_SDA_BASE_(r13)
/* 802773AC 0027300C  3C 63 80 00 */	addis r3, r3, 0x8000
/* 802773B0 00273010  90 64 00 48 */	stw r3, 0x48(r4)
/* 802773B4 00273014  90 0D A8 BC */	stw r0, lbl_8063FB7C-_SDA_BASE_(r13)
/* 802773B8 00273018  4E 80 00 20 */	blr

.global DBIsDebuggerPresent
DBIsDebuggerPresent:
/* 802773BC 0027301C  80 6D A8 B8 */	lwz r3, lbl_8063FB78-_SDA_BASE_(r13)
/* 802773C0 00273020  2C 03 00 00 */	cmpwi r3, 0
/* 802773C4 00273024  40 82 00 0C */	bne lbl_802773D0
/* 802773C8 00273028  38 60 00 00 */	li r3, 0
/* 802773CC 0027302C  4E 80 00 20 */	blr
lbl_802773D0:
/* 802773D0 00273030  80 63 00 00 */	lwz r3, 0(r3)
/* 802773D4 00273034  4E 80 00 20 */	blr

.global __DBExceptionDestinationAux
__DBExceptionDestinationAux:
/* 802773D8 00273038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802773DC 0027303C  7C 08 02 A6 */	mflr r0
/* 802773E0 00273040  3C 60 80 43 */	lis r3, lbl_80434078@ha
/* 802773E4 00273044  90 01 00 14 */	stw r0, 0x14(r1)
/* 802773E8 00273048  38 63 40 78 */	addi r3, r3, lbl_80434078@l
/* 802773EC 0027304C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802773F0 00273050  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 802773F4 00273054  3F E4 80 00 */	addis r31, r4, 0x8000
/* 802773F8 00273058  4C C6 31 82 */	crclr 6
/* 802773FC 0027305C  4B D9 06 C9 */	bl func_80007AC4
/* 80277400 00273060  7F E3 FB 78 */	mr r3, r31
/* 80277404 00273064  4B FF 3D 6D */	bl OSDumpContext
/* 80277408 00273068  4B FF 0E 61 */	bl PPCHalt
/* 8027740C 0027306C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80277410 00273070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80277414 00273074  7C 08 03 A6 */	mtlr r0
/* 80277418 00273078  38 21 00 10 */	addi r1, r1, 0x10
/* 8027741C 0027307C  4E 80 00 20 */	blr

.global __DBExceptionDestination
__DBExceptionDestination:
/* 80277420 00273080  7C 60 00 A6 */	mfmsr r3
/* 80277424 00273084  60 63 00 30 */	ori r3, r3, 0x30
/* 80277428 00273088  7C 60 01 24 */	mtmsr r3
/* 8027742C 0027308C  4B FF FF AC */	b __DBExceptionDestinationAux

.global __DBIsExceptionMarked
__DBIsExceptionMarked:
/* 80277430 00273090  80 8D A8 B8 */	lwz r4, lbl_8063FB78-_SDA_BASE_(r13)
/* 80277434 00273094  38 00 00 01 */	li r0, 1
/* 80277438 00273098  7C 00 18 30 */	slw r0, r0, r3
/* 8027743C 0027309C  80 64 00 04 */	lwz r3, 4(r4)
/* 80277440 002730A0  7C 63 00 38 */	and r3, r3, r0
/* 80277444 002730A4  4E 80 00 20 */	blr

.global DBPrintf
DBPrintf:
/* 80277448 002730A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8027744C 002730AC  40 86 00 24 */	bne cr1, lbl_80277470
/* 80277450 002730B0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80277454 002730B4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80277458 002730B8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8027745C 002730BC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80277460 002730C0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80277464 002730C4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80277468 002730C8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8027746C 002730CC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80277470:
/* 80277470 002730D0  90 61 00 08 */	stw r3, 8(r1)
/* 80277474 002730D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80277478 002730D8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8027747C 002730DC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80277480 002730E0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80277484 002730E4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80277488 002730E8  91 21 00 20 */	stw r9, 0x20(r1)
/* 8027748C 002730EC  91 41 00 24 */	stw r10, 0x24(r1)
/* 80277490 002730F0  38 21 00 70 */	addi r1, r1, 0x70
/* 80277494 002730F4  4E 80 00 20 */	blr
