.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global OSInitMutex
OSInitMutex:
/* 8026F910 0026B570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F914 0026B574  7C 08 02 A6 */	mflr r0
/* 8026F918 0026B578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F91C 0026B57C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F920 0026B580  7C 7F 1B 78 */	mr r31, r3
/* 8026F924 0026B584  48 00 19 C5 */	bl OSInitThreadQueue
/* 8026F928 0026B588  38 00 00 00 */	li r0, 0
/* 8026F92C 0026B58C  90 1F 00 08 */	stw r0, 8(r31)
/* 8026F930 0026B590  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8026F934 0026B594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F938 0026B598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F93C 0026B59C  7C 08 03 A6 */	mtlr r0
/* 8026F940 0026B5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F944 0026B5A4  4E 80 00 20 */	blr

.global OSLockMutex
OSLockMutex:
/* 8026F948 0026B5A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F94C 0026B5AC  7C 08 02 A6 */	mflr r0
/* 8026F950 0026B5B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F954 0026B5B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026F958 0026B5B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026F95C 0026B5BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026F960 0026B5C0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8026F964 0026B5C4  7C 7C 1B 78 */	mr r28, r3
/* 8026F968 0026B5C8  4B FF ED F5 */	bl OSDisableInterrupts
/* 8026F96C 0026B5CC  7C 7D 1B 78 */	mr r29, r3
/* 8026F970 0026B5D0  48 00 19 89 */	bl OSGetCurrentThread
/* 8026F974 0026B5D4  7C 7E 1B 78 */	mr r30, r3
/* 8026F978 0026B5D8  3B E0 00 00 */	li r31, 0
lbl_8026F97C:
/* 8026F97C 0026B5DC  80 1C 00 08 */	lwz r0, 8(r28)
/* 8026F980 0026B5E0  2C 00 00 00 */	cmpwi r0, 0
/* 8026F984 0026B5E4  40 82 00 40 */	bne lbl_8026F9C4
/* 8026F988 0026B5E8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8026F98C 0026B5EC  93 DC 00 08 */	stw r30, 8(r28)
/* 8026F990 0026B5F0  38 03 00 01 */	addi r0, r3, 1
/* 8026F994 0026B5F4  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8026F998 0026B5F8  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 8026F99C 0026B5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8026F9A0 0026B600  40 82 00 0C */	bne lbl_8026F9AC
/* 8026F9A4 0026B604  93 9E 02 F4 */	stw r28, 0x2f4(r30)
/* 8026F9A8 0026B608  48 00 00 08 */	b lbl_8026F9B0
lbl_8026F9AC:
/* 8026F9AC 0026B60C  93 83 00 10 */	stw r28, 0x10(r3)
lbl_8026F9B0:
/* 8026F9B0 0026B610  38 00 00 00 */	li r0, 0
/* 8026F9B4 0026B614  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8026F9B8 0026B618  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8026F9BC 0026B61C  93 9E 02 F8 */	stw r28, 0x2f8(r30)
/* 8026F9C0 0026B620  48 00 00 3C */	b lbl_8026F9FC
lbl_8026F9C4:
/* 8026F9C4 0026B624  7C 00 F0 40 */	cmplw r0, r30
/* 8026F9C8 0026B628  40 82 00 14 */	bne lbl_8026F9DC
/* 8026F9CC 0026B62C  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8026F9D0 0026B630  38 03 00 01 */	addi r0, r3, 1
/* 8026F9D4 0026B634  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8026F9D8 0026B638  48 00 00 24 */	b lbl_8026F9FC
lbl_8026F9DC:
/* 8026F9DC 0026B63C  93 9E 02 F0 */	stw r28, 0x2f0(r30)
/* 8026F9E0 0026B640  80 7C 00 08 */	lwz r3, 8(r28)
/* 8026F9E4 0026B644  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8026F9E8 0026B648  48 00 1C 2D */	bl __OSPromoteThread
/* 8026F9EC 0026B64C  7F 83 E3 78 */	mr r3, r28
/* 8026F9F0 0026B650  48 00 29 85 */	bl OSSleepThread
/* 8026F9F4 0026B654  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 8026F9F8 0026B658  4B FF FF 84 */	b lbl_8026F97C
lbl_8026F9FC:
/* 8026F9FC 0026B65C  7F A3 EB 78 */	mr r3, r29
/* 8026FA00 0026B660  4B FF ED 85 */	bl OSRestoreInterrupts
/* 8026FA04 0026B664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FA08 0026B668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FA0C 0026B66C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026FA10 0026B670  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026FA14 0026B674  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8026FA18 0026B678  7C 08 03 A6 */	mtlr r0
/* 8026FA1C 0026B67C  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FA20 0026B680  4E 80 00 20 */	blr

