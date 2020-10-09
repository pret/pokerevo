.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global NETGetWirelessMacAddress
NETGetWirelessMacAddress:
/* 802F5198 002F0DF8  4B FF 84 90 */	b NCDiGetWirelessMacAddress
