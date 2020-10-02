.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager$0Q44nw4r3snd6detail9WaveSound$1
__ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager$0Q44nw4r3snd6detail9WaveSound$1:
/* 8038364C 0037F2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383650 0037F2B0  7C 08 02 A6 */	mflr r0
/* 80383654 0037F2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383658 0037F2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038365C 0037F2BC  7C 9F 23 78 */	mr r31, r4
/* 80383660 0037F2C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80383664 0037F2C4  7C 7E 1B 78 */	mr r30, r3
/* 80383668 0037F2C8  4B FE 99 7D */	bl __ct__Q44nw4r3snd6detail10BasicSoundFv
/* 8038366C 0037F2CC  3C 80 80 45 */	lis r4, lbl_8044D050@ha
/* 80383670 0037F2D0  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 80383674 0037F2D4  38 84 D0 50 */	addi r4, r4, lbl_8044D050@l
/* 80383678 0037F2D8  90 9E 00 00 */	stw r4, 0(r30)
/* 8038367C 0037F2DC  48 00 06 A9 */	bl __ct__Q44nw4r3snd6detail9WsdPlayerFv
/* 80383680 0037F2E0  38 00 00 00 */	li r0, 0
/* 80383684 0037F2E4  93 FE 01 CC */	stw r31, 0x1cc(r30)
/* 80383688 0037F2E8  7F C3 F3 78 */	mr r3, r30
/* 8038368C 0037F2EC  90 1E 01 C8 */	stw r0, 0x1c8(r30)
/* 80383690 0037F2F0  98 1E 01 D0 */	stb r0, 0x1d0(r30)
/* 80383694 0037F2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80383698 0037F2F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038369C 0037F2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803836A0 0037F300  7C 08 03 A6 */	mtlr r0
/* 803836A4 0037F304  38 21 00 10 */	addi r1, r1, 0x10
/* 803836A8 0037F308  4E 80 00 20 */	blr 

.global __dt__Q44nw4r3snd6detail9WsdPlayerFv
__dt__Q44nw4r3snd6detail9WsdPlayerFv:
/* 803836AC 0037F30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803836B0 0037F310  7C 08 02 A6 */	mflr r0
/* 803836B4 0037F314  2C 03 00 00 */	cmpwi r3, 0
/* 803836B8 0037F318  90 01 00 14 */	stw r0, 0x14(r1)
/* 803836BC 0037F31C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803836C0 0037F320  7C 7F 1B 78 */	mr r31, r3
/* 803836C4 0037F324  41 82 00 10 */	beq lbl_803836D4
/* 803836C8 0037F328  2C 04 00 00 */	cmpwi r4, 0
/* 803836CC 0037F32C  40 81 00 08 */	ble lbl_803836D4
/* 803836D0 0037F330  4B E5 73 E9 */	bl func_801DAAB8
lbl_803836D4:
/* 803836D4 0037F334  7F E3 FB 78 */	mr r3, r31
/* 803836D8 0037F338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803836DC 0037F33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803836E0 0037F340  7C 08 03 A6 */	mtlr r0
/* 803836E4 0037F344  38 21 00 10 */	addi r1, r1, 0x10
/* 803836E8 0037F348  4E 80 00 20 */	blr 