.global OSUnlockMutex
OSUnlockMutex:
/* 8026FA24 0026B684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FA28 0026B688  7C 08 02 A6 */	mflr r0
/* 8026FA2C 0026B68C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FA30 0026B690  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026FA34 0026B694  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026FA38 0026B698  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026FA3C 0026B69C  7C 7D 1B 78 */	mr r29, r3
/* 8026FA40 0026B6A0  4B FF ED 1D */	bl OSDisableInterrupts
/* 8026FA44 0026B6A4  7C 7F 1B 78 */	mr r31, r3
/* 8026FA48 0026B6A8  48 00 18 B1 */	bl OSGetCurrentThread
/* 8026FA4C 0026B6AC  80 1D 00 08 */	lwz r0, 8(r29)
/* 8026FA50 0026B6B0  7C 7E 1B 78 */	mr r30, r3
/* 8026FA54 0026B6B4  7C 00 18 40 */	cmplw r0, r3
/* 8026FA58 0026B6B8  40 82 00 70 */	bne lbl_8026FAC8
/* 8026FA5C 0026B6BC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8026FA60 0026B6C0  34 00 FF FF */	addic. r0, r0, -1
/* 8026FA64 0026B6C4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8026FA68 0026B6C8  40 82 00 60 */	bne lbl_8026FAC8
/* 8026FA6C 0026B6CC  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8026FA70 0026B6D0  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 8026FA74 0026B6D4  2C 04 00 00 */	cmpwi r4, 0
/* 8026FA78 0026B6D8  40 82 00 0C */	bne lbl_8026FA84
/* 8026FA7C 0026B6DC  90 A3 02 F8 */	stw r5, 0x2f8(r3)
/* 8026FA80 0026B6E0  48 00 00 08 */	b lbl_8026FA88
lbl_8026FA84:
/* 8026FA84 0026B6E4  90 A4 00 14 */	stw r5, 0x14(r4)
lbl_8026FA88:
/* 8026FA88 0026B6E8  2C 05 00 00 */	cmpwi r5, 0
/* 8026FA8C 0026B6EC  40 82 00 0C */	bne lbl_8026FA98
/* 8026FA90 0026B6F0  90 83 02 F4 */	stw r4, 0x2f4(r3)
/* 8026FA94 0026B6F4  48 00 00 08 */	b lbl_8026FA9C
lbl_8026FA98:
/* 8026FA98 0026B6F8  90 85 00 10 */	stw r4, 0x10(r5)
lbl_8026FA9C:
/* 8026FA9C 0026B6FC  38 00 00 00 */	li r0, 0
/* 8026FAA0 0026B700  90 1D 00 08 */	stw r0, 8(r29)
/* 8026FAA4 0026B704  80 83 02 D0 */	lwz r4, 0x2d0(r3)
/* 8026FAA8 0026B708  80 03 02 D4 */	lwz r0, 0x2d4(r3)
/* 8026FAAC 0026B70C  7C 04 00 00 */	cmpw r4, r0
/* 8026FAB0 0026B710  40 80 00 10 */	bge lbl_8026FAC0
/* 8026FAB4 0026B714  7F C3 F3 78 */	mr r3, r30
/* 8026FAB8 0026B718  48 00 19 6D */	bl __OSGetEffectivePriority
/* 8026FABC 0026B71C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
lbl_8026FAC0:
/* 8026FAC0 0026B720  7F A3 EB 78 */	mr r3, r29
/* 8026FAC4 0026B724  48 00 29 9D */	bl OSWakeupThread
lbl_8026FAC8:
/* 8026FAC8 0026B728  7F E3 FB 78 */	mr r3, r31
/* 8026FACC 0026B72C  4B FF EC B9 */	bl OSRestoreInterrupts
/* 8026FAD0 0026B730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FAD4 0026B734  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FAD8 0026B738  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026FADC 0026B73C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026FAE0 0026B740  7C 08 03 A6 */	mtlr r0
/* 8026FAE4 0026B744  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FAE8 0026B748  4E 80 00 20 */	blr

.global __OSUnlockAllMutex
__OSUnlockAllMutex:
/* 8026FAEC 0026B74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026FAF0 0026B750  7C 08 02 A6 */	mflr r0
/* 8026FAF4 0026B754  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026FAF8 0026B758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026FAFC 0026B75C  3B E0 00 00 */	li r31, 0
/* 8026FB00 0026B760  93 C1 00 08 */	stw r30, 8(r1)
/* 8026FB04 0026B764  7C 7E 1B 78 */	mr r30, r3
/* 8026FB08 0026B768  48 00 00 2C */	b lbl_8026FB34
lbl_8026FB0C:
/* 8026FB0C 0026B76C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8026FB10 0026B770  2C 04 00 00 */	cmpwi r4, 0
/* 8026FB14 0026B774  40 82 00 0C */	bne lbl_8026FB20
/* 8026FB18 0026B778  93 FE 02 F8 */	stw r31, 0x2f8(r30)
/* 8026FB1C 0026B77C  48 00 00 08 */	b lbl_8026FB24
lbl_8026FB20:
/* 8026FB20 0026B780  93 E4 00 14 */	stw r31, 0x14(r4)
lbl_8026FB24:
/* 8026FB24 0026B784  90 9E 02 F4 */	stw r4, 0x2f4(r30)
/* 8026FB28 0026B788  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8026FB2C 0026B78C  93 E3 00 08 */	stw r31, 8(r3)
/* 8026FB30 0026B790  48 00 29 31 */	bl OSWakeupThread
lbl_8026FB34:
/* 8026FB34 0026B794  80 7E 02 F4 */	lwz r3, 0x2f4(r30)
/* 8026FB38 0026B798  2C 03 00 00 */	cmpwi r3, 0
/* 8026FB3C 0026B79C  40 82 FF D0 */	bne lbl_8026FB0C
/* 8026FB40 0026B7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026FB44 0026B7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026FB48 0026B7A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026FB4C 0026B7AC  7C 08 03 A6 */	mtlr r0
/* 8026FB50 0026B7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8026FB54 0026B7B4  4E 80 00 20 */	blr

