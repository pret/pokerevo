.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DWC_GetIngamesnCheckResult
DWC_GetIngamesnCheckResult:
/* 80335DB4 00331A14  4B FF EC D4 */	b DWCi_Auth_GetIngamesnCheckResult
