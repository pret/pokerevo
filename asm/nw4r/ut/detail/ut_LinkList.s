.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __dt__Q44nw4r2ut6detail12LinkListImplFv
__dt__Q44nw4r2ut6detail12LinkListImplFv:
/* 80362B38 0035E798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80362B3C 0035E79C  7C 08 02 A6 */	mflr r0
/* 80362B40 0035E7A0  2C 03 00 00 */	cmpwi r3, 0
/* 80362B44 0035E7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80362B48 0035E7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80362B4C 0035E7AC  7C 7F 1B 78 */	mr r31, r3
/* 80362B50 0035E7B0  41 82 00 54 */	beq lbl_80362BA4
/* 80362B54 0035E7B4  80 E3 00 04 */	lwz r7, 4(r3)
/* 80362B58 0035E7B8  38 C3 00 04 */	addi r6, r3, 4
/* 80362B5C 0035E7BC  38 00 00 00 */	li r0, 0
/* 80362B60 0035E7C0  48 00 00 2C */	b lbl_80362B8C
lbl_80362B64:
/* 80362B64 0035E7C4  81 07 00 00 */	lwz r8, 0(r7)
/* 80362B68 0035E7C8  80 A7 00 04 */	lwz r5, 4(r7)
/* 80362B6C 0035E7CC  90 A8 00 04 */	stw r5, 4(r8)
/* 80362B70 0035E7D0  91 05 00 00 */	stw r8, 0(r5)
/* 80362B74 0035E7D4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80362B78 0035E7D8  38 A5 FF FF */	addi r5, r5, -1
/* 80362B7C 0035E7DC  90 A3 00 00 */	stw r5, 0(r3)
/* 80362B80 0035E7E0  90 07 00 00 */	stw r0, 0(r7)
/* 80362B84 0035E7E4  90 07 00 04 */	stw r0, 4(r7)
/* 80362B88 0035E7E8  7D 07 43 78 */	mr r7, r8
lbl_80362B8C:
/* 80362B8C 0035E7EC  7C 07 30 40 */	cmplw r7, r6
/* 80362B90 0035E7F0  40 82 FF D4 */	bne lbl_80362B64
/* 80362B94 0035E7F4  2C 04 00 00 */	cmpwi r4, 0
/* 80362B98 0035E7F8  40 81 00 0C */	ble lbl_80362BA4
/* 80362B9C 0035E7FC  7F E3 FB 78 */	mr r3, r31
/* 80362BA0 0035E800  4B E7 7F 19 */	bl __dl__FPv
lbl_80362BA4:
/* 80362BA4 0035E804  7F E3 FB 78 */	mr r3, r31
/* 80362BA8 0035E808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80362BAC 0035E80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80362BB0 0035E810  7C 08 03 A6 */	mtlr r0
/* 80362BB4 0035E814  38 21 00 10 */	addi r1, r1, 0x10
/* 80362BB8 0035E818  4E 80 00 20 */	blr

.global Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator:
/* 80362BBC 0035E81C  80 C4 00 00 */	lwz r6, 0(r4)
/* 80362BC0 0035E820  38 00 00 00 */	li r0, 0
/* 80362BC4 0035E824  80 A6 00 00 */	lwz r5, 0(r6)
/* 80362BC8 0035E828  48 00 00 2C */	b lbl_80362BF4
lbl_80362BCC:
/* 80362BCC 0035E82C  80 E6 00 00 */	lwz r7, 0(r6)
/* 80362BD0 0035E830  80 86 00 04 */	lwz r4, 4(r6)
/* 80362BD4 0035E834  90 87 00 04 */	stw r4, 4(r7)
/* 80362BD8 0035E838  90 E4 00 00 */	stw r7, 0(r4)
/* 80362BDC 0035E83C  80 83 00 00 */	lwz r4, 0(r3)
/* 80362BE0 0035E840  38 84 FF FF */	addi r4, r4, -1
/* 80362BE4 0035E844  90 83 00 00 */	stw r4, 0(r3)
/* 80362BE8 0035E848  90 06 00 00 */	stw r0, 0(r6)
/* 80362BEC 0035E84C  90 06 00 04 */	stw r0, 4(r6)
/* 80362BF0 0035E850  7C E6 3B 78 */	mr r6, r7
lbl_80362BF4:
/* 80362BF4 0035E854  7C 06 28 40 */	cmplw r6, r5
/* 80362BF8 0035E858  40 82 FF D4 */	bne lbl_80362BCC
/* 80362BFC 0035E85C  7C A3 2B 78 */	mr r3, r5
/* 80362C00 0035E860  4E 80 00 20 */	blr

