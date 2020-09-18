.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __init_cpp_exceptions_tmp
__init_cpp_exceptions_tmp: #__init_cpp_exceptions
#causes "runtime sources 'global_destructor_chain.c' and '__init_cpp_exceptions.cpp' both need to be updated to latest
#version.  Please contact Metrowerks support." error
#needs to be split correctly before renaming
/* 801C77C0 001C3420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C77C4 001C3424  7C 08 02 A6 */	mflr r0
/* 801C77C8 001C3428  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C77CC 001C342C  80 0D 83 D8 */	lwz r0, lbl_8063D698-_SDA_BASE_(r13)
/* 801C77D0 001C3430  2C 00 FF FE */	cmpwi r0, -2
/* 801C77D4 001C3434  40 82 00 18 */	bne lbl_801C77EC
/* 801C77D8 001C3438  3C 60 80 00 */	lis r3, lbl_80006948@ha
/* 801C77DC 001C343C  7C 44 13 78 */	mr r4, r2
/* 801C77E0 001C3440  38 63 69 48 */	addi r3, r3, lbl_80006948@l
/* 801C77E4 001C3444  48 00 00 4D */	bl __register_fragment
/* 801C77E8 001C3448  90 6D 83 D8 */	stw r3, lbl_8063D698-_SDA_BASE_(r13)
lbl_801C77EC:
/* 801C77EC 001C344C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C77F0 001C3450  7C 08 03 A6 */	mtlr r0
/* 801C77F4 001C3454  38 21 00 10 */	addi r1, r1, 0x10
/* 801C77F8 001C3458  4E 80 00 20 */	blr

.global __fini_cpp_exceptions_tmp
__fini_cpp_exceptions_tmp: #__fini_cpp_exceptions
#causes "runtime sources 'global_destructor_chain.c' and '__init_cpp_exceptions.cpp' both need to be updated to latest
#version.  Please contact Metrowerks support." error
#needs to be split correctly before renaming
/* 801C77FC 001C345C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C7800 001C3460  7C 08 02 A6 */	mflr r0
/* 801C7804 001C3464  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C7808 001C3468  80 6D 83 D8 */	lwz r3, lbl_8063D698-_SDA_BASE_(r13)
/* 801C780C 001C346C  2C 03 FF FE */	cmpwi r3, -2
/* 801C7810 001C3470  41 82 00 10 */	beq lbl_801C7820
/* 801C7814 001C3474  48 00 00 51 */	bl func_801C7864
/* 801C7818 001C3478  38 00 FF FE */	li r0, -2
/* 801C781C 001C347C  90 0D 83 D8 */	stw r0, lbl_8063D698-_SDA_BASE_(r13)
lbl_801C7820:
/* 801C7820 001C3480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C7824 001C3484  7C 08 03 A6 */	mtlr r0
/* 801C7828 001C3488  38 21 00 10 */	addi r1, r1, 0x10
/* 801C782C 001C348C  4E 80 00 20 */	blr
