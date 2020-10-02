.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __OSGetIPCBufferHi
__OSGetIPCBufferHi:
/* 802730A4 0026ED04  80 6D A8 38 */	lwz r3, lbl_8063FAF8-_SDA_BASE_(r13)
/* 802730A8 0026ED08  4E 80 00 20 */	blr

.global __OSGetIPCBufferLo
__OSGetIPCBufferLo:
/* 802730AC 0026ED0C  80 6D 87 E8 */	lwz r3, lbl_8063DAA8-_SDA_BASE_(r13)
/* 802730B0 0026ED10  4E 80 00 20 */	blr

.global __OSInitIPCBuffer
__OSInitIPCBuffer:
/* 802730B4 0026ED14  3C 60 80 00 */	lis r3, 0x80003130@ha
/* 802730B8 0026ED18  80 03 31 30 */	lwz r0, 0x80003130@l(r3)
/* 802730BC 0026ED1C  90 0D 87 E8 */	stw r0, lbl_8063DAA8-_SDA_BASE_(r13)
/* 802730C0 0026ED20  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 802730C4 0026ED24  90 0D A8 38 */	stw r0, lbl_8063FAF8-_SDA_BASE_(r13)
/* 802730C8 0026ED28  4E 80 00 20 */	blr
