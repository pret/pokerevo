.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager$0Q44nw4r3snd6detail9StrmSound$1
__ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager$0Q44nw4r3snd6detail9StrmSound$1:
/* 8037F5D0 0037B230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F5D4 0037B234  7C 08 02 A6 */	mflr r0
/* 8037F5D8 0037B238  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F5DC 0037B23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F5E0 0037B240  7C 9F 23 78 */	mr r31, r4
/* 8037F5E4 0037B244  93 C1 00 08 */	stw r30, 8(r1)
/* 8037F5E8 0037B248  7C 7E 1B 78 */	mr r30, r3
/* 8037F5EC 0037B24C  4B FE D9 F9 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFv
/* 8037F5F0 0037B250  3C 80 80 45 */	lis r4, lbl_8044CF98@ha
/* 8037F5F4 0037B254  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8037F5F8 0037B258  38 84 CF 98 */	addi r4, r4, lbl_8044CF98@l
/* 8037F5FC 0037B25C  90 9E 00 00 */	stw r4, 0(r30)
/* 8037F600 0037B260  4B FF DC B1 */	bl __ct__Q44nw4r3snd6detail10StrmPlayerFv
/* 8037F604 0037B264  38 00 00 00 */	li r0, 0
/* 8037F608 0037B268  93 FE 09 3C */	stw r31, 0x93c(r30)
/* 8037F60C 0037B26C  7F C3 F3 78 */	mr r3, r30
/* 8037F610 0037B270  90 1E 09 38 */	stw r0, 0x938(r30)
/* 8037F614 0037B274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F618 0037B278  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037F61C 0037B27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F620 0037B280  7C 08 03 A6 */	mtlr r0
/* 8037F624 0037B284  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F628 0037B288  4E 80 00 20 */	blr

.global Prepare__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ34nw4r2ut10FileStream
Prepare__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ34nw4r2ut10FileStream:
/* 8037F62C 0037B28C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F630 0037B290  7C 08 02 A6 */	mflr r0
/* 8037F634 0037B294  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F638 0037B298  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F63C 0037B29C  4B E4 7A E9 */	bl _savegpr_26
/* 8037F640 0037B2A0  2C 04 00 00 */	cmpwi r4, 0
/* 8037F644 0037B2A4  7C 7A 1B 78 */	mr r26, r3
/* 8037F648 0037B2A8  7C 9B 23 78 */	mr r27, r4
/* 8037F64C 0037B2AC  7C BC 2B 78 */	mr r28, r5
/* 8037F650 0037B2B0  7C DD 33 78 */	mr r29, r6
/* 8037F654 0037B2B4  7C FE 3B 78 */	mr r30, r7
/* 8037F658 0037B2B8  7D 1F 43 78 */	mr r31, r8
/* 8037F65C 0037B2BC  40 82 00 0C */	bne lbl_8037F668
/* 8037F660 0037B2C0  38 60 00 00 */	li r3, 0
/* 8037F664 0037B2C4  48 00 00 64 */	b lbl_8037F6C8
lbl_8037F668:
/* 8037F668 0037B2C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8037F66C 0037B2CC  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8037F670 0037B2D0  7D 89 03 A6 */	mtctr r12
/* 8037F674 0037B2D4  4E 80 04 21 */	bctrl
/* 8037F678 0037B2D8  7F 64 DB 78 */	mr r4, r27
/* 8037F67C 0037B2DC  38 7A 00 D8 */	addi r3, r26, 0xd8
/* 8037F680 0037B2E0  4B FF DE BD */	bl Setup__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail14StrmBufferPool
/* 8037F684 0037B2E4  2C 03 00 00 */	cmpwi r3, 0
/* 8037F688 0037B2E8  40 82 00 0C */	bne lbl_8037F694
/* 8037F68C 0037B2EC  38 60 00 00 */	li r3, 0
/* 8037F690 0037B2F0  48 00 00 38 */	b lbl_8037F6C8
lbl_8037F694:
/* 8037F694 0037B2F4  7F E4 FB 78 */	mr r4, r31
/* 8037F698 0037B2F8  7F C5 F3 78 */	mr r5, r30
/* 8037F69C 0037B2FC  7F 86 E3 78 */	mr r6, r28
/* 8037F6A0 0037B300  7F A7 EB 78 */	mr r7, r29
/* 8037F6A4 0037B304  38 7A 00 D8 */	addi r3, r26, 0xd8
/* 8037F6A8 0037B308  4B FF DF 95 */	bl Prepare__Q44nw4r3snd6detail10StrmPlayerFPQ34nw4r2ut10FileStreamiQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypei
/* 8037F6AC 0037B30C  2C 03 00 00 */	cmpwi r3, 0
/* 8037F6B0 0037B310  40 82 00 14 */	bne lbl_8037F6C4
/* 8037F6B4 0037B314  38 7A 00 D8 */	addi r3, r26, 0xd8
/* 8037F6B8 0037B318  4B FF DF 1D */	bl Shutdown__Q44nw4r3snd6detail10StrmPlayerFv
/* 8037F6BC 0037B31C  38 60 00 00 */	li r3, 0
/* 8037F6C0 0037B320  48 00 00 08 */	b lbl_8037F6C8
lbl_8037F6C4:
/* 8037F6C4 0037B324  38 60 00 01 */	li r3, 1
lbl_8037F6C8:
/* 8037F6C8 0037B328  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F6CC 0037B32C  4B E4 7A A5 */	bl _restgpr_26
/* 8037F6D0 0037B330  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F6D4 0037B334  7C 08 03 A6 */	mtlr r0
/* 8037F6D8 0037B338  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F6DC 0037B33C  4E 80 00 20 */	blr

