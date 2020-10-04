.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __AXGetCurrentProfile
__AXGetCurrentProfile:
/* 80292324 0028DF84  80 0D AC 38 */	lwz r0, lbl_8063FEF8-_SDA_BASE_(r13)
/* 80292328 0028DF88  2C 00 00 00 */	cmpwi r0, 0
/* 8029232C 0028DF8C  41 82 00 30 */	beq lbl_8029235C
/* 80292330 0028DF90  80 AD AC 3C */	lwz r5, lbl_8063FEFC-_SDA_BASE_(r13)
/* 80292334 0028DF94  80 6D AC 40 */	lwz r3, lbl_8063FF00-_SDA_BASE_(r13)
/* 80292338 0028DF98  38 85 00 01 */	addi r4, r5, 1
/* 8029233C 0028DF9C  80 CD AC 44 */	lwz r6, lbl_8063FF04-_SDA_BASE_(r13)
/* 80292340 0028DFA0  7C 04 1B 96 */	divwu r0, r4, r3
/* 80292344 0028DFA4  7C 00 19 D6 */	mullw r0, r0, r3
/* 80292348 0028DFA8  1C 65 00 38 */	mulli r3, r5, 0x38
/* 8029234C 0028DFAC  7C 00 20 50 */	subf r0, r0, r4
/* 80292350 0028DFB0  90 0D AC 3C */	stw r0, lbl_8063FEFC-_SDA_BASE_(r13)
/* 80292354 0028DFB4  7C 66 1A 14 */	add r3, r6, r3
/* 80292358 0028DFB8  4E 80 00 20 */	blr
lbl_8029235C:
/* 8029235C 0028DFBC  38 60 00 00 */	li r3, 0
/* 80292360 0028DFC0  4E 80 00 20 */	blr
