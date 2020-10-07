.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

__AXFXAllocFunction:
/* 80296494 002920F4  7C 64 1B 78 */	mr r4, r3
/* 80296498 002920F8  80 6D 87 A8 */	lwz r3, lbl_8063DA68-_SDA_BASE_(r13)
/* 8029649C 002920FC  4B FD 3A C0 */	b OSAllocFromHeap

__AXFXFreeFunction:
/* 802964A0 00292100  7C 64 1B 78 */	mr r4, r3
/* 802964A4 00292104  80 6D 87 A8 */	lwz r3, lbl_8063DA68-_SDA_BASE_(r13)
/* 802964A8 00292108  4B FD 3B AC */	b OSFreeToHeap

.global AXFXSetHooks
AXFXSetHooks:
/* 802964AC 0029210C  90 6D 88 F8 */	stw r3, lbl_8063DBB8-_SDA_BASE_(r13)
/* 802964B0 00292110  90 8D 88 FC */	stw r4, lbl_8063DBBC-_SDA_BASE_(r13)
/* 802964B4 00292114  4E 80 00 20 */	blr

.global AXFXGetHooks
AXFXGetHooks:
/* 802964B8 00292118  80 0D 88 F8 */	lwz r0, lbl_8063DBB8-_SDA_BASE_(r13)
/* 802964BC 0029211C  90 03 00 00 */	stw r0, 0(r3)
/* 802964C0 00292120  80 0D 88 FC */	lwz r0, lbl_8063DBBC-_SDA_BASE_(r13)
/* 802964C4 00292124  90 04 00 00 */	stw r0, 0(r4)
/* 802964C8 00292128  4E 80 00 20 */	blr
