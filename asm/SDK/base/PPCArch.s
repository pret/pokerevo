.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global PPCMfmsr
PPCMfmsr:
/* 80268228 00263E88  7C 60 00 A6 */	mfmsr r3
/* 8026822C 00263E8C  4E 80 00 20 */	blr

.global PPCMtmsr
PPCMtmsr:
/* 80268230 00263E90  7C 60 01 24 */	mtmsr r3
/* 80268234 00263E94  4E 80 00 20 */	blr

.global PPCMfhid0
PPCMfhid0:
/* 80268238 00263E98  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8026823C 00263E9C  4E 80 00 20 */	blr

.global PPCMthid0
PPCMthid0:
/* 80268240 00263EA0  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 80268244 00263EA4  4E 80 00 20 */	blr

.global PPCMfl2cr
PPCMfl2cr:
/* 80268248 00263EA8  7C 79 FA A6 */	mfspr r3, 0x3f9
/* 8026824C 00263EAC  4E 80 00 20 */	blr

.global PPCMtl2cr
PPCMtl2cr:
/* 80268250 00263EB0  7C 79 FB A6 */	mtspr 0x3f9, r3
/* 80268254 00263EB4  4E 80 00 20 */	blr

.global PPCMtdec
PPCMtdec:
/* 80268258 00263EB8  7C 76 03 A6 */	mtspr 0x16, r3
/* 8026825C 00263EBC  4E 80 00 20 */	blr

.global PPCSync
PPCSync:
/* 80268260 00263EC0  44 00 00 02 */	sc
/* 80268264 00263EC4  4E 80 00 20 */	blr

.global PPCHalt
PPCHalt:
/* 80268268 00263EC8  7C 00 04 AC */	sync 0
lbl_8026826C:
/* 8026826C 00263ECC  60 00 00 00 */	nop
/* 80268270 00263ED0  38 60 00 00 */	li r3, 0
/* 80268274 00263ED4  60 00 00 00 */	nop
/* 80268278 00263ED8  4B FF FF F4 */	b lbl_8026826C

.global PPCMtmmcr0
PPCMtmmcr0:
/* 8026827C 00263EDC  7C 78 EB A6 */	mtspr 0x3b8, r3
/* 80268280 00263EE0  4E 80 00 20 */	blr

.global PPCMtmmcr1
PPCMtmmcr1:
/* 80268284 00263EE4  7C 7C EB A6 */	mtspr 0x3bc, r3
/* 80268288 00263EE8  4E 80 00 20 */	blr

.global PPCMtpmc1
PPCMtpmc1:
/* 8026828C 00263EEC  7C 79 EB A6 */	mtspr 0x3b9, r3
/* 80268290 00263EF0  4E 80 00 20 */	blr

.global PPCMtpmc2
PPCMtpmc2:
/* 80268294 00263EF4  7C 7A EB A6 */	mtspr 0x3ba, r3
/* 80268298 00263EF8  4E 80 00 20 */	blr

.global PPCMtpmc3
PPCMtpmc3:
/* 8026829C 00263EFC  7C 7D EB A6 */	mtspr 0x3bd, r3
/* 802682A0 00263F00  4E 80 00 20 */	blr

.global PPCMtpmc4
PPCMtpmc4:
/* 802682A4 00263F04  7C 7E EB A6 */	mtspr 0x3be, r3
/* 802682A8 00263F08  4E 80 00 20 */	blr

.global PPCMffpscr
PPCMffpscr:
/* 802682AC 00263F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802682B0 00263F10  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802682B4 00263F14  FF E0 04 8E */	mffs f31
/* 802682B8 00263F18  DB E1 00 08 */	stfd f31, 8(r1)
/* 802682BC 00263F1C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802682C0 00263F20  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802682C4 00263F24  38 21 00 20 */	addi r1, r1, 0x20
/* 802682C8 00263F28  4E 80 00 20 */	blr

