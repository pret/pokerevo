.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRKReleaseMutex
TRKReleaseMutex:
/* 801D7054 001D2CB4  38 60 00 00 */	li r3, 0
/* 801D7058 001D2CB8  4E 80 00 20 */	blr

.global TRKAcquireMutex
TRKAcquireMutex:
/* 801D705C 001D2CBC  38 60 00 00 */	li r3, 0
/* 801D7060 001D2CC0  4E 80 00 20 */	blr

.global TRKInitializeMutex
TRKInitializeMutex:
/* 801D7064 001D2CC4  38 60 00 00 */	li r3, 0
/* 801D7068 001D2CC8  4E 80 00 20 */	blr