.global Shutdown__Q44nw4r3snd6detail9StrmSoundFv
Shutdown__Q44nw4r3snd6detail9StrmSoundFv:
/* 8037F6E0 0037B340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F6E4 0037B344  7C 08 02 A6 */	mflr r0
/* 8037F6E8 0037B348  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F6EC 0037B34C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037F6F0 0037B350  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037F6F4 0037B354  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037F6F8 0037B358  7C 7D 1B 78 */	mr r29, r3
/* 8037F6FC 0037B35C  4B FE E5 81 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 8037F700 0037B360  83 DD 09 3C */	lwz r30, 0x93c(r29)
/* 8037F704 0037B364  3B FE 00 10 */	addi r31, r30, 0x10
/* 8037F708 0037B368  7F E3 FB 78 */	mr r3, r31
/* 8037F70C 0037B36C  4B EF 02 3D */	bl func_8026F948
/* 8037F710 0037B370  80 1E 00 04 */	lwz r0, 4(r30)
/* 8037F714 0037B374  2C 00 00 00 */	cmpwi r0, 0
/* 8037F718 0037B378  40 82 00 10 */	bne lbl_8037F728
/* 8037F71C 0037B37C  7F E3 FB 78 */	mr r3, r31
/* 8037F720 0037B380  4B EF 03 05 */	bl func_8026FA24
/* 8037F724 0037B384  48 00 00 3C */	b lbl_8037F760
lbl_8037F728:
/* 8037F728 0037B388  38 7E 00 04 */	addi r3, r30, 4
/* 8037F72C 0037B38C  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 8037F730 0037B390  4B FE 35 45 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8037F734 0037B394  81 9D 00 00 */	lwz r12, 0(r29)
/* 8037F738 0037B398  7F A3 EB 78 */	mr r3, r29
/* 8037F73C 0037B39C  38 80 FF FF */	li r4, -1
/* 8037F740 0037B3A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8037F744 0037B3A4  7D 89 03 A6 */	mtctr r12
/* 8037F748 0037B3A8  4E 80 04 21 */	bctrl
/* 8037F74C 0037B3AC  7F C3 F3 78 */	mr r3, r30
/* 8037F750 0037B3B0  7F A4 EB 78 */	mr r4, r29
/* 8037F754 0037B3B4  4B FF 24 61 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 8037F758 0037B3B8  7F E3 FB 78 */	mr r3, r31
/* 8037F75C 0037B3BC  4B EF 02 C9 */	bl func_8026FA24
lbl_8037F760:
/* 8037F760 0037B3C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F764 0037B3C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037F768 0037B3C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037F76C 0037B3CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037F770 0037B3D0  7C 08 03 A6 */	mtlr r0
/* 8037F774 0037B3D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F778 0037B3D8  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail9StrmSoundFv
__dt__Q44nw4r3snd6detail9StrmSoundFv:
/* 8037F77C 0037B3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F780 0037B3E0  7C 08 02 A6 */	mflr r0
/* 8037F784 0037B3E4  2C 03 00 00 */	cmpwi r3, 0
/* 8037F788 0037B3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F78C 0037B3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F790 0037B3F0  7C 9F 23 78 */	mr r31, r4
/* 8037F794 0037B3F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8037F798 0037B3F8  7C 7E 1B 78 */	mr r30, r3
/* 8037F79C 0037B3FC  41 82 00 20 */	beq lbl_8037F7BC
/* 8037F7A0 0037B400  38 80 FF FF */	li r4, -1
/* 8037F7A4 0037B404  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8037F7A8 0037B408  4B FF DC BD */	bl __dt__Q44nw4r3snd6detail10StrmPlayerFv
/* 8037F7AC 0037B40C  2C 1F 00 00 */	cmpwi r31, 0
/* 8037F7B0 0037B410  40 81 00 0C */	ble lbl_8037F7BC
/* 8037F7B4 0037B414  7F C3 F3 78 */	mr r3, r30
/* 8037F7B8 0037B418  4B E5 B3 01 */	bl func_801DAAB8
lbl_8037F7BC:
/* 8037F7BC 0037B41C  7F C3 F3 78 */	mr r3, r30
/* 8037F7C0 0037B420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F7C4 0037B424  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037F7C8 0037B428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F7CC 0037B42C  7C 08 03 A6 */	mtlr r0
/* 8037F7D0 0037B430  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F7D4 0037B434  4E 80 00 20 */	blr

