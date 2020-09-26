.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global InitSoundSystem__Q34nw4r3snd11SoundSystemFll
InitSoundSystem__Q34nw4r3snd11SoundSystemFll:
/* 8037C1A0 00377E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C1A4 00377E04  7C 08 02 A6 */	mflr r0
/* 8037C1A8 00377E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C1AC 00377E0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037C1B0 00377E10  7C 9F 23 78 */	mr r31, r4
/* 8037C1B4 00377E14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037C1B8 00377E18  7C 7E 1B 78 */	mr r30, r3
/* 8037C1BC 00377E1C  80 6D 95 30 */	lwz r3, lbl_8063E7F0-_SDA_BASE_(r13)
/* 8037C1C0 00377E20  4B EE D4 91 */	bl OSRegisterVersion
/* 8037C1C4 00377E24  38 00 40 00 */	li r0, 0x4000
/* 8037C1C8 00377E28  3C 80 80 62 */	lis r4, lbl_80622040@ha
/* 8037C1CC 00377E2C  3C A0 00 01 */	lis r5, 0x0001696C@ha
/* 8037C1D0 00377E30  90 01 00 0C */	stw r0, 0xc(r1)
/* 8037C1D4 00377E34  38 61 00 08 */	addi r3, r1, 8
/* 8037C1D8 00377E38  38 84 20 40 */	addi r4, r4, lbl_80622040@l
/* 8037C1DC 00377E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C1E0 00377E40  38 A5 69 6C */	addi r5, r5, 0x0001696C@l
/* 8037C1E4 00377E44  93 C1 00 08 */	stw r30, 8(r1)
/* 8037C1E8 00377E48  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8037C1EC 00377E4C  48 00 00 1D */	bl InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl
/* 8037C1F0 00377E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C1F4 00377E54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037C1F8 00377E58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037C1FC 00377E5C  7C 08 03 A6 */	mtlr r0
/* 8037C200 00377E60  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C204 00377E64  4E 80 00 20 */	blr

