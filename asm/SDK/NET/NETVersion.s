.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

NETGetRexPPCVersionPrintable:
/* 802F5190 002F0DF0  80 6D 8C 00 */	lwz r3, lbl_8063DEC0-_SDA_BASE_(r13)
/* 802F5194 002F0DF4  4E 80 00 20 */	blr
