.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DWC_Init
DWC_Init:
/* 8031C598 003181F8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8031C59C 003181FC  7C 08 02 A6 */	mflr r0
/* 8031C5A0 00318200  90 01 01 24 */	stw r0, 0x124(r1)
/* 8031C5A4 00318204  39 61 01 20 */	addi r11, r1, 0x120
/* 8031C5A8 00318208  4B EA AB 7D */	bl _savegpr_26
/* 8031C5AC 0031820C  3F C0 80 44 */	lis r30, lbl_80446718@ha
/* 8031C5B0 00318210  7C 7A 1B 78 */	mr r26, r3
/* 8031C5B4 00318214  7C 9F 23 78 */	mr r31, r4
/* 8031C5B8 00318218  7C BB 2B 78 */	mr r27, r5
/* 8031C5BC 0031821C  7C DC 33 78 */	mr r28, r6
/* 8031C5C0 00318220  7C FD 3B 78 */	mr r29, r7
/* 8031C5C4 00318224  3B DE 67 18 */	addi r30, r30, lbl_80446718@l
/* 8031C5C8 00318228  38 6D 8D 30 */	addi r3, r13, lbl_8063DFF0-_SDA_BASE_
/* 8031C5CC 0031822C  38 8D 8D 30 */	addi r4, r13, lbl_8063DFF0-_SDA_BASE_
/* 8031C5D0 00318230  4B EB 1E 7D */	bl strcmp
/* 8031C5D4 00318234  2C 03 00 00 */	cmpwi r3, 0
/* 8031C5D8 00318238  40 82 00 10 */	bne lbl_8031C5E8
/* 8031C5DC 0031823C  38 7E 00 00 */	addi r3, r30, 0
/* 8031C5E0 00318240  4B F4 D0 71 */	bl OSRegisterVersion
/* 8031C5E4 00318244  48 00 00 2C */	b lbl_8031C610
lbl_8031C5E8:
/* 8031C5E8 00318248  38 9E 00 48 */	addi r4, r30, 0x48
/* 8031C5EC 0031824C  38 6D 8D 30 */	addi r3, r13, lbl_8063DFF0-_SDA_BASE_
/* 8031C5F0 00318250  4B EB 1E 5D */	bl strcmp
/* 8031C5F4 00318254  2C 03 00 00 */	cmpwi r3, 0
/* 8031C5F8 00318258  40 82 00 10 */	bne lbl_8031C608
/* 8031C5FC 0031825C  38 7E 00 54 */	addi r3, r30, 0x54
/* 8031C600 00318260  4B F4 D0 51 */	bl OSRegisterVersion
/* 8031C604 00318264  48 00 00 0C */	b lbl_8031C610
lbl_8031C608:
/* 8031C608 00318268  38 7E 00 00 */	addi r3, r30, 0
/* 8031C60C 0031826C  4B F4 D0 45 */	bl OSRegisterVersion
lbl_8031C610:
/* 8031C610 00318270  7F 83 E3 78 */	mr r3, r28
/* 8031C614 00318274  7F A4 EB 78 */	mr r4, r29
/* 8031C618 00318278  48 00 02 C9 */	bl DWCi_SetMemFunc
/* 8031C61C 0031827C  7F 43 D3 78 */	mr r3, r26
/* 8031C620 00318280  48 01 79 FD */	bl func_8033401C
/* 8031C624 00318284  93 6D B0 18 */	stw r27, lbl_806402D8-_SDA_BASE_(r13)
/* 8031C628 00318288  48 01 52 CD */	bl func_803318F4
/* 8031C62C 0031828C  3C 60 80 32 */	lis r3, DWCi_GsMalloc@ha
/* 8031C630 00318290  3C 80 80 32 */	lis r4, DWCi_GsFree@ha
/* 8031C634 00318294  3C A0 80 32 */	lis r5, DWCi_GsRealloc@ha
/* 8031C638 00318298  3C C0 80 32 */	lis r6, DWCi_GsMemalign@ha
/* 8031C63C 0031829C  38 63 C9 A4 */	addi r3, r3, DWCi_GsMalloc@l
/* 8031C640 003182A0  38 84 CA B4 */	addi r4, r4, DWCi_GsFree@l
/* 8031C644 003182A4  38 A5 C9 F8 */	addi r5, r5, DWCi_GsRealloc@l
/* 8031C648 003182A8  38 C6 CA D8 */	addi r6, r6, DWCi_GsMemalign@l
/* 8031C64C 003182AC  48 01 CC AD */	bl gsiMemoryCallbacksSet
/* 8031C650 003182B0  3C 60 80 62 */	lis r3, lbl_80620DE8@ha
/* 8031C654 003182B4  7F E4 FB 78 */	mr r4, r31
/* 8031C658 003182B8  38 63 0D E8 */	addi r3, r3, lbl_80620DE8@l
/* 8031C65C 003182BC  4B EB 1C 75 */	bl strcpy
/* 8031C660 003182C0  2C 1A 00 00 */	cmpwi r26, 0
/* 8031C664 003182C4  40 82 00 14 */	bne lbl_8031C678
/* 8031C668 003182C8  3C 60 80 45 */	lis r3, lbl_8044C338@ha
/* 8031C66C 003182CC  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 8031C670 003182D0  38 63 C3 38 */	addi r3, r3, lbl_8044C338@l
/* 8031C674 003182D4  4B EB 1C 5D */	bl strcpy
lbl_8031C678:
/* 8031C678 003182D8  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8031C67C 003182DC  48 01 BA 5D */	bl gethostbyname
/* 8031C680 003182E0  2C 03 00 00 */	cmpwi r3, 0
/* 8031C684 003182E4  41 82 01 E0 */	beq lbl_8031C864
/* 8031C688 003182E8  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 8031C68C 003182EC  48 01 BA 4D */	bl gethostbyname
/* 8031C690 003182F0  2C 03 00 00 */	cmpwi r3, 0
/* 8031C694 003182F4  41 82 01 D0 */	beq lbl_8031C864
/* 8031C698 003182F8  38 7E 00 EC */	addi r3, r30, 0xec
/* 8031C69C 003182FC  48 01 BA 3D */	bl gethostbyname
/* 8031C6A0 00318300  2C 03 00 00 */	cmpwi r3, 0
/* 8031C6A4 00318304  41 82 01 C0 */	beq lbl_8031C864
/* 8031C6A8 00318308  38 7E 01 0C */	addi r3, r30, 0x10c
/* 8031C6AC 0031830C  48 01 BA 2D */	bl gethostbyname
/* 8031C6B0 00318310  2C 03 00 00 */	cmpwi r3, 0
/* 8031C6B4 00318314  41 82 01 B0 */	beq lbl_8031C864
/* 8031C6B8 00318318  2C 1F 00 00 */	cmpwi r31, 0
/* 8031C6BC 0031831C  41 82 01 A0 */	beq lbl_8031C85C
/* 8031C6C0 00318320  7F E5 FB 78 */	mr r5, r31
/* 8031C6C4 00318324  38 61 00 08 */	addi r3, r1, 8
/* 8031C6C8 00318328  38 9E 01 2C */	addi r4, r30, 0x12c
/* 8031C6CC 0031832C  4C C6 31 82 */	crclr 6
/* 8031C6D0 00318330  4B EB 04 2D */	bl sprintf
/* 8031C6D4 00318334  38 61 00 08 */	addi r3, r1, 8
/* 8031C6D8 00318338  48 01 BA 01 */	bl gethostbyname
/* 8031C6DC 0031833C  2C 03 00 00 */	cmpwi r3, 0
/* 8031C6E0 00318340  41 82 01 84 */	beq lbl_8031C864
/* 8031C6E4 00318344  7F E5 FB 78 */	mr r5, r31
/* 8031C6E8 00318348  38 61 00 08 */	addi r3, r1, 8
/* 8031C6EC 0031834C  38 9E 01 50 */	addi r4, r30, 0x150
/* 8031C6F0 00318350  4C C6 31 82 */	crclr 6
/* 8031C6F4 00318354  4B EB 04 09 */	bl sprintf
/* 8031C6F8 00318358  38 61 00 08 */	addi r3, r1, 8
/* 8031C6FC 0031835C  48 01 B9 DD */	bl gethostbyname
/* 8031C700 00318360  2C 03 00 00 */	cmpwi r3, 0
/* 8031C704 00318364  41 82 01 60 */	beq lbl_8031C864
/* 8031C708 00318368  7F E5 FB 78 */	mr r5, r31
/* 8031C70C 0031836C  38 61 00 08 */	addi r3, r1, 8
/* 8031C710 00318370  38 9E 01 70 */	addi r4, r30, 0x170
/* 8031C714 00318374  4C C6 31 82 */	crclr 6
/* 8031C718 00318378  4B EB 03 E5 */	bl sprintf
/* 8031C71C 0031837C  38 61 00 08 */	addi r3, r1, 8
/* 8031C720 00318380  48 01 B9 B9 */	bl gethostbyname
/* 8031C724 00318384  2C 03 00 00 */	cmpwi r3, 0
/* 8031C728 00318388  41 82 01 3C */	beq lbl_8031C864
/* 8031C72C 0031838C  7F E5 FB 78 */	mr r5, r31
/* 8031C730 00318390  38 61 00 08 */	addi r3, r1, 8
/* 8031C734 00318394  38 9E 01 90 */	addi r4, r30, 0x190
/* 8031C738 00318398  4C C6 31 82 */	crclr 6
/* 8031C73C 0031839C  4B EB 03 C1 */	bl sprintf
/* 8031C740 003183A0  38 61 00 08 */	addi r3, r1, 8
/* 8031C744 003183A4  48 01 B9 95 */	bl gethostbyname
/* 8031C748 003183A8  2C 03 00 00 */	cmpwi r3, 0
/* 8031C74C 003183AC  41 82 01 18 */	beq lbl_8031C864
/* 8031C750 003183B0  7F E5 FB 78 */	mr r5, r31
/* 8031C754 003183B4  38 61 00 08 */	addi r3, r1, 8
/* 8031C758 003183B8  38 9E 01 B0 */	addi r4, r30, 0x1b0
/* 8031C75C 003183BC  4C C6 31 82 */	crclr 6
/* 8031C760 003183C0  4B EB 03 9D */	bl sprintf
/* 8031C764 003183C4  38 61 00 08 */	addi r3, r1, 8
/* 8031C768 003183C8  48 01 B9 71 */	bl gethostbyname
/* 8031C76C 003183CC  2C 03 00 00 */	cmpwi r3, 0
/* 8031C770 003183D0  41 82 00 F4 */	beq lbl_8031C864
/* 8031C774 003183D4  7F E5 FB 78 */	mr r5, r31
/* 8031C778 003183D8  38 61 00 08 */	addi r3, r1, 8
/* 8031C77C 003183DC  38 9E 01 D0 */	addi r4, r30, 0x1d0
/* 8031C780 003183E0  4C C6 31 82 */	crclr 6
/* 8031C784 003183E4  4B EB 03 79 */	bl sprintf
/* 8031C788 003183E8  38 61 00 08 */	addi r3, r1, 8
/* 8031C78C 003183EC  48 01 B9 4D */	bl gethostbyname
/* 8031C790 003183F0  2C 03 00 00 */	cmpwi r3, 0
/* 8031C794 003183F4  41 82 00 D0 */	beq lbl_8031C864
/* 8031C798 003183F8  7F E5 FB 78 */	mr r5, r31
/* 8031C79C 003183FC  38 61 00 08 */	addi r3, r1, 8
/* 8031C7A0 00318400  38 9E 01 F4 */	addi r4, r30, 0x1f4
/* 8031C7A4 00318404  4C C6 31 82 */	crclr 6
/* 8031C7A8 00318408  4B EB 03 55 */	bl sprintf
/* 8031C7AC 0031840C  38 61 00 08 */	addi r3, r1, 8
/* 8031C7B0 00318410  48 01 B9 29 */	bl gethostbyname
/* 8031C7B4 00318414  2C 03 00 00 */	cmpwi r3, 0
/* 8031C7B8 00318418  41 82 00 AC */	beq lbl_8031C864
/* 8031C7BC 0031841C  3C 80 80 42 */	lis r4, lbl_80422D48@ha
/* 8031C7C0 00318420  3C 60 9C D0 */	lis r3, 0x9CCF9319@ha
/* 8031C7C4 00318424  38 84 2D 48 */	addi r4, r4, lbl_80422D48@l
/* 8031C7C8 00318428  7F E7 FB 78 */	mr r7, r31
/* 8031C7CC 0031842C  80 C4 00 38 */	lwz r6, 0x38(r4)
/* 8031C7D0 00318430  38 A3 93 19 */	addi r5, r3, 0x9CCF9319@l
/* 8031C7D4 00318434  39 00 00 00 */	li r8, 0
/* 8031C7D8 00318438  48 00 00 3C */	b lbl_8031C814
lbl_8031C7DC:
/* 8031C7DC 0031843C  7C 88 29 D6 */	mullw r4, r8, r5
/* 8031C7E0 00318440  7C 68 07 75 */	extsb. r8, r3
/* 8031C7E4 00318444  38 00 00 00 */	li r0, 0
/* 8031C7E8 00318448  41 80 00 0C */	blt lbl_8031C7F4
/* 8031C7EC 0031844C  2C 08 01 00 */	cmpwi r8, 0x100
/* 8031C7F0 00318450  41 80 00 08 */	blt lbl_8031C7F8
lbl_8031C7F4:
/* 8031C7F4 00318454  38 00 00 01 */	li r0, 1
lbl_8031C7F8:
/* 8031C7F8 00318458  2C 00 00 00 */	cmpwi r0, 0
/* 8031C7FC 0031845C  41 82 00 08 */	beq lbl_8031C804
/* 8031C800 00318460  48 00 00 0C */	b lbl_8031C80C
lbl_8031C804:
/* 8031C804 00318464  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8031C808 00318468  7D 03 40 AE */	lbzx r8, r3, r8
lbl_8031C80C:
/* 8031C80C 0031846C  7D 04 42 14 */	add r8, r4, r8
/* 8031C810 00318470  38 E7 00 01 */	addi r7, r7, 1
lbl_8031C814:
/* 8031C814 00318474  88 67 00 00 */	lbz r3, 0(r7)
/* 8031C818 00318478  7C 60 07 75 */	extsb. r0, r3
/* 8031C81C 0031847C  40 82 FF C0 */	bne lbl_8031C7DC
/* 8031C820 00318480  3C 60 CC CD */	lis r3, 0xCCCCCCCD@ha
/* 8031C824 00318484  7F E5 FB 78 */	mr r5, r31
/* 8031C828 00318488  38 03 CC CD */	addi r0, r3, 0xCCCCCCCD@l
/* 8031C82C 0031848C  38 9E 02 18 */	addi r4, r30, 0x218
/* 8031C830 00318490  7C 00 40 16 */	mulhwu r0, r0, r8
/* 8031C834 00318494  38 61 00 08 */	addi r3, r1, 8
/* 8031C838 00318498  54 00 E1 3E */	srwi r0, r0, 4
/* 8031C83C 0031849C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8031C840 003184A0  7C C0 40 50 */	subf r6, r0, r8
/* 8031C844 003184A4  4C C6 31 82 */	crclr 6
/* 8031C848 003184A8  4B EB 02 B5 */	bl sprintf
/* 8031C84C 003184AC  38 61 00 08 */	addi r3, r1, 8
/* 8031C850 003184B0  48 01 B8 89 */	bl gethostbyname
/* 8031C854 003184B4  2C 03 00 00 */	cmpwi r3, 0
/* 8031C858 003184B8  41 82 00 0C */	beq lbl_8031C864
lbl_8031C85C:
/* 8031C85C 003184BC  38 60 00 00 */	li r3, 0
/* 8031C860 003184C0  48 00 00 18 */	b lbl_8031C878
lbl_8031C864:
/* 8031C864 003184C4  38 9E 02 34 */	addi r4, r30, 0x234
/* 8031C868 003184C8  38 60 00 08 */	li r3, 8
/* 8031C86C 003184CC  4C C6 31 82 */	crclr 6
/* 8031C870 003184D0  48 00 02 C5 */	bl DWC_Printf
/* 8031C874 003184D4  38 60 FF FF */	li r3, -1
lbl_8031C878:
/* 8031C878 003184D8  39 61 01 20 */	addi r11, r1, 0x120
/* 8031C87C 003184DC  4B EA A8 F5 */	bl _restgpr_26
/* 8031C880 003184E0  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8031C884 003184E4  7C 08 03 A6 */	mtlr r0
/* 8031C888 003184E8  38 21 01 20 */	addi r1, r1, 0x120
/* 8031C88C 003184EC  4E 80 00 20 */	blr

