.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global MWExitCriticalSection
MWExitCriticalSection:
/* 801D9F18 001D5B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9F1C 001D5B7C  7C 08 02 A6 */	mflr r0
/* 801D9F20 001D5B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9F24 001D5B84  80 63 00 00 */	lwz r3, 0(r3)
/* 801D9F28 001D5B88  48 09 48 5D */	bl OSRestoreInterrupts
/* 801D9F2C 001D5B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9F30 001D5B90  7C 08 03 A6 */	mtlr r0
/* 801D9F34 001D5B94  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9F38 001D5B98  4E 80 00 20 */	blr

.global MWEnterCriticalSection
MWEnterCriticalSection:
/* 801D9F3C 001D5B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9F40 001D5BA0  7C 08 02 A6 */	mflr r0
/* 801D9F44 001D5BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9F48 001D5BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9F4C 001D5BAC  7C 7F 1B 78 */	mr r31, r3
/* 801D9F50 001D5BB0  48 09 48 0D */	bl OSDisableInterrupts
/* 801D9F54 001D5BB4  90 7F 00 00 */	stw r3, 0(r31)
/* 801D9F58 001D5BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9F5C 001D5BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9F60 001D5BC0  7C 08 03 A6 */	mtlr r0
/* 801D9F64 001D5BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9F68 001D5BC8  4E 80 00 20 */	blr

.global MWInitializeCriticalSection
MWInitializeCriticalSection:
/* 801D9F6C 001D5BCC  4E 80 00 20 */	blr