.global InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl
InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl:
/* 8037C208 00377E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C20C 00377E6C  7C 08 02 A6 */	mflr r0
/* 8037C210 00377E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C214 00377E74  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C218 00377E78  4B E4 AF 0D */	bl _savegpr_26
/* 8037C21C 00377E7C  88 0D B2 70 */	lbz r0, lbl_80640530-_SDA_BASE_(r13)
/* 8037C220 00377E80  7C 7A 1B 78 */	mr r26, r3
/* 8037C224 00377E84  7C 9B 23 78 */	mr r27, r4
/* 8037C228 00377E88  2C 00 00 00 */	cmpwi r0, 0
/* 8037C22C 00377E8C  40 82 01 50 */	bne lbl_8037C37C
/* 8037C230 00377E90  38 00 00 01 */	li r0, 1
/* 8037C234 00377E94  98 0D B2 70 */	stb r0, lbl_80640530-_SDA_BASE_(r13)
/* 8037C238 00377E98  4B FE C2 8D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8037C23C 00377E9C  4B FE C3 65 */	bl Init__Q44nw4r3snd6detail9AxManagerFv
/* 8037C240 00377EA0  4B F6 E7 0D */	bl func_802EA94C
lbl_8037C244:
/* 8037C244 00377EA4  4B F6 E7 A9 */	bl func_802EA9EC
/* 8037C248 00377EA8  28 03 00 01 */	cmplwi r3, 1
/* 8037C24C 00377EAC  41 82 FF F8 */	beq lbl_8037C244
/* 8037C250 00377EB0  4B F7 03 0D */	bl func_802EC55C
/* 8037C254 00377EB4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8037C258 00377EB8  2C 00 00 01 */	cmpwi r0, 1
/* 8037C25C 00377EBC  41 82 00 30 */	beq lbl_8037C28C
/* 8037C260 00377EC0  40 80 00 10 */	bge lbl_8037C270
/* 8037C264 00377EC4  2C 00 00 00 */	cmpwi r0, 0
/* 8037C268 00377EC8  40 80 00 14 */	bge lbl_8037C27C
/* 8037C26C 00377ECC  48 00 00 40 */	b lbl_8037C2AC
lbl_8037C270:
/* 8037C270 00377ED0  2C 00 00 03 */	cmpwi r0, 3
/* 8037C274 00377ED4  40 80 00 38 */	bge lbl_8037C2AC
/* 8037C278 00377ED8  48 00 00 24 */	b lbl_8037C29C
lbl_8037C27C:
/* 8037C27C 00377EDC  4B FE C2 49 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8037C280 00377EE0  38 80 00 03 */	li r4, 3
/* 8037C284 00377EE4  4B FE C9 55 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 8037C288 00377EE8  48 00 00 30 */	b lbl_8037C2B8
lbl_8037C28C:
/* 8037C28C 00377EEC  4B FE C2 39 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8037C290 00377EF0  38 80 00 00 */	li r4, 0
/* 8037C294 00377EF4  4B FE C9 45 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 8037C298 00377EF8  48 00 00 20 */	b lbl_8037C2B8
lbl_8037C29C:
/* 8037C29C 00377EFC  4B FE C2 29 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8037C2A0 00377F00  38 80 00 02 */	li r4, 2
/* 8037C2A4 00377F04  4B FE C9 35 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 8037C2A8 00377F08  48 00 00 10 */	b lbl_8037C2B8
lbl_8037C2AC:
/* 8037C2AC 00377F0C  4B FE C2 19 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8037C2B0 00377F10  38 80 00 00 */	li r4, 0
/* 8037C2B4 00377F14  4B FE C9 25 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
lbl_8037C2B8:
/* 8037C2B8 00377F18  4B FF 74 F1 */	bl GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 8037C2BC 00377F1C  4B FF 75 95 */	bl Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 8037C2C0 00377F20  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8037C2C4 00377F24  80 1A 00 04 */	lwz r0, 4(r26)
/* 8037C2C8 00377F28  7F DB 1A 14 */	add r30, r27, r3
/* 8037C2CC 00377F2C  7F DD F3 78 */	mr r29, r30
/* 8037C2D0 00377F30  7F DE 02 14 */	add r30, r30, r0
/* 8037C2D4 00377F34  7F DC F3 78 */	mr r28, r30
/* 8037C2D8 00377F38  4B FE FC CD */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8037C2DC 00377F3C  4B FE FD F1 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8037C2E0 00377F40  7F DE 1A 14 */	add r30, r30, r3
/* 8037C2E4 00377F44  4B FE FC C1 */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8037C2E8 00377F48  4B FE FD E5 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8037C2EC 00377F4C  7C 7F 1B 78 */	mr r31, r3
/* 8037C2F0 00377F50  4B FE FC B5 */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8037C2F4 00377F54  7F 84 E3 78 */	mr r4, r28
/* 8037C2F8 00377F58  7F E5 FB 78 */	mr r5, r31
/* 8037C2FC 00377F5C  4B FE FD F9 */	bl Setup__Q44nw4r3snd6detail14AxVoiceManagerFPvUl
/* 8037C300 00377F60  7F DC F3 78 */	mr r28, r30
/* 8037C304 00377F64  48 00 65 FD */	bl func_80382900
/* 8037C308 00377F68  48 00 66 F5 */	bl func_803829FC
/* 8037C30C 00377F6C  7F DE 1A 14 */	add r30, r30, r3
/* 8037C310 00377F70  48 00 65 F1 */	bl func_80382900
/* 8037C314 00377F74  48 00 66 E9 */	bl func_803829FC
/* 8037C318 00377F78  7C 7F 1B 78 */	mr r31, r3
/* 8037C31C 00377F7C  48 00 65 E5 */	bl func_80382900
/* 8037C320 00377F80  7F 84 E3 78 */	mr r4, r28
/* 8037C324 00377F84  7F E5 FB 78 */	mr r5, r31
/* 8037C328 00377F88  48 00 66 F9 */	bl func_80382A20
/* 8037C32C 00377F8C  4B FF 1E 6D */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 8037C330 00377F90  4B FF 1F 59 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14ChannelManagerFv
/* 8037C334 00377F94  4B FF 1E 65 */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 8037C338 00377F98  4B FF 1F 51 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14ChannelManagerFv
/* 8037C33C 00377F9C  7C 7F 1B 78 */	mr r31, r3
/* 8037C340 00377FA0  4B FF 1E 59 */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 8037C344 00377FA4  7F C4 F3 78 */	mr r4, r30
/* 8037C348 00377FA8  7F E5 FB 78 */	mr r5, r31
/* 8037C34C 00377FAC  4B FF 1F 65 */	bl Setup__Q44nw4r3snd6detail14ChannelManagerFPvUl
/* 8037C350 00377FB0  3C 60 80 62 */	lis r3, lbl_80621D10@ha
/* 8037C354 00377FB4  80 9A 00 08 */	lwz r4, 8(r26)
/* 8037C358 00377FB8  80 DA 00 0C */	lwz r6, 0xc(r26)
/* 8037C35C 00377FBC  7F 65 DB 78 */	mr r5, r27
/* 8037C360 00377FC0  38 63 1D 10 */	addi r3, r3, lbl_80621D10@l
/* 8037C364 00377FC4  48 00 3D 3D */	bl Create__Q44nw4r3snd6detail10TaskThreadFlPvUl
/* 8037C368 00377FC8  48 00 00 E9 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 8037C36C 00377FCC  80 9A 00 00 */	lwz r4, 0(r26)
/* 8037C370 00377FD0  7F A5 EB 78 */	mr r5, r29
/* 8037C374 00377FD4  80 DA 00 04 */	lwz r6, 4(r26)
/* 8037C378 00377FD8  48 00 02 0D */	bl Create__Q44nw4r3snd6detail11SoundThreadFlPvUl
lbl_8037C37C:
/* 8037C37C 00377FDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C380 00377FE0  4B E4 AD F1 */	bl _restgpr_26
/* 8037C384 00377FE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C388 00377FE8  7C 08 03 A6 */	mtlr r0
/* 8037C38C 00377FEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C390 00377FF0  4E 80 00 20 */	blr

