.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q34nw4r3snd9SoundHeapFv
__ct__Q34nw4r3snd9SoundHeapFv:
/* 8037AA3C 0037669C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037AA40 003766A0  7C 08 02 A6 */	mflr r0
/* 8037AA44 003766A4  3C 80 80 45 */	lis r4, lbl_8044CEC8@ha
/* 8037AA48 003766A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037AA4C 003766AC  38 84 CE C8 */	addi r4, r4, lbl_8044CEC8@l
/* 8037AA50 003766B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037AA54 003766B4  7C 7F 1B 78 */	mr r31, r3
/* 8037AA58 003766B8  90 83 00 00 */	stw r4, 0(r3)
/* 8037AA5C 003766BC  38 63 00 1C */	addi r3, r3, 0x1c
/* 8037AA60 003766C0  4B FF 55 FD */	bl __ct__Q44nw4r3snd6detail9FrameHeapFv
/* 8037AA64 003766C4  38 7F 00 04 */	addi r3, r31, 4
/* 8037AA68 003766C8  4B EF 4E A9 */	bl OSInitMutex
/* 8037AA6C 003766CC  7F E3 FB 78 */	mr r3, r31
/* 8037AA70 003766D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037AA74 003766D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037AA78 003766D8  7C 08 03 A6 */	mtlr r0
/* 8037AA7C 003766DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037AA80 003766E0  4E 80 00 20 */	blr

.global __dt__Q34nw4r3snd9SoundHeapFv
__dt__Q34nw4r3snd9SoundHeapFv:
/* 8037AA84 003766E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037AA88 003766E8  7C 08 02 A6 */	mflr r0
/* 8037AA8C 003766EC  2C 03 00 00 */	cmpwi r3, 0
/* 8037AA90 003766F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037AA94 003766F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037AA98 003766F8  7C 9F 23 78 */	mr r31, r4
/* 8037AA9C 003766FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8037AAA0 00376700  7C 7E 1B 78 */	mr r30, r3
/* 8037AAA4 00376704  41 82 00 34 */	beq lbl_8037AAD8
/* 8037AAA8 00376708  3C 80 80 45 */	lis r4, lbl_8044CEC8@ha
/* 8037AAAC 0037670C  38 84 CE C8 */	addi r4, r4, lbl_8044CEC8@l
/* 8037AAB0 00376710  90 83 00 00 */	stw r4, 0(r3)
/* 8037AAB4 00376714  38 63 00 1C */	addi r3, r3, 0x1c
/* 8037AAB8 00376718  4B FF 58 79 */	bl Destroy__Q44nw4r3snd6detail9FrameHeapFv
/* 8037AABC 0037671C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8037AAC0 00376720  38 80 FF FF */	li r4, -1
/* 8037AAC4 00376724  4B FF 55 BD */	bl __dt__Q44nw4r3snd6detail9FrameHeapFv
/* 8037AAC8 00376728  2C 1F 00 00 */	cmpwi r31, 0
/* 8037AACC 0037672C  40 81 00 0C */	ble lbl_8037AAD8
/* 8037AAD0 00376730  7F C3 F3 78 */	mr r3, r30
/* 8037AAD4 00376734  4B E5 FF E5 */	bl __dl__FPv
lbl_8037AAD8:
/* 8037AAD8 00376738  7F C3 F3 78 */	mr r3, r30
/* 8037AADC 0037673C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037AAE0 00376740  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037AAE4 00376744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037AAE8 00376748  7C 08 03 A6 */	mtlr r0
/* 8037AAEC 0037674C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037AAF0 00376750  4E 80 00 20 */	blr

.global Create__Q34nw4r3snd9SoundHeapFPvUl
Create__Q34nw4r3snd9SoundHeapFPvUl:
/* 8037AAF4 00376754  38 63 00 1C */	addi r3, r3, 0x1c
/* 8037AAF8 00376758  4B FF 56 9C */	b Create__Q44nw4r3snd6detail9FrameHeapFPvUl