.global SetPlayerPriority__Q44nw4r3snd6detail9StrmSoundFi
SetPlayerPriority__Q44nw4r3snd6detail9StrmSoundFi:
/* 8037F7D8 0037B438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F7DC 0037B43C  7C 08 02 A6 */	mflr r0
/* 8037F7E0 0037B440  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F7E4 0037B444  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037F7E8 0037B448  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037F7EC 0037B44C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037F7F0 0037B450  93 81 00 10 */	stw r28, 0x10(r1)
/* 8037F7F4 0037B454  7C 7C 1B 78 */	mr r28, r3
/* 8037F7F8 0037B458  4B FE E5 F5 */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
/* 8037F7FC 0037B45C  88 7C 00 74 */	lbz r3, 0x74(r28)
/* 8037F800 0037B460  80 1C 00 40 */	lwz r0, 0x40(r28)
/* 8037F804 0037B464  7C 63 02 14 */	add r3, r3, r0
/* 8037F808 0037B468  2C 03 00 7F */	cmpwi r3, 0x7f
/* 8037F80C 0037B46C  40 81 00 0C */	ble lbl_8037F818
/* 8037F810 0037B470  3B A0 00 7F */	li r29, 0x7f
/* 8037F814 0037B474  48 00 00 0C */	b lbl_8037F820
lbl_8037F818:
/* 8037F818 0037B478  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8037F81C 0037B47C  7C 7D 00 78 */	andc r29, r3, r0
lbl_8037F820:
/* 8037F820 0037B480  83 DC 09 3C */	lwz r30, 0x93c(r28)
/* 8037F824 0037B484  3B FE 00 10 */	addi r31, r30, 0x10
/* 8037F828 0037B488  7F E3 FB 78 */	mr r3, r31
/* 8037F82C 0037B48C  4B EF 01 1D */	bl func_8026F948
/* 8037F830 0037B490  3B 9C 00 B8 */	addi r28, r28, 0xb8
/* 8037F834 0037B494  38 7E 00 04 */	addi r3, r30, 4
/* 8037F838 0037B498  7F 84 E3 78 */	mr r4, r28
/* 8037F83C 0037B49C  4B FE 34 39 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8037F840 0037B4A0  80 7E 00 08 */	lwz r3, 8(r30)
/* 8037F844 0037B4A4  38 1E 00 08 */	addi r0, r30, 8
/* 8037F848 0037B4A8  48 00 00 34 */	b lbl_8037F87C
lbl_8037F84C:
/* 8037F84C 0037B4AC  88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8037F850 0037B4B0  80 83 FF 88 */	lwz r4, -0x78(r3)
/* 8037F854 0037B4B4  7C A5 22 14 */	add r5, r5, r4
/* 8037F858 0037B4B8  2C 05 00 7F */	cmpwi r5, 0x7f
/* 8037F85C 0037B4BC  40 81 00 0C */	ble lbl_8037F868
/* 8037F860 0037B4C0  38 80 00 7F */	li r4, 0x7f
/* 8037F864 0037B4C4  48 00 00 0C */	b lbl_8037F870
lbl_8037F868:
/* 8037F868 0037B4C8  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 8037F86C 0037B4CC  7C A4 20 78 */	andc r4, r5, r4
lbl_8037F870:
/* 8037F870 0037B4D0  7C 1D 20 00 */	cmpw r29, r4
/* 8037F874 0037B4D4  41 80 00 10 */	blt lbl_8037F884
/* 8037F878 0037B4D8  80 63 00 00 */	lwz r3, 0(r3)
lbl_8037F87C:
/* 8037F87C 0037B4DC  7C 03 00 40 */	cmplw r3, r0
/* 8037F880 0037B4E0  40 82 FF CC */	bne lbl_8037F84C
lbl_8037F884:
/* 8037F884 0037B4E4  90 61 00 08 */	stw r3, 8(r1)
/* 8037F888 0037B4E8  7F 85 E3 78 */	mr r5, r28
/* 8037F88C 0037B4EC  38 7E 00 04 */	addi r3, r30, 4
/* 8037F890 0037B4F0  38 81 00 08 */	addi r4, r1, 8
/* 8037F894 0037B4F4  4B FE 33 B5 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 8037F898 0037B4F8  7F E3 FB 78 */	mr r3, r31
/* 8037F89C 0037B4FC  4B EF 01 89 */	bl func_8026FA24
/* 8037F8A0 0037B500  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F8A4 0037B504  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037F8A8 0037B508  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037F8AC 0037B50C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037F8B0 0037B510  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8037F8B4 0037B514  7C 08 03 A6 */	mtlr r0
/* 8037F8B8 0037B518  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F8BC 0037B51C  4E 80 00 20 */	blr

