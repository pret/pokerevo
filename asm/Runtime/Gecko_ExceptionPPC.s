.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __register_fragment
__register_fragment:
/* 801C7830 001C3490  3C A0 80 49 */	lis r5, lbl_8048EAE0@ha
/* 801C7834 001C3494  38 A5 EA E0 */	addi r5, r5, lbl_8048EAE0@l
/* 801C7838 001C3498  80 05 00 08 */	lwz r0, 8(r5)
/* 801C783C 001C349C  2C 00 00 00 */	cmpwi r0, 0
/* 801C7840 001C34A0  40 82 00 1C */	bne lbl_801C785C
/* 801C7844 001C34A4  90 65 00 00 */	stw r3, 0(r5)
/* 801C7848 001C34A8  38 00 00 01 */	li r0, 1
/* 801C784C 001C34AC  38 60 00 00 */	li r3, 0
/* 801C7850 001C34B0  90 85 00 04 */	stw r4, 4(r5)
/* 801C7854 001C34B4  90 05 00 08 */	stw r0, 8(r5)
/* 801C7858 001C34B8  4E 80 00 20 */	blr
lbl_801C785C:
/* 801C785C 001C34BC  38 60 FF FF */	li r3, -1
/* 801C7860 001C34C0  4E 80 00 20 */	blr

.global __unregister_fragment
__unregister_fragment:
/* 801C7864 001C34C4  2C 03 00 00 */	cmpwi r3, 0
/* 801C7868 001C34C8  4D 80 00 20 */	bltlr
/* 801C786C 001C34CC  2C 03 00 01 */	cmpwi r3, 1
/* 801C7870 001C34D0  4C 80 00 20 */	bgelr
/* 801C7874 001C34D4  1C 83 00 0C */	mulli r4, r3, 0xc
/* 801C7878 001C34D8  3C 60 80 49 */	lis r3, lbl_8048EAE0@ha
/* 801C787C 001C34DC  38 00 00 00 */	li r0, 0
/* 801C7880 001C34E0  38 63 EA E0 */	addi r3, r3, lbl_8048EAE0@l
/* 801C7884 001C34E4  7C 03 21 6E */	stwux r0, r3, r4
/* 801C7888 001C34E8  90 03 00 04 */	stw r0, 4(r3)
/* 801C788C 001C34EC  90 03 00 08 */	stw r0, 8(r3)
/* 801C7890 001C34F0  4E 80 00 20 */	blr