.global WaitForResetReady__Q34nw4r3snd11SoundSystemFv
WaitForResetReady__Q34nw4r3snd11SoundSystemFv:
/* 8037C394 00377FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C398 00377FF8  7C 08 02 A6 */	mflr r0
/* 8037C39C 00377FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C3A0 00378000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C3A4 00378004  93 C1 00 08 */	stw r30, 8(r1)
/* 8037C3A8 00378008  88 0D B2 70 */	lbz r0, lbl_80640530-_SDA_BASE_(r13)
/* 8037C3AC 0037800C  2C 00 00 00 */	cmpwi r0, 0
/* 8037C3B0 00378010  41 82 00 40 */	beq lbl_8037C3F0
/* 8037C3B4 00378014  4B EF 64 1D */	bl func_802727D0
/* 8037C3B8 00378018  7C 7E 1B 78 */	mr r30, r3
/* 8037C3BC 0037801C  3F E0 80 00 */	lis r31, 0x8000
/* 8037C3C0 00378020  48 00 00 1C */	b lbl_8037C3DC
lbl_8037C3C4:
/* 8037C3C4 00378024  4B EF 64 0D */	bl func_802727D0
/* 8037C3C8 00378028  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8037C3CC 0037802C  7C 7E 18 50 */	subf r3, r30, r3
/* 8037C3D0 00378030  54 00 F0 BE */	srwi r0, r0, 2
/* 8037C3D4 00378034  7C 03 03 97 */	divwu. r0, r3, r0
/* 8037C3D8 00378038  40 82 00 18 */	bne lbl_8037C3F0
lbl_8037C3DC:
/* 8037C3DC 0037803C  4B FE C0 E9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8037C3E0 00378040  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8037C3E4 00378044  7C 00 00 34 */	cntlzw r0, r0
/* 8037C3E8 00378048  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8037C3EC 0037804C  41 82 FF D8 */	beq lbl_8037C3C4
lbl_8037C3F0:
/* 8037C3F0 00378050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C3F4 00378054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C3F8 00378058  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037C3FC 0037805C  7C 08 03 A6 */	mtlr r0
/* 8037C400 00378060  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C404 00378064  4E 80 00 20 */	blr

.global __sinit_$3snd_SoundSystem_cpp
__sinit_$3snd_SoundSystem_cpp:
/* 8037C408 00378068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C40C 0037806C  7C 08 02 A6 */	mflr r0
/* 8037C410 00378070  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C414 00378074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C418 00378078  3F E0 80 62 */	lis r31, lbl_80621D10@ha
/* 8037C41C 0037807C  38 7F 1D 10 */	addi r3, r31, lbl_80621D10@l
/* 8037C420 00378080  48 00 3B E9 */	bl __ct__Q44nw4r3snd6detail10TaskThreadFv
/* 8037C424 00378084  3C 80 80 38 */	lis r4, __dt__Q44nw4r3snd6detail10TaskThreadFv@ha
/* 8037C428 00378088  3C A0 80 62 */	lis r5, lbl_80621D00@ha
/* 8037C42C 0037808C  38 7F 1D 10 */	addi r3, r31, 0x1d10
/* 8037C430 00378090  38 84 00 1C */	addi r4, r4, __dt__Q44nw4r3snd6detail10TaskThreadFv@l
/* 8037C434 00378094  38 A5 1D 00 */	addi r5, r5, lbl_80621D00@l
/* 8037C438 00378098  4B E4 A8 11 */	bl __register_global_object_tmp
/* 8037C43C 0037809C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C440 003780A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C444 003780A4  7C 08 03 A6 */	mtlr r0
/* 8037C448 003780A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C44C 003780AC  4E 80 00 20 */	blr