.global Prepare__Q44nw4r3snd6detail9WaveSoundFPCvlQ54nw4r3snd6detail9WsdPlayer15StartOffsetTypeliPCQ54nw4r3snd6detail9WsdPlayer11WsdCallbackUl
Prepare__Q44nw4r3snd6detail9WaveSoundFPCvlQ54nw4r3snd6detail9WsdPlayer15StartOffsetTypeliPCQ54nw4r3snd6detail9WsdPlayer11WsdCallbackUl:
/* 803836EC 0037F34C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803836F0 0037F350  7C 08 02 A6 */	mflr r0
/* 803836F4 0037F354  90 01 00 34 */	stw r0, 0x34(r1)
/* 803836F8 0037F358  39 61 00 30 */	addi r11, r1, 0x30
/* 803836FC 0037F35C  4B E4 3A 21 */	bl _savegpr_24
/* 80383700 0037F360  81 83 00 00 */	lwz r12, 0(r3)
/* 80383704 0037F364  7C 78 1B 78 */	mr r24, r3
/* 80383708 0037F368  7C 99 23 78 */	mr r25, r4
/* 8038370C 0037F36C  7C BA 2B 78 */	mr r26, r5
/* 80383710 0037F370  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80383714 0037F374  7C DB 33 78 */	mr r27, r6
/* 80383718 0037F378  7C FC 3B 78 */	mr r28, r7
/* 8038371C 0037F37C  7D 1D 43 78 */	mr r29, r8
/* 80383720 0037F380  7D 3E 4B 78 */	mr r30, r9
/* 80383724 0037F384  7D 5F 53 78 */	mr r31, r10
/* 80383728 0037F388  7D 89 03 A6 */	mtctr r12
/* 8038372C 0037F38C  4E 80 04 21 */	bctrl 
/* 80383730 0037F390  7F 24 CB 78 */	mr r4, r25
/* 80383734 0037F394  7F 45 D3 78 */	mr r5, r26
/* 80383738 0037F398  7F 66 DB 78 */	mr r6, r27
/* 8038373C 0037F39C  7F 87 E3 78 */	mr r7, r28
/* 80383740 0037F3A0  7F A8 EB 78 */	mr r8, r29
/* 80383744 0037F3A4  7F C9 F3 78 */	mr r9, r30
/* 80383748 0037F3A8  7F EA FB 78 */	mr r10, r31
/* 8038374C 0037F3AC  38 78 00 D8 */	addi r3, r24, 0xd8
/* 80383750 0037F3B0  48 00 06 F1 */	bl Prepare__Q44nw4r3snd6detail9WsdPlayerFPCviQ54nw4r3snd6detail9WsdPlayer15StartOffsetTypeiiPCQ54nw4r3snd6detail9WsdPlayer11WsdCallbackUl
/* 80383754 0037F3B4  2C 03 00 00 */	cmpwi r3, 0
/* 80383758 0037F3B8  40 82 00 0C */	bne lbl_80383764
/* 8038375C 0037F3BC  38 60 00 00 */	li r3, 0
/* 80383760 0037F3C0  48 00 00 10 */	b lbl_80383770
lbl_80383764:
/* 80383764 0037F3C4  38 00 00 01 */	li r0, 1
/* 80383768 0037F3C8  38 60 00 01 */	li r3, 1
/* 8038376C 0037F3CC  98 18 01 D0 */	stb r0, 0x1d0(r24)
lbl_80383770:
/* 80383770 0037F3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80383774 0037F3D4  4B E4 39 F5 */	bl _restgpr_24
/* 80383778 0037F3D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038377C 0037F3DC  7C 08 03 A6 */	mtlr r0
/* 80383780 0037F3E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80383784 0037F3E4  4E 80 00 20 */	blr 

.global Shutdown__Q44nw4r3snd6detail9WaveSoundFv
Shutdown__Q44nw4r3snd6detail9WaveSoundFv:
/* 80383788 0037F3E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038378C 0037F3EC  7C 08 02 A6 */	mflr r0
/* 80383790 0037F3F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383794 0037F3F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80383798 0037F3F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038379C 0037F3FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803837A0 0037F400  7C 7D 1B 78 */	mr r29, r3
/* 803837A4 0037F404  4B FE A4 D9 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 803837A8 0037F408  83 DD 01 CC */	lwz r30, 0x1cc(r29)
/* 803837AC 0037F40C  3B FE 00 10 */	addi r31, r30, 0x10
/* 803837B0 0037F410  7F E3 FB 78 */	mr r3, r31
/* 803837B4 0037F414  4B EE C1 95 */	bl OSLockMutex
/* 803837B8 0037F418  80 1E 00 04 */	lwz r0, 4(r30)
/* 803837BC 0037F41C  2C 00 00 00 */	cmpwi r0, 0
/* 803837C0 0037F420  40 82 00 10 */	bne lbl_803837D0
/* 803837C4 0037F424  7F E3 FB 78 */	mr r3, r31
/* 803837C8 0037F428  4B EE C2 5D */	bl OSUnlockMutex
/* 803837CC 0037F42C  48 00 00 3C */	b lbl_80383808
lbl_803837D0:
/* 803837D0 0037F430  38 7E 00 04 */	addi r3, r30, 4
/* 803837D4 0037F434  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 803837D8 0037F438  4B FD F4 9D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 803837DC 0037F43C  81 9D 00 00 */	lwz r12, 0(r29)
/* 803837E0 0037F440  7F A3 EB 78 */	mr r3, r29
/* 803837E4 0037F444  38 80 FF FF */	li r4, -1
/* 803837E8 0037F448  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803837EC 0037F44C  7D 89 03 A6 */	mtctr r12
/* 803837F0 0037F450  4E 80 04 21 */	bctrl 
/* 803837F4 0037F454  7F C3 F3 78 */	mr r3, r30
/* 803837F8 0037F458  7F A4 EB 78 */	mr r4, r29
/* 803837FC 0037F45C  4B FE E3 B9 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 80383800 0037F460  7F E3 FB 78 */	mr r3, r31
/* 80383804 0037F464  4B EE C2 21 */	bl OSUnlockMutex
lbl_80383808:
/* 80383808 0037F468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038380C 0037F46C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80383810 0037F470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80383814 0037F474  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80383818 0037F478  7C 08 03 A6 */	mtlr r0
/* 8038381C 0037F47C  38 21 00 20 */	addi r1, r1, 0x20
/* 80383820 0037F480  4E 80 00 20 */	blr 