.global Destroy__Q34nw4r3snd9SoundHeapFv
Destroy__Q34nw4r3snd9SoundHeapFv:
/* 8037AAFC 0037675C  38 63 00 1C */	addi r3, r3, 0x1c
/* 8037AB00 00376760  4B FF 58 30 */	b Destroy__Q44nw4r3snd6detail9FrameHeapFv

.global Alloc__Q34nw4r3snd9SoundHeapFUl
Alloc__Q34nw4r3snd9SoundHeapFUl:
/* 8037AB04 00376764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037AB08 00376768  7C 08 02 A6 */	mflr r0
/* 8037AB0C 0037676C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037AB10 00376770  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037AB14 00376774  3B E3 00 04 */	addi r31, r3, 4
/* 8037AB18 00376778  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037AB1C 0037677C  7C 9E 23 78 */	mr r30, r4
/* 8037AB20 00376780  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037AB24 00376784  7C 7D 1B 78 */	mr r29, r3
/* 8037AB28 00376788  7F E3 FB 78 */	mr r3, r31
/* 8037AB2C 0037678C  4B EF 4E 1D */	bl OSLockMutex
/* 8037AB30 00376790  3C A0 80 38 */	lis r5, DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv@ha
/* 8037AB34 00376794  7F C4 F3 78 */	mr r4, r30
/* 8037AB38 00376798  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8037AB3C 0037679C  38 C0 00 00 */	li r6, 0
/* 8037AB40 003767A0  38 A5 AB 74 */	addi r5, r5, DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv@l
/* 8037AB44 003767A4  4B FF 5A 09 */	bl Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv
/* 8037AB48 003767A8  7C 7E 1B 78 */	mr r30, r3
/* 8037AB4C 003767AC  7F E3 FB 78 */	mr r3, r31
/* 8037AB50 003767B0  4B EF 4E D5 */	bl OSUnlockMutex
/* 8037AB54 003767B4  7F C3 F3 78 */	mr r3, r30
/* 8037AB58 003767B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037AB5C 003767BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037AB60 003767C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037AB64 003767C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037AB68 003767C8  7C 08 03 A6 */	mtlr r0
/* 8037AB6C 003767CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8037AB70 003767D0  4E 80 00 20 */	blr

.global DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv
DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv:
/* 8037AB74 003767D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037AB78 003767D8  7C 08 02 A6 */	mflr r0
/* 8037AB7C 003767DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037AB80 003767E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037AB84 003767E4  7C BF 2B 78 */	mr r31, r5
/* 8037AB88 003767E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037AB8C 003767EC  7C 9E 23 78 */	mr r30, r4
/* 8037AB90 003767F0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037AB94 003767F4  7C 7D 1B 78 */	mr r29, r3
/* 8037AB98 003767F8  4B FF 46 C1 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 8037AB9C 003767FC  7F A4 EB 78 */	mr r4, r29
/* 8037ABA0 00376800  7F C5 F3 78 */	mr r5, r30
/* 8037ABA4 00376804  7F E6 FB 78 */	mr r6, r31
/* 8037ABA8 00376808  4B FF 48 51 */	bl Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 8037ABAC 0037680C  4B FF 46 AD */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 8037ABB0 00376810  7F A4 EB 78 */	mr r4, r29
/* 8037ABB4 00376814  7F C5 F3 78 */	mr r5, r30
/* 8037ABB8 00376818  7F E6 FB 78 */	mr r6, r31
/* 8037ABBC 0037681C  4B FF 49 85 */	bl DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 8037ABC0 00376820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037ABC4 00376824  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037ABC8 00376828  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037ABCC 0037682C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037ABD0 00376830  7C 08 03 A6 */	mtlr r0
/* 8037ABD4 00376834  38 21 00 20 */	addi r1, r1, 0x20
/* 8037ABD8 00376838  4E 80 00 20 */	blr
