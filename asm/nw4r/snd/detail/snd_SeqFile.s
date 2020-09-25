.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
__ct__Q44nw4r3snd6detail13SeqFileReaderFPCv:
/* 803739E4 0036F644  80 A4 00 00 */	lwz r5, 0(r4)
/* 803739E8 0036F648  38 C0 00 00 */	li r6, 0
/* 803739EC 0036F64C  90 C3 00 00 */	stw r6, 0(r3)
/* 803739F0 0036F650  3C 05 AD AD */	addis r0, r5, 0xadad
/* 803739F4 0036F654  28 00 45 51 */	cmplwi r0, 0x4551
/* 803739F8 0036F658  90 C3 00 04 */	stw r6, 4(r3)
/* 803739FC 0036F65C  41 82 00 0C */	beq lbl_80373A08
/* 80373A00 0036F660  38 00 00 00 */	li r0, 0
/* 80373A04 0036F664  48 00 00 30 */	b lbl_80373A34
lbl_80373A08:
/* 80373A08 0036F668  A0 C4 00 06 */	lhz r6, 6(r4)
/* 80373A0C 0036F66C  28 06 01 00 */	cmplwi r6, 0x100
/* 80373A10 0036F670  40 80 00 0C */	bge lbl_80373A1C
/* 80373A14 0036F674  38 00 00 00 */	li r0, 0
/* 80373A18 0036F678  48 00 00 1C */	b lbl_80373A34
lbl_80373A1C:
/* 80373A1C 0036F67C  20 06 01 00 */	subfic r0, r6, 0x100
/* 80373A20 0036F680  38 A0 01 00 */	li r5, 0x100
/* 80373A24 0036F684  7C A5 33 38 */	orc r5, r5, r6
/* 80373A28 0036F688  54 00 F8 7E */	srwi r0, r0, 1
/* 80373A2C 0036F68C  7C 00 28 50 */	subf r0, r0, r5
/* 80373A30 0036F690  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_80373A34:
/* 80373A34 0036F694  2C 00 00 00 */	cmpwi r0, 0
/* 80373A38 0036F698  4D 82 00 20 */	beqlr
/* 80373A3C 0036F69C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80373A40 0036F6A0  90 83 00 00 */	stw r4, 0(r3)
/* 80373A44 0036F6A4  7C 00 22 14 */	add r0, r0, r4
/* 80373A48 0036F6A8  90 03 00 04 */	stw r0, 4(r3)
/* 80373A4C 0036F6AC  4E 80 00 20 */	blr

.global GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv:
/* 80373A50 0036F6B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80373A54 0036F6B4  80 03 00 08 */	lwz r0, 8(r3)
/* 80373A58 0036F6B8  7C 60 1A 14 */	add r3, r0, r3
/* 80373A5C 0036F6BC  4E 80 00 20 */	blr