.global __dt__Q44nw4r3snd6detail9WaveSoundFv
__dt__Q44nw4r3snd6detail9WaveSoundFv:
/* 80383824 0037F484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383828 0037F488  7C 08 02 A6 */	mflr r0
/* 8038382C 0037F48C  2C 03 00 00 */	cmpwi r3, 0
/* 80383830 0037F490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383834 0037F494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80383838 0037F498  7C 7F 1B 78 */	mr r31, r3
/* 8038383C 0037F49C  41 82 00 10 */	beq lbl_8038384C
/* 80383840 0037F4A0  2C 04 00 00 */	cmpwi r4, 0
/* 80383844 0037F4A4  40 81 00 08 */	ble lbl_8038384C
/* 80383848 0037F4A8  4B E5 72 71 */	bl func_801DAAB8
lbl_8038384C:
/* 8038384C 0037F4AC  7F E3 FB 78 */	mr r3, r31
/* 80383850 0037F4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80383854 0037F4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383858 0037F4B8  7C 08 03 A6 */	mtlr r0
/* 8038385C 0037F4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80383860 0037F4C0  4E 80 00 20 */	blr 

.global SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi
SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi:
/* 80383864 0037F4C4  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80383868 0037F4C8  48 00 09 7C */	b SetChannelPriority__Q44nw4r3snd6detail9WsdPlayerFi

.global SetReleasePriorityFix__Q44nw4r3snd6detail9WaveSoundFb
SetReleasePriorityFix__Q44nw4r3snd6detail9WaveSoundFb:
/* 8038386C 0037F4CC  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80383870 0037F4D0  48 00 09 C8 */	b SetReleasePriorityFix__Q44nw4r3snd6detail9WsdPlayerFb

