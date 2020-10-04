.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl:
/* 8036C6E4 00368344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C6E8 00368348  7C 08 02 A6 */	mflr r0
/* 8036C6EC 0036834C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C6F0 00368350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036C6F4 00368354  7C 7F 1B 78 */	mr r31, r3
/* 8036C6F8 00368358  7C 83 23 78 */	mr r3, r4
/* 8036C6FC 0036835C  7C A4 2B 78 */	mr r4, r5
/* 8036C700 00368360  38 A0 00 00 */	li r5, 0
/* 8036C704 00368364  4B F2 AD 09 */	bl MEMCreateFrmHeapEx
/* 8036C708 00368368  7C 03 00 D0 */	neg r0, r3
/* 8036C70C 0036836C  90 7F 00 04 */	stw r3, 4(r31)
/* 8036C710 00368370  7C 00 1B 78 */	or r0, r0, r3
/* 8036C714 00368374  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8036C718 00368378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036C71C 0036837C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C720 00368380  7C 08 03 A6 */	mtlr r0
/* 8036C724 00368384  38 21 00 10 */	addi r1, r1, 0x10
/* 8036C728 00368388  4E 80 00 20 */	blr

.global DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv:
/* 8036C72C 0036838C  80 63 00 04 */	lwz r3, 4(r3)
/* 8036C730 00368390  2C 03 00 00 */	cmpwi r3, 0
/* 8036C734 00368394  4D 82 00 20 */	beqlr
/* 8036C738 00368398  4B F2 AD 58 */	b MEMDestroyFrmHeap
/* 8036C73C 0036839C  4E 80 00 20 */	blr

.global HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v:
/* 8036C740 003683A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C744 003683A4  7C 08 02 A6 */	mflr r0
/* 8036C748 003683A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C74C 003683AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036C750 003683B0  7C 7F 1B 78 */	mr r31, r3
/* 8036C754 003683B4  7C 83 23 78 */	mr r3, r4
/* 8036C758 003683B8  7C A4 2B 78 */	mr r4, r5
/* 8036C75C 003683BC  4B F2 9D 5D */	bl func_802964B8
/* 8036C760 003683C0  3C 60 80 37 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 8036C764 003683C4  3C 80 80 37 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 8036C768 003683C8  38 63 C7 BC */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 8036C76C 003683CC  38 84 C8 1C */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 8036C770 003683D0  4B F2 9D 3D */	bl func_802964AC
/* 8036C774 003683D4  93 ED B1 E8 */	stw r31, lbl_806404A8-_SDA_BASE_(r13)
/* 8036C778 003683D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036C77C 003683DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C780 003683E0  7C 08 03 A6 */	mtlr r0
/* 8036C784 003683E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8036C788 003683E8  4E 80 00 20 */	blr

.global RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v:
/* 8036C78C 003683EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C790 003683F0  7C 08 02 A6 */	mflr r0
/* 8036C794 003683F4  7C 83 23 78 */	mr r3, r4
/* 8036C798 003683F8  7C A4 2B 78 */	mr r4, r5
/* 8036C79C 003683FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C7A0 00368400  4B F2 9D 0D */	bl func_802964AC
/* 8036C7A4 00368404  38 00 00 00 */	li r0, 0
/* 8036C7A8 00368408  90 0D B1 E8 */	stw r0, lbl_806404A8-_SDA_BASE_(r13)
/* 8036C7AC 0036840C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C7B0 00368410  7C 08 03 A6 */	mtlr r0
/* 8036C7B4 00368414  38 21 00 10 */	addi r1, r1, 0x10
/* 8036C7B8 00368418  4E 80 00 20 */	blr

.global Alloc__Q44nw4r3snd6detail8AxfxImplFUl
Alloc__Q44nw4r3snd6detail8AxfxImplFUl:
/* 8036C7BC 0036841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C7C0 00368420  7C 08 02 A6 */	mflr r0
/* 8036C7C4 00368424  38 A0 00 04 */	li r5, 4
/* 8036C7C8 00368428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C7CC 0036842C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036C7D0 00368430  7C 7F 1B 78 */	mr r31, r3
/* 8036C7D4 00368434  7F E4 FB 78 */	mr r4, r31
/* 8036C7D8 00368438  80 CD B1 E8 */	lwz r6, lbl_806404A8-_SDA_BASE_(r13)
/* 8036C7DC 0036843C  80 66 00 04 */	lwz r3, 4(r6)
/* 8036C7E0 00368440  4B F2 AC E1 */	bl MEMAllocFromFrmHeapEx
/* 8036C7E4 00368444  80 AD B1 E8 */	lwz r5, lbl_806404A8-_SDA_BASE_(r13)
/* 8036C7E8 00368448  38 1F 00 03 */	addi r0, r31, 3
/* 8036C7EC 0036844C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8036C7F0 00368450  80 85 00 08 */	lwz r4, 8(r5)
/* 8036C7F4 00368454  38 84 00 01 */	addi r4, r4, 1
/* 8036C7F8 00368458  90 85 00 08 */	stw r4, 8(r5)
/* 8036C7FC 0036845C  80 8D B1 EC */	lwz r4, lbl_806404AC-_SDA_BASE_(r13)
/* 8036C800 00368460  7C 04 02 14 */	add r0, r4, r0
/* 8036C804 00368464  90 0D B1 EC */	stw r0, lbl_806404AC-_SDA_BASE_(r13)
/* 8036C808 00368468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036C80C 0036846C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C810 00368470  7C 08 03 A6 */	mtlr r0
/* 8036C814 00368474  38 21 00 10 */	addi r1, r1, 0x10
/* 8036C818 00368478  4E 80 00 20 */	blr

.global Free__Q44nw4r3snd6detail8AxfxImplFPv
Free__Q44nw4r3snd6detail8AxfxImplFPv:
/* 8036C81C 0036847C  80 8D B1 E8 */	lwz r4, lbl_806404A8-_SDA_BASE_(r13)
/* 8036C820 00368480  80 64 00 08 */	lwz r3, 8(r4)
/* 8036C824 00368484  2C 03 00 00 */	cmpwi r3, 0
/* 8036C828 00368488  41 82 00 0C */	beq lbl_8036C834
/* 8036C82C 0036848C  38 03 FF FF */	addi r0, r3, -1
/* 8036C830 00368490  90 04 00 08 */	stw r0, 8(r4)
lbl_8036C834:
/* 8036C834 00368494  80 6D B1 E8 */	lwz r3, lbl_806404A8-_SDA_BASE_(r13)
/* 8036C838 00368498  80 03 00 08 */	lwz r0, 8(r3)
/* 8036C83C 0036849C  2C 00 00 00 */	cmpwi r0, 0
/* 8036C840 003684A0  4C 82 00 20 */	bnelr
/* 8036C844 003684A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8036C848 003684A8  38 80 00 03 */	li r4, 3
/* 8036C84C 003684AC  4B F2 AD 94 */	b MEMFreeToFrmHeap
/* 8036C850 003684B0  4E 80 00 20 */	blr