.global OSTryLockMutex
OSTryLockMutex:
/* 8026FB58 0026B7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FB5C 0026B7BC  7C 08 02 A6 */	mflr r0
/* 8026FB60 0026B7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FB64 0026B7C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026FB68 0026B7C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026FB6C 0026B7CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026FB70 0026B7D0  7C 7D 1B 78 */	mr r29, r3
/* 8026FB74 0026B7D4  4B FF EB E9 */	bl OSDisableInterrupts
/* 8026FB78 0026B7D8  7C 7F 1B 78 */	mr r31, r3
/* 8026FB7C 0026B7DC  48 00 17 7D */	bl OSGetCurrentThread
/* 8026FB80 0026B7E0  80 1D 00 08 */	lwz r0, 8(r29)
/* 8026FB84 0026B7E4  2C 00 00 00 */	cmpwi r0, 0
/* 8026FB88 0026B7E8  40 82 00 44 */	bne lbl_8026FBCC
/* 8026FB8C 0026B7EC  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8026FB90 0026B7F0  90 7D 00 08 */	stw r3, 8(r29)
/* 8026FB94 0026B7F4  38 04 00 01 */	addi r0, r4, 1
/* 8026FB98 0026B7F8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8026FB9C 0026B7FC  80 83 02 F8 */	lwz r4, 0x2f8(r3)
/* 8026FBA0 0026B800  2C 04 00 00 */	cmpwi r4, 0
/* 8026FBA4 0026B804  40 82 00 0C */	bne lbl_8026FBB0
/* 8026FBA8 0026B808  93 A3 02 F4 */	stw r29, 0x2f4(r3)
/* 8026FBAC 0026B80C  48 00 00 08 */	b lbl_8026FBB4
lbl_8026FBB0:
/* 8026FBB0 0026B810  93 A4 00 10 */	stw r29, 0x10(r4)
lbl_8026FBB4:
/* 8026FBB4 0026B814  38 00 00 00 */	li r0, 0
/* 8026FBB8 0026B818  90 9D 00 14 */	stw r4, 0x14(r29)
/* 8026FBBC 0026B81C  3B C0 00 01 */	li r30, 1
/* 8026FBC0 0026B820  90 1D 00 10 */	stw r0, 0x10(r29)
/* 8026FBC4 0026B824  93 A3 02 F8 */	stw r29, 0x2f8(r3)
/* 8026FBC8 0026B828  48 00 00 24 */	b lbl_8026FBEC
lbl_8026FBCC:
/* 8026FBCC 0026B82C  7C 00 18 40 */	cmplw r0, r3
/* 8026FBD0 0026B830  40 82 00 18 */	bne lbl_8026FBE8
/* 8026FBD4 0026B834  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8026FBD8 0026B838  3B C0 00 01 */	li r30, 1
/* 8026FBDC 0026B83C  38 03 00 01 */	addi r0, r3, 1
/* 8026FBE0 0026B840  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8026FBE4 0026B844  48 00 00 08 */	b lbl_8026FBEC
lbl_8026FBE8:
/* 8026FBE8 0026B848  3B C0 00 00 */	li r30, 0
lbl_8026FBEC:
/* 8026FBEC 0026B84C  7F E3 FB 78 */	mr r3, r31
/* 8026FBF0 0026B850  4B FF EB 95 */	bl OSRestoreInterrupts
/* 8026FBF4 0026B854  7F C3 F3 78 */	mr r3, r30
/* 8026FBF8 0026B858  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FBFC 0026B85C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026FC00 0026B860  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026FC04 0026B864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FC08 0026B868  7C 08 03 A6 */	mtlr r0
/* 8026FC0C 0026B86C  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FC10 0026B870  4E 80 00 20 */	blr

.global OSInitCond
OSInitCond:
/* 8026FC14 0026B874  48 00 16 D4 */	b OSInitThreadQueue

.global OSSignalCond
OSSignalCond:
/* 8026FC18 0026B878  48 00 28 48 */	b OSWakeupThread
