.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_init_prfile2
VFipf2_init_prfile2:
/* 8031A3D4 00316034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A3D8 00316038  7C 08 02 A6 */	mflr r0
/* 8031A3DC 0031603C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A3E0 00316040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031A3E4 00316044  4B FF 84 2D */	bl VFiPFFATFS_initializeFATFS
/* 8031A3E8 00316048  2C 03 00 00 */	cmpwi r3, 0
/* 8031A3EC 0031604C  7C 7F 1B 78 */	mr r31, r3
/* 8031A3F0 00316050  40 82 00 08 */	bne lbl_8031A3F8
/* 8031A3F4 00316054  48 00 00 35 */	bl VFiPFSYS_initializeSYS
lbl_8031A3F8:
/* 8031A3F8 00316058  7F E3 FB 78 */	mr r3, r31
/* 8031A3FC 0031605C  4B FF FE 35 */	bl VFiPFAPI_convertReturnValue
/* 8031A400 00316060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A404 00316064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031A408 00316068  7C 08 03 A6 */	mtlr r0
/* 8031A40C 0031606C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A410 00316070  4E 80 00 20 */	blr
