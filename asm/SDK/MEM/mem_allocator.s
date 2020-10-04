.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global AllocatorAllocForExpHeap_
AllocatorAllocForExpHeap_:
/* 802976F8 00293358  7C 65 1B 78 */	mr r5, r3
/* 802976FC 0029335C  80 63 00 04 */	lwz r3, 4(r3)
/* 80297700 00293360  80 A5 00 08 */	lwz r5, 8(r5)
/* 80297704 00293364  4B FF F8 24 */	b MEMAllocFromExpHeapEx

.global AllocatorFreeForExpHeap_
AllocatorFreeForExpHeap_:
/* 80297708 00293368  80 63 00 04 */	lwz r3, 4(r3)
/* 8029770C 0029336C  4B FF FA B8 */	b MEMFreeToExpHeap

.global AllocatorAllocForFrmHeap_
AllocatorAllocForFrmHeap_:
/* 80297710 00293370  7C 65 1B 78 */	mr r5, r3
/* 80297714 00293374  80 63 00 04 */	lwz r3, 4(r3)
/* 80297718 00293378  80 A5 00 08 */	lwz r5, 8(r5)
/* 8029771C 0029337C  4B FF FD A4 */	b MEMAllocFromFrmHeapEx

.global AllocatorFreeForFrmHeap_
AllocatorFreeForFrmHeap_:
/* 80297720 00293380  4E 80 00 20 */	blr

.global MEMAllocFromAllocator
MEMAllocFromAllocator:
/* 80297724 00293384  80 A3 00 00 */	lwz r5, 0(r3)
/* 80297728 00293388  81 85 00 00 */	lwz r12, 0(r5)
/* 8029772C 0029338C  7D 89 03 A6 */	mtctr r12
/* 80297730 00293390  4E 80 04 20 */	bctr

.global MEMFreeToAllocator
MEMFreeToAllocator:
/* 80297734 00293394  80 A3 00 00 */	lwz r5, 0(r3)
/* 80297738 00293398  81 85 00 04 */	lwz r12, 4(r5)
/* 8029773C 0029339C  7D 89 03 A6 */	mtctr r12
/* 80297740 002933A0  4E 80 04 20 */	bctr

.global MEMInitAllocatorForExpHeap
MEMInitAllocatorForExpHeap:
/* 80297744 002933A4  38 C2 A3 68 */	addi r6, r2, lbl_80642968-_SDA2_BASE_
/* 80297748 002933A8  38 00 00 00 */	li r0, 0
/* 8029774C 002933AC  90 C3 00 00 */	stw r6, 0(r3)
/* 80297750 002933B0  90 83 00 04 */	stw r4, 4(r3)
/* 80297754 002933B4  90 A3 00 08 */	stw r5, 8(r3)
/* 80297758 002933B8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8029775C 002933BC  4E 80 00 20 */	blr

.global MEMInitAllocatorForFrmHeap
MEMInitAllocatorForFrmHeap:
/* 80297760 002933C0  38 C2 A3 70 */	addi r6, r2, lbl_80642970-_SDA2_BASE_
/* 80297764 002933C4  38 00 00 00 */	li r0, 0
/* 80297768 002933C8  90 C3 00 00 */	stw r6, 0(r3)
/* 8029776C 002933CC  90 83 00 04 */	stw r4, 4(r3)
/* 80297770 002933D0  90 A3 00 08 */	stw r5, 8(r3)
/* 80297774 002933D4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80297778 002933D8  4E 80 00 20 */	blr