.global PPCMtfpscr
PPCMtfpscr:
/* 802682CC 00263F2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802682D0 00263F30  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802682D4 00263F34  38 80 00 00 */	li r4, 0
/* 802682D8 00263F38  90 61 00 0C */	stw r3, 0xc(r1)
/* 802682DC 00263F3C  90 81 00 08 */	stw r4, 8(r1)
/* 802682E0 00263F40  CB E1 00 08 */	lfd f31, 8(r1)
/* 802682E4 00263F44  FD FE FD 8E */	mtfsf 0xff, f31
/* 802682E8 00263F48  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802682EC 00263F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 802682F0 00263F50  4E 80 00 20 */	blr

.global PPCMfhid2
PPCMfhid2:
/* 802682F4 00263F54  7C 78 E2 A6 */	mfspr r3, 0x398
/* 802682F8 00263F58  4E 80 00 20 */	blr

.global PPCMthid2
PPCMthid2:
/* 802682FC 00263F5C  7C 78 E3 A6 */	mtspr 0x398, r3
/* 80268300 00263F60  4E 80 00 20 */	blr

.global PPCMfwpar
PPCMfwpar:
/* 80268304 00263F64  7C 00 04 AC */	sync 0
/* 80268308 00263F68  7C 79 E2 A6 */	mfspr r3, 0x399
/* 8026830C 00263F6C  4E 80 00 20 */	blr

.global PPCMtwpar
PPCMtwpar:
/* 80268310 00263F70  7C 79 E3 A6 */	mtspr 0x399, r3
/* 80268314 00263F74  4E 80 00 20 */	blr

.global PPCDisableSpeculation
PPCDisableSpeculation:
/* 80268318 00263F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026831C 00263F7C  7C 08 02 A6 */	mflr r0
/* 80268320 00263F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80268324 00263F84  4B FF FF 15 */	bl PPCMfhid0
/* 80268328 00263F88  60 63 02 00 */	ori r3, r3, 0x200
/* 8026832C 00263F8C  4B FF FF 15 */	bl PPCMthid0
/* 80268330 00263F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80268334 00263F94  7C 08 03 A6 */	mtlr r0
/* 80268338 00263F98  38 21 00 10 */	addi r1, r1, 0x10
/* 8026833C 00263F9C  4E 80 00 20 */	blr

.global PPCSetFpNonIEEEMode
PPCSetFpNonIEEEMode:
/* 80268340 00263FA0  FF A0 00 4C */	mtfsb1 0x1d
/* 80268344 00263FA4  4E 80 00 20 */	blr

.global PPCMthid4
PPCMthid4:
/* 80268348 00263FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026834C 00263FAC  7C 08 02 A6 */	mflr r0
/* 80268350 00263FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80268354 00263FB4  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80268358 00263FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026835C 00263FBC  7C 7F 1B 78 */	mr r31, r3
/* 80268360 00263FC0  41 82 00 0C */	beq lbl_8026836C
/* 80268364 00263FC4  7C 73 FB A6 */	mtspr 0x3f3, r3
/* 80268368 00263FC8  48 00 00 1C */	b lbl_80268384
lbl_8026836C:
/* 8026836C 00263FCC  3C 60 80 42 */	lis r3, lbl_804265A8@ha
/* 80268370 00263FD0  38 63 65 A8 */	addi r3, r3, lbl_804265A8@l
/* 80268374 00263FD4  4C C6 31 82 */	crclr 6
/* 80268378 00263FD8  4B D9 F7 4D */	bl OSReport
/* 8026837C 00263FDC  67 FF 80 00 */	oris r31, r31, 0x8000
/* 80268380 00263FE0  7F F3 FB A6 */	mtspr 0x3f3, r31
lbl_80268384:
/* 80268384 00263FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80268388 00263FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026838C 00263FEC  7C 08 03 A6 */	mtlr r0
/* 80268390 00263FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80268394 00263FF4  4E 80 00 20 */	blr
