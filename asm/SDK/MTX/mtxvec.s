.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global PSMTXMultVec
PSMTXMultVec:
/* 8027C9FC 0027865C  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 8027CA00 00278660  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8027CA04 00278664  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 8027CA08 00278668  10 82 00 32 */	ps_mul f4, f2, f0
/* 8027CA0C 0027866C  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 8027CA10 00278670  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8027CA14 00278674  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 8027CA18 00278678  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8027CA1C 0027867C  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 8027CA20 00278680  11 48 00 32 */	ps_mul f10, f8, f0
/* 8027CA24 00278684  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 8027CA28 00278688  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8027CA2C 0027868C  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 8027CA30 00278690  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8027CA34 00278694  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 8027CA38 00278698  10 82 00 32 */	ps_mul f4, f2, f0
/* 8027CA3C 0027869C  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 8027CA40 002786A0  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8027CA44 002786A4  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8027CA48 002786A8  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 8027CA4C 002786AC  4E 80 00 20 */	blr

.global PSMTXMultVecSR
PSMTXMultVecSR:
/* 8027CA50 002786B0  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8027CA54 002786B4  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8027CA58 002786B8  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8027CA5C 002786BC  11 00 01 B2 */	ps_mul f8, f0, f6
/* 8027CA60 002786C0  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8027CA64 002786C4  11 42 01 B2 */	ps_mul f10, f2, f6
/* 8027CA68 002786C8  E0 E4 80 08 */	psq_l f7, 8(r4), 1, qr0
/* 8027CA6C 002786CC  11 84 01 B2 */	ps_mul f12, f4, f6
/* 8027CA70 002786D0  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8027CA74 002786D4  11 08 42 14 */	ps_sum0 f8, f8, f8, f8
/* 8027CA78 002786D8  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8027CA7C 002786DC  11 4A 52 94 */	ps_sum0 f10, f10, f10, f10
/* 8027CA80 002786E0  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8027CA84 002786E4  11 8C 63 14 */	ps_sum0 f12, f12, f12, f12
/* 8027CA88 002786E8  11 21 41 FA */	ps_madd f9, f1, f7, f8
/* 8027CA8C 002786EC  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 8027CA90 002786F0  11 63 51 FA */	ps_madd f11, f3, f7, f10
/* 8027CA94 002786F4  F1 65 80 04 */	psq_st f11, 4(r5), 1, qr0
/* 8027CA98 002786F8  11 A5 61 FA */	ps_madd f13, f5, f7, f12
/* 8027CA9C 002786FC  F1 A5 80 08 */	psq_st f13, 8(r5), 1, qr0
/* 8027CAA0 00278700  4E 80 00 20 */	blr
