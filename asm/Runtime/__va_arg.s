.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __va_arg
__va_arg:
/* 801C6B80 001C27E0  88 E3 00 00 */	lbz r7, 0(r3)
/* 801C6B84 001C27E4  2C 04 00 03 */	cmpwi r4, 3
/* 801C6B88 001C27E8  7C 66 1B 78 */	mr r6, r3
/* 801C6B8C 001C27EC  38 00 00 08 */	li r0, 8
/* 801C6B90 001C27F0  7C E7 07 74 */	extsb r7, r7
/* 801C6B94 001C27F4  39 00 00 04 */	li r8, 4
/* 801C6B98 001C27F8  39 20 00 01 */	li r9, 1
/* 801C6B9C 001C27FC  38 A0 00 00 */	li r5, 0
/* 801C6BA0 001C2800  39 40 00 00 */	li r10, 0
/* 801C6BA4 001C2804  39 60 00 04 */	li r11, 4
/* 801C6BA8 001C2808  40 82 00 1C */	bne lbl_801C6BC4
/* 801C6BAC 001C280C  88 E3 00 01 */	lbz r7, 1(r3)
/* 801C6BB0 001C2810  38 C3 00 01 */	addi r6, r3, 1
/* 801C6BB4 001C2814  39 00 00 08 */	li r8, 8
/* 801C6BB8 001C2818  39 40 00 20 */	li r10, 0x20
/* 801C6BBC 001C281C  7C E7 07 74 */	extsb r7, r7
/* 801C6BC0 001C2820  39 60 00 08 */	li r11, 8
lbl_801C6BC4:
/* 801C6BC4 001C2824  2C 04 00 02 */	cmpwi r4, 2
/* 801C6BC8 001C2828  40 82 00 1C */	bne lbl_801C6BE4
/* 801C6BCC 001C282C  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 801C6BD0 001C2830  39 00 00 08 */	li r8, 8
/* 801C6BD4 001C2834  38 00 00 07 */	li r0, 7
/* 801C6BD8 001C2838  41 82 00 08 */	beq lbl_801C6BE0
/* 801C6BDC 001C283C  38 A0 00 01 */	li r5, 1
lbl_801C6BE0:
/* 801C6BE0 001C2840  39 20 00 02 */	li r9, 2
lbl_801C6BE4:
/* 801C6BE4 001C2844  7C 07 00 00 */	cmpw r7, r0
/* 801C6BE8 001C2848  40 80 00 24 */	bge lbl_801C6C0C
/* 801C6BEC 001C284C  7C E7 2A 14 */	add r7, r7, r5
/* 801C6BF0 001C2850  80 63 00 08 */	lwz r3, 8(r3)
/* 801C6BF4 001C2854  7C A7 59 D6 */	mullw r5, r7, r11
/* 801C6BF8 001C2858  7C 07 4A 14 */	add r0, r7, r9
/* 801C6BFC 001C285C  7C 63 52 14 */	add r3, r3, r10
/* 801C6C00 001C2860  98 06 00 00 */	stb r0, 0(r6)
/* 801C6C04 001C2864  7C A5 1A 14 */	add r5, r5, r3
/* 801C6C08 001C2868  48 00 00 2C */	b lbl_801C6C34
lbl_801C6C0C:
/* 801C6C0C 001C286C  38 A0 00 08 */	li r5, 8
/* 801C6C10 001C2870  38 08 FF FF */	addi r0, r8, -1
/* 801C6C14 001C2874  98 A6 00 00 */	stb r5, 0(r6)
/* 801C6C18 001C2878  7C 06 00 F8 */	nor r6, r0, r0
/* 801C6C1C 001C287C  80 03 00 04 */	lwz r0, 4(r3)
/* 801C6C20 001C2880  7C A8 02 14 */	add r5, r8, r0
/* 801C6C24 001C2884  38 05 FF FF */	addi r0, r5, -1
/* 801C6C28 001C2888  7C C5 00 38 */	and r5, r6, r0
/* 801C6C2C 001C288C  7C 05 42 14 */	add r0, r5, r8
/* 801C6C30 001C2890  90 03 00 04 */	stw r0, 4(r3)
lbl_801C6C34:
/* 801C6C34 001C2894  2C 04 00 00 */	cmpwi r4, 0
/* 801C6C38 001C2898  40 82 00 08 */	bne lbl_801C6C40
/* 801C6C3C 001C289C  80 A5 00 00 */	lwz r5, 0(r5)
lbl_801C6C40:
/* 801C6C40 001C28A0  7C A3 2B 78 */	mr r3, r5
/* 801C6C44 001C28A4  4E 80 00 20 */	blr
