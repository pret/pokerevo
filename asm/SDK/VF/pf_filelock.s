.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFiPF_InitLockFile
VFiPF_InitLockFile:
/* 8031A414 00316074  38 00 00 00 */	li r0, 0
/* 8031A418 00316078  90 0D AF E0 */	stw r0, lbl_806402A0-_SDA_BASE_(r13)
/* 8031A41C 0031607C  4E 80 00 20 */	blr

.global VFiPF_UnLockFile
VFiPF_UnLockFile:
/* 8031A420 00316080  38 60 FF FF */	li r3, -1
/* 8031A424 00316084  4E 80 00 20 */	blr