.global DWC_Shutdown
DWC_Shutdown:
/* 8031C890 003184F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031C894 003184F4  7C 08 02 A6 */	mflr r0
/* 8031C898 003184F8  3C 60 80 32 */	lis r3, DWCi_GsMalloc@ha
/* 8031C89C 003184FC  3C 80 80 32 */	lis r4, DWCi_GsFree@ha
/* 8031C8A0 00318500  3C A0 80 32 */	lis r5, DWCi_GsRealloc@ha
/* 8031C8A4 00318504  3C C0 80 32 */	lis r6, DWCi_GsMemalign@ha
/* 8031C8A8 00318508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031C8AC 0031850C  38 63 C9 A4 */	addi r3, r3, DWCi_GsMalloc@l
/* 8031C8B0 00318510  38 84 CA B4 */	addi r4, r4, DWCi_GsFree@l
/* 8031C8B4 00318514  38 A5 C9 F8 */	addi r5, r5, DWCi_GsRealloc@l
/* 8031C8B8 00318518  38 C6 CA D8 */	addi r6, r6, DWCi_GsMemalign@l
/* 8031C8BC 0031851C  48 01 CA 3D */	bl gsiMemoryCallbacksSet
/* 8031C8C0 00318520  38 6D 8D 38 */	addi r3, r13, lbl_8063DFF8-_SDA_BASE_
/* 8031C8C4 00318524  48 01 B8 15 */	bl gethostbyname
/* 8031C8C8 00318528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031C8CC 0031852C  7C 08 03 A6 */	mtlr r0
/* 8031C8D0 00318530  38 21 00 10 */	addi r1, r1, 0x10
/* 8031C8D4 00318534  4E 80 00 20 */	blr

.global DWCi_GetGamecode
DWCi_GetGamecode:
/* 8031C8D8 00318538  80 6D B0 18 */	lwz r3, lbl_806402D8-_SDA_BASE_(r13)
/* 8031C8DC 0031853C  4E 80 00 20 */	blr