.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global SSL_InitMutex
SSL_InitMutex:
/* 80300C04 002FC864  4B F6 ED 0C */	b OSInitMutex

.global SSL_LockMutex
SSL_LockMutex:
/* 80300C08 002FC868  4B F6 ED 40 */	b OSLockMutex

.global SSL_UnlockMutex
SSL_UnlockMutex:
/* 80300C0C 002FC86C  4B F6 EE 18 */	b OSUnlockMutex