.global SetPlayerPriority__Q44nw4r3snd6detail9WaveSoundFi
SetPlayerPriority__Q44nw4r3snd6detail9WaveSoundFi:
/* 80383874 0037F4D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383878 0037F4D8  7C 08 02 A6 */	mflr r0
/* 8038387C 0037F4DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383880 0037F4E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80383884 0037F4E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80383888 0037F4E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038388C 0037F4EC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80383890 0037F4F0  7C 7C 1B 78 */	mr r28, r3
/* 80383894 0037F4F4  4B FE A5 59 */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
/* 80383898 0037F4F8  88 7C 00 74 */	lbz r3, 0x74(r28)
/* 8038389C 0037F4FC  80 1C 00 40 */	lwz r0, 0x40(r28)
/* 803838A0 0037F500  7C 63 02 14 */	add r3, r3, r0
/* 803838A4 0037F504  2C 03 00 7F */	cmpwi r3, 0x7f
/* 803838A8 0037F508  40 81 00 0C */	ble lbl_803838B4
/* 803838AC 0037F50C  3B A0 00 7F */	li r29, 0x7f
/* 803838B0 0037F510  48 00 00 0C */	b lbl_803838BC
lbl_803838B4:
/* 803838B4 0037F514  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 803838B8 0037F518  7C 7D 00 78 */	andc r29, r3, r0
lbl_803838BC:
/* 803838BC 0037F51C  83 DC 01 CC */	lwz r30, 0x1cc(r28)
/* 803838C0 0037F520  3B FE 00 10 */	addi r31, r30, 0x10
/* 803838C4 0037F524  7F E3 FB 78 */	mr r3, r31
/* 803838C8 0037F528  4B EE C0 81 */	bl OSLockMutex
/* 803838CC 0037F52C  3B 9C 00 B8 */	addi r28, r28, 0xb8
/* 803838D0 0037F530  38 7E 00 04 */	addi r3, r30, 4
/* 803838D4 0037F534  7F 84 E3 78 */	mr r4, r28
/* 803838D8 0037F538  4B FD F3 9D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 803838DC 0037F53C  80 7E 00 08 */	lwz r3, 8(r30)
/* 803838E0 0037F540  38 1E 00 08 */	addi r0, r30, 8
/* 803838E4 0037F544  48 00 00 34 */	b lbl_80383918
lbl_803838E8:
/* 803838E8 0037F548  88 A3 FF BC */	lbz r5, -0x44(r3)
/* 803838EC 0037F54C  80 83 FF 88 */	lwz r4, -0x78(r3)
/* 803838F0 0037F550  7C A5 22 14 */	add r5, r5, r4
/* 803838F4 0037F554  2C 05 00 7F */	cmpwi r5, 0x7f
/* 803838F8 0037F558  40 81 00 0C */	ble lbl_80383904
/* 803838FC 0037F55C  38 80 00 7F */	li r4, 0x7f
/* 80383900 0037F560  48 00 00 0C */	b lbl_8038390C
lbl_80383904:
/* 80383904 0037F564  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 80383908 0037F568  7C A4 20 78 */	andc r4, r5, r4
lbl_8038390C:
/* 8038390C 0037F56C  7C 1D 20 00 */	cmpw r29, r4
/* 80383910 0037F570  41 80 00 10 */	blt lbl_80383920
/* 80383914 0037F574  80 63 00 00 */	lwz r3, 0(r3)
lbl_80383918:
/* 80383918 0037F578  7C 03 00 40 */	cmplw r3, r0
/* 8038391C 0037F57C  40 82 FF CC */	bne lbl_803838E8
lbl_80383920:
/* 80383920 0037F580  90 61 00 08 */	stw r3, 8(r1)
/* 80383924 0037F584  7F 85 E3 78 */	mr r5, r28
/* 80383928 0037F588  38 7E 00 04 */	addi r3, r30, 4
/* 8038392C 0037F58C  38 81 00 08 */	addi r4, r1, 8
/* 80383930 0037F590  4B FD F3 19 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80383934 0037F594  7F E3 FB 78 */	mr r3, r31
/* 80383938 0037F598  4B EE C0 ED */	bl OSUnlockMutex
/* 8038393C 0037F59C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80383940 0037F5A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80383944 0037F5A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80383948 0037F5A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038394C 0037F5AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80383950 0037F5B0  7C 08 03 A6 */	mtlr r0
/* 80383954 0037F5B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80383958 0037F5B8  4E 80 00 20 */	blr

.global IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv:
/* 8038395C 0037F5BC  80 63 01 C8 */	lwz r3, 0x1c8(r3)
/* 80383960 0037F5C0  7C 03 00 D0 */	neg r0, r3
/* 80383964 0037F5C4  7C 00 1B 78 */	or r0, r0, r3
/* 80383968 0037F5C8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8038396C 0037F5CC  4E 80 00 20 */	blr 

.global DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv:
/* 80383970 0037F5D0  80 63 01 C8 */	lwz r3, 0x1c8(r3)
/* 80383974 0037F5D4  48 00 00 30 */	b DetachSound__Q34nw4r3snd15WaveSoundHandleFv

.global GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv
GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv:
/* 80383978 0037F5D8  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8038397C 0037F5DC  4E 80 00 20 */	blr 

.global GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv
GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv:
/* 80383980 0037F5E0  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80383984 0037F5E4  4E 80 00 20 */	blr 

.global IsPrepared__Q44nw4r3snd6detail9WaveSoundCFv
IsPrepared__Q44nw4r3snd6detail9WaveSoundCFv:
/* 80383988 0037F5E8  88 63 01 D0 */	lbz r3, 0x1d0(r3)
/* 8038398C 0037F5EC  4E 80 00 20 */	blr 

.global GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv
GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv:
/* 80383990 0037F5F0  38 6D B2 A0 */	addi r3, r13, lbl_80640560-_SDA_BASE_
/* 80383994 0037F5F4  4E 80 00 20 */	blr 

.global __sinit_$3snd_WaveSound_cpp
__sinit_$3snd_WaveSound_cpp:
/* 80383998 0037F5F8  38 0D B1 F0 */	addi r0, r13, lbl_806404B0-_SDA_BASE_
/* 8038399C 0037F5FC  90 0D B2 A0 */	stw r0, lbl_80640560-_SDA_BASE_(r13)
/* 803839A0 0037F600  4E 80 00 20 */	blr 