.global Clear__Q44nw4r2ut6detail12LinkListImplFv
Clear__Q44nw4r2ut6detail12LinkListImplFv:
/* 80362C04 0035E864  80 C3 00 04 */	lwz r6, 4(r3)
/* 80362C08 0035E868  38 A3 00 04 */	addi r5, r3, 4
/* 80362C0C 0035E86C  38 00 00 00 */	li r0, 0
/* 80362C10 0035E870  48 00 00 2C */	b lbl_80362C3C
lbl_80362C14:
/* 80362C14 0035E874  80 E6 00 00 */	lwz r7, 0(r6)
/* 80362C18 0035E878  80 86 00 04 */	lwz r4, 4(r6)
/* 80362C1C 0035E87C  90 87 00 04 */	stw r4, 4(r7)
/* 80362C20 0035E880  90 E4 00 00 */	stw r7, 0(r4)
/* 80362C24 0035E884  80 83 00 00 */	lwz r4, 0(r3)
/* 80362C28 0035E888  38 84 FF FF */	addi r4, r4, -1
/* 80362C2C 0035E88C  90 83 00 00 */	stw r4, 0(r3)
/* 80362C30 0035E890  90 06 00 00 */	stw r0, 0(r6)
/* 80362C34 0035E894  90 06 00 04 */	stw r0, 4(r6)
/* 80362C38 0035E898  7C E6 3B 78 */	mr r6, r7
lbl_80362C3C:
/* 80362C3C 0035E89C  7C 06 28 40 */	cmplw r6, r5
/* 80362C40 0035E8A0  40 82 FF D4 */	bne lbl_80362C14
/* 80362C44 0035E8A4  4E 80 00 20 */	blr

.global Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode:
/* 80362C48 0035E8A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80362C4C 0035E8AC  80 C4 00 04 */	lwz r6, 4(r4)
/* 80362C50 0035E8B0  90 85 00 00 */	stw r4, 0(r5)
/* 80362C54 0035E8B4  90 C5 00 04 */	stw r6, 4(r5)
/* 80362C58 0035E8B8  90 A4 00 04 */	stw r5, 4(r4)
/* 80362C5C 0035E8BC  90 A6 00 00 */	stw r5, 0(r6)
/* 80362C60 0035E8C0  80 83 00 00 */	lwz r4, 0(r3)
/* 80362C64 0035E8C4  38 04 00 01 */	addi r0, r4, 1
/* 80362C68 0035E8C8  90 03 00 00 */	stw r0, 0(r3)
/* 80362C6C 0035E8CC  7C A3 2B 78 */	mr r3, r5
/* 80362C70 0035E8D0  4E 80 00 20 */	blr

.global Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode:
/* 80362C74 0035E8D4  80 C4 00 00 */	lwz r6, 0(r4)
/* 80362C78 0035E8D8  38 00 00 00 */	li r0, 0
/* 80362C7C 0035E8DC  80 A4 00 04 */	lwz r5, 4(r4)
/* 80362C80 0035E8E0  90 A6 00 04 */	stw r5, 4(r6)
/* 80362C84 0035E8E4  90 C5 00 00 */	stw r6, 0(r5)
/* 80362C88 0035E8E8  80 A3 00 00 */	lwz r5, 0(r3)
/* 80362C8C 0035E8EC  38 A5 FF FF */	addi r5, r5, -1
/* 80362C90 0035E8F0  90 A3 00 00 */	stw r5, 0(r3)
/* 80362C94 0035E8F4  7C C3 33 78 */	mr r3, r6
/* 80362C98 0035E8F8  90 04 00 00 */	stw r0, 0(r4)
/* 80362C9C 0035E8FC  90 04 00 04 */	stw r0, 4(r4)
/* 80362CA0 0035E900  4E 80 00 20 */	blr
