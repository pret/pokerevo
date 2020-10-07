.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global AXFXReverbStdGetMemSize
AXFXReverbStdGetMemSize:
/* 80294B5C 002907BC  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 80294B60 002907C0  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 80294B64 002907C4  48 00 00 E4 */	b AXFXReverbStdExpGetMemSize

.global AXFXReverbStdInit
AXFXReverbStdInit:
/* 80294B68 002907C8  C0 C3 00 F8 */	lfs f6, 0xf8(r3)
/* 80294B6C 002907CC  38 00 00 00 */	li r0, 0
/* 80294B70 002907D0  C0 42 A2 D8 */	lfs f2, lbl_806428D8-_SDA2_BASE_(r2)
/* 80294B74 002907D4  38 80 00 05 */	li r4, 5
/* 80294B78 002907D8  C0 A3 00 F0 */	lfs f5, 0xf0(r3)
/* 80294B7C 002907DC  C0 83 00 E8 */	lfs f4, 0xe8(r3)
/* 80294B80 002907E0  C0 63 00 F4 */	lfs f3, 0xf4(r3)
/* 80294B84 002907E4  C0 22 A2 DC */	lfs f1, lbl_806428DC-_SDA2_BASE_(r2)
/* 80294B88 002907E8  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 80294B8C 002907EC  90 83 00 B4 */	stw r4, 0xb4(r3)
/* 80294B90 002907F0  D0 C3 00 B8 */	stfs f6, 0xb8(r3)
/* 80294B94 002907F4  D0 C3 00 BC */	stfs f6, 0xbc(r3)
/* 80294B98 002907F8  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80294B9C 002907FC  D0 A3 00 C4 */	stfs f5, 0xc4(r3)
/* 80294BA0 00290800  D0 83 00 C8 */	stfs f4, 0xc8(r3)
/* 80294BA4 00290804  D0 63 00 CC */	stfs f3, 0xcc(r3)
/* 80294BA8 00290808  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 80294BAC 0029080C  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 80294BB0 00290810  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80294BB4 00290814  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80294BB8 00290818  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 80294BBC 0029081C  D0 43 00 E4 */	stfs f2, 0xe4(r3)
/* 80294BC0 00290820  48 00 00 E8 */	b AXFXReverbStdExpInit

.global AXFXReverbStdShutdown
AXFXReverbStdShutdown:
/* 80294BC4 00290824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294BC8 00290828  7C 08 02 A6 */	mflr r0
/* 80294BCC 0029082C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294BD0 00290830  48 00 03 25 */	bl AXFXReverbStdExpShutdown
/* 80294BD4 00290834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294BD8 00290838  38 60 00 01 */	li r3, 1
/* 80294BDC 0029083C  7C 08 03 A6 */	mtlr r0
/* 80294BE0 00290840  38 21 00 10 */	addi r1, r1, 0x10
/* 80294BE4 00290844  4E 80 00 20 */	blr

.global AXFXReverbStdSettings
AXFXReverbStdSettings:
/* 80294BE8 00290848  C0 C3 00 F8 */	lfs f6, 0xf8(r3)
/* 80294BEC 0029084C  38 00 00 00 */	li r0, 0
/* 80294BF0 00290850  C0 42 A2 D8 */	lfs f2, lbl_806428D8-_SDA2_BASE_(r2)
/* 80294BF4 00290854  38 80 00 05 */	li r4, 5
/* 80294BF8 00290858  C0 A3 00 F0 */	lfs f5, 0xf0(r3)
/* 80294BFC 0029085C  C0 83 00 E8 */	lfs f4, 0xe8(r3)
/* 80294C00 00290860  C0 63 00 F4 */	lfs f3, 0xf4(r3)
/* 80294C04 00290864  C0 22 A2 DC */	lfs f1, lbl_806428DC-_SDA2_BASE_(r2)
/* 80294C08 00290868  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 80294C0C 0029086C  90 83 00 B4 */	stw r4, 0xb4(r3)
/* 80294C10 00290870  D0 C3 00 B8 */	stfs f6, 0xb8(r3)
/* 80294C14 00290874  D0 C3 00 BC */	stfs f6, 0xbc(r3)
/* 80294C18 00290878  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80294C1C 0029087C  D0 A3 00 C4 */	stfs f5, 0xc4(r3)
/* 80294C20 00290880  D0 83 00 C8 */	stfs f4, 0xc8(r3)
/* 80294C24 00290884  D0 63 00 CC */	stfs f3, 0xcc(r3)
/* 80294C28 00290888  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 80294C2C 0029088C  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 80294C30 00290890  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80294C34 00290894  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80294C38 00290898  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 80294C3C 0029089C  D0 43 00 E4 */	stfs f2, 0xe4(r3)
/* 80294C40 002908A0  48 00 01 E4 */	b AXFXReverbStdExpSettings

.global AXFXReverbStdCallback
AXFXReverbStdCallback:
/* 80294C44 002908A4  48 00 03 04 */	b AXFXReverbStdExpCallback