.global IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv:
/* 8037F8C0 0037B520  80 63 09 38 */	lwz r3, 0x938(r3)
/* 8037F8C4 0037B524  7C 03 00 D0 */	neg r0, r3
/* 8037F8C8 0037B528  7C 00 1B 78 */	or r0, r0, r3
/* 8037F8CC 0037B52C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8037F8D0 0037B530  4E 80 00 20 */	blr

.global DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv:
/* 8037F8D4 0037B534  80 63 09 38 */	lwz r3, 0x938(r3)
/* 8037F8D8 0037B538  48 00 00 30 */	b lbl_8037F908

.global GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv
GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv:
/* 8037F8DC 0037B53C  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8037F8E0 0037B540  4E 80 00 20 */	blr

.global GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv
GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv:
/* 8037F8E4 0037B544  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8037F8E8 0037B548  4E 80 00 20 */	blr

.global IsPrepared__Q44nw4r3snd6detail9StrmSoundCFv
IsPrepared__Q44nw4r3snd6detail9StrmSoundCFv:
/* 8037F8EC 0037B54C  88 63 01 93 */	lbz r3, 0x193(r3)
/* 8037F8F0 0037B550  4E 80 00 20 */	blr

.global GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv
GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv:
/* 8037F8F4 0037B554  38 6D B2 88 */	addi r3, r13, lbl_80640548-_SDA_BASE_
/* 8037F8F8 0037B558  4E 80 00 20 */	blr

.global __sinit_$3snd_StrmSound_cpp
__sinit_$3snd_StrmSound_cpp:
/* 8037F8FC 0037B55C  38 0D B1 F0 */	addi r0, r13, lbl_806404B0-_SDA_BASE_
/* 8037F900 0037B560  90 0D B2 88 */	stw r0, lbl_80640548-_SDA_BASE_(r13)
/* 8037F904 0037B564  4E 80 00 20 */	blr

lbl_8037F908:
/* 8037F908 0037B568  80 83 00 00 */	lwz r4, 0(r3)
/* 8037F90C 0037B56C  2C 04 00 00 */	cmpwi r4, 0
/* 8037F910 0037B570  41 82 00 18 */	beq lbl_8037F928
/* 8037F914 0037B574  80 04 09 38 */	lwz r0, 0x938(r4)
/* 8037F918 0037B578  7C 00 18 40 */	cmplw r0, r3
/* 8037F91C 0037B57C  40 82 00 0C */	bne lbl_8037F928
/* 8037F920 0037B580  38 00 00 00 */	li r0, 0
/* 8037F924 0037B584  90 04 09 38 */	stw r0, 0x938(r4)
lbl_8037F928:
/* 8037F928 0037B588  80 03 00 00 */	lwz r0, 0(r3)
/* 8037F92C 0037B58C  2C 00 00 00 */	cmpwi r0, 0
/* 8037F930 0037B590  4D 82 00 20 */	beqlr
/* 8037F934 0037B594  38 00 00 00 */	li r0, 0
/* 8037F938 0037B598  90 03 00 00 */	stw r0, 0(r3)
/* 8037F93C 0037B59C  4E 80 00 20 */	blr
