.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global wcslen
wcslen:
/* 801D07D0 001CC430  38 83 FF FE */	addi r4, r3, -2
/* 801D07D4 001CC434  38 60 FF FF */	li r3, -1
lbl_801D07D8:
/* 801D07D8 001CC438  A4 04 00 02 */	lhzu r0, 2(r4)
/* 801D07DC 001CC43C  38 63 00 01 */	addi r3, r3, 1
/* 801D07E0 001CC440  2C 00 00 00 */	cmpwi r0, 0
/* 801D07E4 001CC444  40 82 FF F4 */	bne lbl_801D07D8
/* 801D07E8 001CC448  4E 80 00 20 */	blr

.global wcsncpy
wcsncpy:
/* 801D07EC 001CC44C  38 84 FF FE */	addi r4, r4, -2
/* 801D07F0 001CC450  38 C3 FF FE */	addi r6, r3, -2
/* 801D07F4 001CC454  38 A5 00 01 */	addi r5, r5, 1
/* 801D07F8 001CC458  48 00 00 2C */	b lbl_801D0824
lbl_801D07FC:
/* 801D07FC 001CC45C  A4 04 00 02 */	lhzu r0, 2(r4)
/* 801D0800 001CC460  2C 00 00 00 */	cmpwi r0, 0
/* 801D0804 001CC464  B4 06 00 02 */	sthu r0, 2(r6)
/* 801D0808 001CC468  40 82 00 1C */	bne lbl_801D0824
/* 801D080C 001CC46C  38 00 00 00 */	li r0, 0
/* 801D0810 001CC470  48 00 00 08 */	b lbl_801D0818
lbl_801D0814:
/* 801D0814 001CC474  B4 06 00 02 */	sthu r0, 2(r6)
lbl_801D0818:
/* 801D0818 001CC478  34 A5 FF FF */	addic. r5, r5, -1
/* 801D081C 001CC47C  40 82 FF F8 */	bne lbl_801D0814
/* 801D0820 001CC480  4E 80 00 20 */	blr
lbl_801D0824:
/* 801D0824 001CC484  34 A5 FF FF */	addic. r5, r5, -1
/* 801D0828 001CC488  40 82 FF D4 */	bne lbl_801D07FC
/* 801D082C 001CC48C  4E 80 00 20 */	blr

.global wcscmp
wcscmp:
/* 801D0830 001CC490  38 A3 FF FE */	addi r5, r3, -2
/* 801D0834 001CC494  38 84 FF FE */	addi r4, r4, -2
/* 801D0838 001CC498  48 00 00 14 */	b lbl_801D084C
lbl_801D083C:
/* 801D083C 001CC49C  2C 03 00 00 */	cmpwi r3, 0
/* 801D0840 001CC4A0  40 82 00 0C */	bne lbl_801D084C
/* 801D0844 001CC4A4  38 60 00 00 */	li r3, 0
/* 801D0848 001CC4A8  4E 80 00 20 */	blr
lbl_801D084C:
/* 801D084C 001CC4AC  A4 65 00 02 */	lhzu r3, 2(r5)
/* 801D0850 001CC4B0  A4 04 00 02 */	lhzu r0, 2(r4)
/* 801D0854 001CC4B4  7C 03 00 40 */	cmplw r3, r0
/* 801D0858 001CC4B8  41 82 FF E4 */	beq lbl_801D083C
/* 801D085C 001CC4BC  7C 60 18 50 */	subf r3, r0, r3
/* 801D0860 001CC4C0  4E 80 00 20 */	blr
