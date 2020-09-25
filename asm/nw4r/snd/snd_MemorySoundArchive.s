.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global Shutdown__Q34nw4r3snd18MemorySoundArchiveFv
Shutdown__Q34nw4r3snd18MemorySoundArchiveFv:
/* 80371DEC 0036DA4C  38 00 00 00 */	li r0, 0
/* 80371DF0 0036DA50  90 03 01 08 */	stw r0, 0x108(r3)
/* 80371DF4 0036DA54  48 00 52 18 */	b Shutdown__Q34nw4r3snd12SoundArchiveFv
