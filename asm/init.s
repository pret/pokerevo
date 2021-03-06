.include "macros.inc"

.section .init, "ax"  # 0x80004000 - 0x800064E0

.global lbl_80004188
lbl_80004188:
.asciz "Metrowerks Target Resident Kernel for PowerPC"
.balign 4, 0

#TODO replace with aligns
.fill 0xD0 #padding

/* 80004288 00000388  48 00 1E 34 */	b __TRK_reset

.fill 0xFC #padding

/* 80004388 00000488  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000438C 0000048C  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004390 00000490  7C 00 17 AC */	icbi 0, r2
/* 80004394 00000494  7C 53 02 A6 */	mfdar r2
/* 80004398 00000498  7C 00 13 AC */	dcbi 0, r2
/* 8000439C 0000049C  7C 51 42 A6 */	mfspr r2, 0x111
/* 800043A0 000004A0  7C 51 43 A6 */	mtspr 0x111, r2
/* 800043A4 000004A4  7C 72 43 A6 */	mtspr 0x112, r3
/* 800043A8 000004A8  7C 93 43 A6 */	mtspr 0x113, r4
/* 800043AC 000004AC  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 800043B0 000004B0  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 800043B4 000004B4  7C 60 00 A6 */	mfmsr r3
/* 800043B8 000004B8  60 63 00 30 */	ori r3, r3, 0x30
/* 800043BC 000004BC  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800043C0 000004C0  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800043C4 000004C4  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800043C8 000004C8  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800043CC 000004CC  38 60 02 00 */	li r3, 0x200
/* 800043D0 000004D0  4C 00 00 64 */	rfi

.fill 0xB4 #padding

/* 80004488 00000588  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000448C 0000058C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004490 00000590  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004494 00000594  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004498 00000598  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000449C 0000059C  7C 60 00 A6 */	mfmsr r3
/* 800044A0 000005A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800044A4 000005A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800044A8 000005A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800044AC 000005AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800044B0 000005B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800044B4 000005B4  38 60 03 00 */	li r3, 0x300
/* 800044B8 000005B8  4C 00 00 64 */	rfi

.fill 0xCC #padding

/* 80004588 00000688  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000458C 0000068C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004590 00000690  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004594 00000694  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004598 00000698  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000459C 0000069C  7C 60 00 A6 */	mfmsr r3
/* 800045A0 000006A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800045A4 000006A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800045A8 000006A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800045AC 000006AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800045B0 000006B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800045B4 000006B4  38 60 04 00 */	li r3, 0x400
/* 800045B8 000006B8  4C 00 00 64 */	rfi

.fill 0xCC #padding

/* 80004688 00000788  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000468C 0000078C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004690 00000790  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004694 00000794  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004698 00000798  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000469C 0000079C  7C 60 00 A6 */	mfmsr r3
/* 800046A0 000007A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800046A4 000007A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800046A8 000007A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800046AC 000007AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800046B0 000007B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800046B4 000007B4  38 60 05 00 */	li r3, 0x500
/* 800046B8 000007B8  4C 00 00 64 */	rfi

.fill 0xCC #padding

/* 80004788 00000888  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000478C 0000088C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004790 00000890  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004794 00000894  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004798 00000898  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000479C 0000089C  7C 60 00 A6 */	mfmsr r3
/* 800047A0 000008A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800047A4 000008A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800047A8 000008A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800047AC 000008AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800047B0 000008B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800047B4 000008B4  38 60 06 00 */	li r3, 0x600
/* 800047B8 000008B8  4C 00 00 64 */	rfi 

.fill 0xCC #padding

/* 80004888 00000988  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000488C 0000098C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004890 00000990  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004894 00000994  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004898 00000998  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000489C 0000099C  7C 60 00 A6 */	mfmsr r3
/* 800048A0 000009A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800048A4 000009A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800048A8 000009A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800048AC 000009AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800048B0 000009B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800048B4 000009B4  38 60 07 00 */	li r3, 0x700
/* 800048B8 000009B8  4C 00 00 64 */	rfi 

.fill 0xCC #padding

/* 80004988 00000A88  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000498C 00000A8C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004990 00000A90  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004994 00000A94  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004998 00000A98  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000499C 00000A9C  7C 60 00 A6 */	mfmsr r3
/* 800049A0 00000AA0  60 63 00 30 */	ori r3, r3, 0x30
/* 800049A4 00000AA4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800049A8 00000AA8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800049AC 00000AAC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800049B0 00000AB0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800049B4 00000AB4  38 60 08 00 */	li r3, 0x800
/* 800049B8 00000AB8  4C 00 00 64 */	rfi 

.fill 0xCC #padding

/* 80004A88 00000B88  7C 51 43 A6 */	mtspr 0x111, r2
/* 80004A8C 00000B8C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004A90 00000B90  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004A94 00000B94  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004A98 00000B98  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80004A9C 00000B9C  7C 60 00 A6 */	mfmsr r3
/* 80004AA0 00000BA0  60 63 00 30 */	ori r3, r3, 0x30
/* 80004AA4 00000BA4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80004AA8 00000BA8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80004AAC 00000BAC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80004AB0 00000BB0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80004AB4 00000BB4  38 60 09 00 */	li r3, 0x900
/* 80004AB8 00000BB8  4C 00 00 64 */	rfi

.fill 0x2CC #padding

/* 80004D88 00000E88  7C 51 43 A6 */	mtspr 0x111, r2
/* 80004D8C 00000E8C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004D90 00000E90  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004D94 00000E94  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004D98 00000E98  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80004D9C 00000E9C  7C 60 00 A6 */	mfmsr r3
/* 80004DA0 00000EA0  60 63 00 30 */	ori r3, r3, 0x30
/* 80004DA4 00000EA4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80004DA8 00000EA8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80004DAC 00000EAC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80004DB0 00000EB0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80004DB4 00000EB4  38 60 0C 00 */	li r3, 0xc00
/* 80004DB8 00000EB8  4C 00 00 64 */	rfi 
/* 80004DBC 00000EBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DC0 00000EC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DC4 00000EC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DC8 00000EC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DCC 00000ECC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DD0 00000ED0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DD4 00000ED4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DD8 00000ED8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DDC 00000EDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DE0 00000EE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DE4 00000EE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DE8 00000EE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DEC 00000EEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DF0 00000EF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DF4 00000EF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DF8 00000EF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004DFC 00000EFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E00 00000F00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E04 00000F04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E08 00000F08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E0C 00000F0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E10 00000F10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E14 00000F14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E18 00000F18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E1C 00000F1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E20 00000F20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E24 00000F24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E28 00000F28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E2C 00000F2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E30 00000F30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E34 00000F34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E38 00000F38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E3C 00000F3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E40 00000F40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E44 00000F44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E48 00000F48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E4C 00000F4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E50 00000F50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E54 00000F54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E58 00000F58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E5C 00000F5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E60 00000F60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E64 00000F64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E68 00000F68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E6C 00000F6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E70 00000F70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E74 00000F74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E78 00000F78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E7C 00000F7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E80 00000F80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E84 00000F84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004E88 00000F88  7C 51 43 A6 */	mtspr 0x111, r2
/* 80004E8C 00000F8C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004E90 00000F90  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004E94 00000F94  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004E98 00000F98  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80004E9C 00000F9C  7C 60 00 A6 */	mfmsr r3
/* 80004EA0 00000FA0  60 63 00 30 */	ori r3, r3, 0x30
/* 80004EA4 00000FA4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80004EA8 00000FA8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80004EAC 00000FAC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80004EB0 00000FB0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80004EB4 00000FB4  38 60 0D 00 */	li r3, 0xd00
/* 80004EB8 00000FB8  4C 00 00 64 */	rfi 
/* 80004EBC 00000FBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EC0 00000FC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EC4 00000FC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EC8 00000FC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004ECC 00000FCC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004ED0 00000FD0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004ED4 00000FD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004ED8 00000FD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EDC 00000FDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EE0 00000FE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EE4 00000FE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EE8 00000FE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EEC 00000FEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EF0 00000FF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EF4 00000FF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EF8 00000FF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004EFC 00000FFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F00 00001000  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F04 00001004  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F08 00001008  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F0C 0000100C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F10 00001010  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F14 00001014  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F18 00001018  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F1C 0000101C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F20 00001020  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F24 00001024  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F28 00001028  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F2C 0000102C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F30 00001030  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F34 00001034  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F38 00001038  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F3C 0000103C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F40 00001040  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F44 00001044  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F48 00001048  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F4C 0000104C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F50 00001050  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F54 00001054  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F58 00001058  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F5C 0000105C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F60 00001060  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F64 00001064  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F68 00001068  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F6C 0000106C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F70 00001070  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F74 00001074  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F78 00001078  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F7C 0000107C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F80 00001080  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F84 00001084  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004F88 00001088  7C 51 43 A6 */	mtspr 0x111, r2
/* 80004F8C 0000108C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80004F90 00001090  7C 93 43 A6 */	mtspr 0x113, r4
/* 80004F94 00001094  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80004F98 00001098  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80004F9C 0000109C  7C 60 00 A6 */	mfmsr r3
/* 80004FA0 000010A0  60 63 00 30 */	ori r3, r3, 0x30
/* 80004FA4 000010A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80004FA8 000010A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80004FAC 000010AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80004FB0 000010B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80004FB4 000010B4  38 60 0E 00 */	li r3, 0xe00
/* 80004FB8 000010B8  4C 00 00 64 */	rfi 
/* 80004FBC 000010BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FC0 000010C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FC4 000010C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FC8 000010C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FCC 000010CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FD0 000010D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FD4 000010D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FD8 000010D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FDC 000010DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FE0 000010E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FE4 000010E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FE8 000010E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FEC 000010EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FF0 000010F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FF4 000010F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FF8 000010F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80004FFC 000010FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005000 00001100  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005004 00001104  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005008 00001108  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000500C 0000110C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005010 00001110  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005014 00001114  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005018 00001118  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000501C 0000111C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005020 00001120  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005024 00001124  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005028 00001128  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000502C 0000112C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005030 00001130  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005034 00001134  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005038 00001138  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000503C 0000113C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005040 00001140  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005044 00001144  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005048 00001148  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000504C 0000114C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005050 00001150  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005054 00001154  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005058 00001158  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000505C 0000115C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005060 00001160  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005064 00001164  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005068 00001168  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000506C 0000116C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005070 00001170  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005074 00001174  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005078 00001178  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000507C 0000117C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005080 00001180  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005084 00001184  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005088 00001188  48 00 00 54 */	b lbl_800050DC
/* 8000508C 0000118C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005090 00001190  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005094 00001194  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005098 00001198  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000509C 0000119C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800050A0 000011A0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800050A4 000011A4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800050A8 000011A8  7C 51 43 A6 */	mtspr 0x111, r2
/* 800050AC 000011AC  7C 72 43 A6 */	mtspr 0x112, r3
/* 800050B0 000011B0  7C 93 43 A6 */	mtspr 0x113, r4
/* 800050B4 000011B4  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 800050B8 000011B8  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 800050BC 000011BC  7C 60 00 A6 */	mfmsr r3
/* 800050C0 000011C0  60 63 00 30 */	ori r3, r3, 0x30
/* 800050C4 000011C4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800050C8 000011C8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800050CC 000011CC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800050D0 000011D0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800050D4 000011D4  38 60 0F 20 */	li r3, 0xf20
/* 800050D8 000011D8  4C 00 00 64 */	rfi 
lbl_800050DC:
/* 800050DC 000011DC  7C 51 43 A6 */	mtspr 0x111, r2
/* 800050E0 000011E0  7C 72 43 A6 */	mtspr 0x112, r3
/* 800050E4 000011E4  7C 93 43 A6 */	mtspr 0x113, r4
/* 800050E8 000011E8  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 800050EC 000011EC  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 800050F0 000011F0  7C 60 00 A6 */	mfmsr r3
/* 800050F4 000011F4  60 63 00 30 */	ori r3, r3, 0x30
/* 800050F8 000011F8  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800050FC 000011FC  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80005100 00001200  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80005104 00001204  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80005108 00001208  38 60 0F 00 */	li r3, 0xf00
/* 8000510C 0000120C  4C 00 00 64 */	rfi 
/* 80005110 00001210  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005114 00001214  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005118 00001218  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000511C 0000121C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005120 00001220  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005124 00001224  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005128 00001228  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000512C 0000122C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005130 00001230  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005134 00001234  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005138 00001238  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000513C 0000123C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005140 00001240  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005144 00001244  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005148 00001248  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000514C 0000124C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005150 00001250  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005154 00001254  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005158 00001258  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000515C 0000125C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005160 00001260  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005164 00001264  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005168 00001268  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000516C 0000126C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005170 00001270  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005174 00001274  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005178 00001278  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000517C 0000127C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005180 00001280  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005184 00001284  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005188 00001288  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000518C 0000128C  7C 40 00 26 */	mfcr r2
/* 80005190 00001290  7C 52 43 A6 */	mtspr 0x112, r2
/* 80005194 00001294  7C 40 00 A6 */	mfmsr r2
/* 80005198 00001298  74 42 00 02 */	andis. r2, r2, 2
/* 8000519C 0000129C  41 82 00 1C */	beq lbl_800051B8
/* 800051A0 000012A0  7C 40 00 A6 */	mfmsr r2
/* 800051A4 000012A4  6C 42 00 02 */	xoris r2, r2, 2
/* 800051A8 000012A8  7C 00 04 AC */	sync 0
/* 800051AC 000012AC  7C 40 01 24 */	mtmsr r2
/* 800051B0 000012B0  7C 00 04 AC */	sync 0
/* 800051B4 000012B4  7C 51 43 A6 */	mtspr 0x111, r2
lbl_800051B8:
/* 800051B8 000012B8  7C 52 42 A6 */	mfspr r2, 0x112
/* 800051BC 000012BC  7C 4F F1 20 */	mtcrf 0xff, r2
/* 800051C0 000012C0  7C 51 42 A6 */	mfspr r2, 0x111
/* 800051C4 000012C4  7C 51 43 A6 */	mtspr 0x111, r2
/* 800051C8 000012C8  7C 72 43 A6 */	mtspr 0x112, r3
/* 800051CC 000012CC  7C 93 43 A6 */	mtspr 0x113, r4
/* 800051D0 000012D0  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 800051D4 000012D4  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 800051D8 000012D8  7C 60 00 A6 */	mfmsr r3
/* 800051DC 000012DC  60 63 00 30 */	ori r3, r3, 0x30
/* 800051E0 000012E0  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800051E4 000012E4  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800051E8 000012E8  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800051EC 000012EC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800051F0 000012F0  38 60 10 00 */	li r3, 0x1000
/* 800051F4 000012F4  4C 00 00 64 */	rfi 
/* 800051F8 000012F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800051FC 000012FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005200 00001300  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005204 00001304  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005208 00001308  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000520C 0000130C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005210 00001310  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005214 00001314  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005218 00001318  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000521C 0000131C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005220 00001320  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005224 00001324  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005228 00001328  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000522C 0000132C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005230 00001330  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005234 00001334  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005238 00001338  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000523C 0000133C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005240 00001340  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005244 00001344  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005248 00001348  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000524C 0000134C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005250 00001350  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005254 00001354  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005258 00001358  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000525C 0000135C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005260 00001360  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005264 00001364  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005268 00001368  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000526C 0000136C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005270 00001370  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005274 00001374  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005278 00001378  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000527C 0000137C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005280 00001380  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005284 00001384  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005288 00001388  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000528C 0000138C  7C 40 00 26 */	mfcr r2
/* 80005290 00001390  7C 52 43 A6 */	mtspr 0x112, r2
/* 80005294 00001394  7C 40 00 A6 */	mfmsr r2
/* 80005298 00001398  74 42 00 02 */	andis. r2, r2, 2
/* 8000529C 0000139C  41 82 00 1C */	beq lbl_800052B8
/* 800052A0 000013A0  7C 40 00 A6 */	mfmsr r2
/* 800052A4 000013A4  6C 42 00 02 */	xoris r2, r2, 2
/* 800052A8 000013A8  7C 00 04 AC */	sync 0
/* 800052AC 000013AC  7C 40 01 24 */	mtmsr r2
/* 800052B0 000013B0  7C 00 04 AC */	sync 0
/* 800052B4 000013B4  7C 51 43 A6 */	mtspr 0x111, r2
lbl_800052B8:
/* 800052B8 000013B8  7C 52 42 A6 */	mfspr r2, 0x112
/* 800052BC 000013BC  7C 4F F1 20 */	mtcrf 0xff, r2
/* 800052C0 000013C0  7C 51 42 A6 */	mfspr r2, 0x111
/* 800052C4 000013C4  7C 51 43 A6 */	mtspr 0x111, r2
/* 800052C8 000013C8  7C 72 43 A6 */	mtspr 0x112, r3
/* 800052CC 000013CC  7C 93 43 A6 */	mtspr 0x113, r4
/* 800052D0 000013D0  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 800052D4 000013D4  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 800052D8 000013D8  7C 60 00 A6 */	mfmsr r3
/* 800052DC 000013DC  60 63 00 30 */	ori r3, r3, 0x30
/* 800052E0 000013E0  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800052E4 000013E4  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800052E8 000013E8  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800052EC 000013EC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800052F0 000013F0  38 60 11 00 */	li r3, 0x1100
/* 800052F4 000013F4  4C 00 00 64 */	rfi 
/* 800052F8 000013F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800052FC 000013FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005300 00001400  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005304 00001404  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005308 00001408  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000530C 0000140C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005310 00001410  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005314 00001414  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005318 00001418  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000531C 0000141C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005320 00001420  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005324 00001424  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005328 00001428  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000532C 0000142C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005330 00001430  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005334 00001434  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005338 00001438  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000533C 0000143C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005340 00001440  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005344 00001444  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005348 00001448  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000534C 0000144C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005350 00001450  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005354 00001454  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005358 00001458  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000535C 0000145C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005360 00001460  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005364 00001464  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005368 00001468  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000536C 0000146C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005370 00001470  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005374 00001474  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005378 00001478  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000537C 0000147C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005380 00001480  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005384 00001484  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005388 00001488  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000538C 0000148C  7C 40 00 26 */	mfcr r2
/* 80005390 00001490  7C 52 43 A6 */	mtspr 0x112, r2
/* 80005394 00001494  7C 40 00 A6 */	mfmsr r2
/* 80005398 00001498  74 42 00 02 */	andis. r2, r2, 2
/* 8000539C 0000149C  41 82 00 1C */	beq lbl_800053B8
/* 800053A0 000014A0  7C 40 00 A6 */	mfmsr r2
/* 800053A4 000014A4  6C 42 00 02 */	xoris r2, r2, 2
/* 800053A8 000014A8  7C 00 04 AC */	sync 0
/* 800053AC 000014AC  7C 40 01 24 */	mtmsr r2
/* 800053B0 000014B0  7C 00 04 AC */	sync 0
/* 800053B4 000014B4  7C 51 43 A6 */	mtspr 0x111, r2
lbl_800053B8:
/* 800053B8 000014B8  7C 52 42 A6 */	mfspr r2, 0x112
/* 800053BC 000014BC  7C 4F F1 20 */	mtcrf 0xff, r2
/* 800053C0 000014C0  7C 51 42 A6 */	mfspr r2, 0x111
/* 800053C4 000014C4  7C 51 43 A6 */	mtspr 0x111, r2
/* 800053C8 000014C8  7C 72 43 A6 */	mtspr 0x112, r3
/* 800053CC 000014CC  7C 93 43 A6 */	mtspr 0x113, r4
/* 800053D0 000014D0  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 800053D4 000014D4  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 800053D8 000014D8  7C 60 00 A6 */	mfmsr r3
/* 800053DC 000014DC  60 63 00 30 */	ori r3, r3, 0x30
/* 800053E0 000014E0  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800053E4 000014E4  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800053E8 000014E8  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800053EC 000014EC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800053F0 000014F0  38 60 12 00 */	li r3, 0x1200
/* 800053F4 000014F4  4C 00 00 64 */	rfi 
/* 800053F8 000014F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800053FC 000014FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005400 00001500  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005404 00001504  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005408 00001508  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000540C 0000150C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005410 00001510  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005414 00001514  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005418 00001518  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000541C 0000151C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005420 00001520  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005424 00001524  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005428 00001528  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000542C 0000152C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005430 00001530  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005434 00001534  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005438 00001538  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000543C 0000153C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005440 00001540  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005444 00001544  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005448 00001548  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000544C 0000154C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005450 00001550  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005454 00001554  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005458 00001558  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000545C 0000155C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005460 00001560  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005464 00001564  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005468 00001568  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000546C 0000156C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005470 00001570  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005474 00001574  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005478 00001578  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000547C 0000157C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005480 00001580  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005484 00001584  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005488 00001588  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000548C 0000158C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005490 00001590  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005494 00001594  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005498 00001598  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000549C 0000159C  7C 60 00 A6 */	mfmsr r3
/* 800054A0 000015A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800054A4 000015A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800054A8 000015A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800054AC 000015AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800054B0 000015B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800054B4 000015B4  38 60 13 00 */	li r3, 0x1300
/* 800054B8 000015B8  4C 00 00 64 */	rfi 
/* 800054BC 000015BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054C0 000015C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054C4 000015C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054C8 000015C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054CC 000015CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054D0 000015D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054D4 000015D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054D8 000015D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054DC 000015DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054E0 000015E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054E4 000015E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054E8 000015E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054EC 000015EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054F0 000015F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054F4 000015F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054F8 000015F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800054FC 000015FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005500 00001600  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005504 00001604  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005508 00001608  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000550C 0000160C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005510 00001610  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005514 00001614  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005518 00001618  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000551C 0000161C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005520 00001620  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005524 00001624  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005528 00001628  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000552C 0000162C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005530 00001630  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005534 00001634  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005538 00001638  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000553C 0000163C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005540 00001640  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005544 00001644  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005548 00001648  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000554C 0000164C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005550 00001650  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005554 00001654  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005558 00001658  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000555C 0000165C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005560 00001660  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005564 00001664  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005568 00001668  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000556C 0000166C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005570 00001670  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005574 00001674  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005578 00001678  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000557C 0000167C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005580 00001680  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005584 00001684  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005588 00001688  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000558C 0000168C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005590 00001690  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005594 00001694  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005598 00001698  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000559C 0000169C  7C 60 00 A6 */	mfmsr r3
/* 800055A0 000016A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800055A4 000016A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800055A8 000016A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800055AC 000016AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800055B0 000016B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800055B4 000016B4  38 60 14 00 */	li r3, 0x1400
/* 800055B8 000016B8  4C 00 00 64 */	rfi 
/* 800055BC 000016BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055C0 000016C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055C4 000016C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055C8 000016C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055CC 000016CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055D0 000016D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055D4 000016D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055D8 000016D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055DC 000016DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055E0 000016E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055E4 000016E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055E8 000016E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055EC 000016EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055F0 000016F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055F4 000016F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055F8 000016F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800055FC 000016FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005600 00001700  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005604 00001704  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005608 00001708  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000560C 0000170C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005610 00001710  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005614 00001714  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005618 00001718  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000561C 0000171C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005620 00001720  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005624 00001724  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005628 00001728  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000562C 0000172C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005630 00001730  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005634 00001734  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005638 00001738  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000563C 0000173C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005640 00001740  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005644 00001744  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005648 00001748  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000564C 0000174C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005650 00001750  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005654 00001754  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005658 00001758  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000565C 0000175C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005660 00001760  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005664 00001764  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005668 00001768  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000566C 0000176C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005670 00001770  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005674 00001774  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005678 00001778  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000567C 0000177C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005680 00001780  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005684 00001784  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005688 00001788  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000568C 0000178C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005690 00001790  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005694 00001794  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005698 00001798  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000569C 0000179C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056A0 000017A0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056A4 000017A4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056A8 000017A8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056AC 000017AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056B0 000017B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056B4 000017B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056B8 000017B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056BC 000017BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056C0 000017C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056C4 000017C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056C8 000017C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056CC 000017CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056D0 000017D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056D4 000017D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056D8 000017D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056DC 000017DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056E0 000017E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056E4 000017E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056E8 000017E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056EC 000017EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056F0 000017F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056F4 000017F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056F8 000017F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800056FC 000017FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005700 00001800  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005704 00001804  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005708 00001808  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000570C 0000180C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005710 00001810  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005714 00001814  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005718 00001818  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000571C 0000181C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005720 00001820  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005724 00001824  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005728 00001828  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000572C 0000182C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005730 00001830  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005734 00001834  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005738 00001838  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000573C 0000183C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005740 00001840  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005744 00001844  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005748 00001848  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000574C 0000184C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005750 00001850  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005754 00001854  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005758 00001858  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000575C 0000185C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005760 00001860  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005764 00001864  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005768 00001868  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000576C 0000186C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005770 00001870  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005774 00001874  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005778 00001878  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000577C 0000187C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005780 00001880  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005784 00001884  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005788 00001888  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000578C 0000188C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005790 00001890  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005794 00001894  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005798 00001898  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000579C 0000189C  7C 60 00 A6 */	mfmsr r3
/* 800057A0 000018A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800057A4 000018A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800057A8 000018A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800057AC 000018AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800057B0 000018B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800057B4 000018B4  38 60 16 00 */	li r3, 0x1600
/* 800057B8 000018B8  4C 00 00 64 */	rfi 
/* 800057BC 000018BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057C0 000018C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057C4 000018C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057C8 000018C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057CC 000018CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057D0 000018D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057D4 000018D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057D8 000018D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057DC 000018DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057E0 000018E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057E4 000018E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057E8 000018E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057EC 000018EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057F0 000018F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057F4 000018F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057F8 000018F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800057FC 000018FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005800 00001900  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005804 00001904  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005808 00001908  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000580C 0000190C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005810 00001910  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005814 00001914  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005818 00001918  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000581C 0000191C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005820 00001920  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005824 00001924  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005828 00001928  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000582C 0000192C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005830 00001930  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005834 00001934  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005838 00001938  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000583C 0000193C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005840 00001940  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005844 00001944  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005848 00001948  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000584C 0000194C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005850 00001950  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005854 00001954  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005858 00001958  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000585C 0000195C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005860 00001960  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005864 00001964  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005868 00001968  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000586C 0000196C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005870 00001970  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005874 00001974  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005878 00001978  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000587C 0000197C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005880 00001980  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005884 00001984  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005888 00001988  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000588C 0000198C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005890 00001990  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005894 00001994  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005898 00001998  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000589C 0000199C  7C 60 00 A6 */	mfmsr r3
/* 800058A0 000019A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800058A4 000019A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800058A8 000019A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800058AC 000019AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800058B0 000019B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800058B4 000019B4  38 60 17 00 */	li r3, 0x1700
/* 800058B8 000019B8  4C 00 00 64 */	rfi 
/* 800058BC 000019BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058C0 000019C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058C4 000019C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058C8 000019C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058CC 000019CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058D0 000019D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058D4 000019D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058D8 000019D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058DC 000019DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058E0 000019E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058E4 000019E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058E8 000019E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058EC 000019EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058F0 000019F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058F4 000019F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058F8 000019F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800058FC 000019FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005900 00001A00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005904 00001A04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005908 00001A08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000590C 00001A0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005910 00001A10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005914 00001A14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005918 00001A18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000591C 00001A1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005920 00001A20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005924 00001A24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005928 00001A28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000592C 00001A2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005930 00001A30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005934 00001A34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005938 00001A38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000593C 00001A3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005940 00001A40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005944 00001A44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005948 00001A48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000594C 00001A4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005950 00001A50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005954 00001A54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005958 00001A58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000595C 00001A5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005960 00001A60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005964 00001A64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005968 00001A68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000596C 00001A6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005970 00001A70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005974 00001A74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005978 00001A78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000597C 00001A7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005980 00001A80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005984 00001A84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005988 00001A88  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000598C 00001A8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005990 00001A90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005994 00001A94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005998 00001A98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000599C 00001A9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059A0 00001AA0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059A4 00001AA4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059A8 00001AA8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059AC 00001AAC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059B0 00001AB0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059B4 00001AB4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059B8 00001AB8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059BC 00001ABC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059C0 00001AC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059C4 00001AC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059C8 00001AC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059CC 00001ACC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059D0 00001AD0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059D4 00001AD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059D8 00001AD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059DC 00001ADC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059E0 00001AE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059E4 00001AE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059E8 00001AE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059EC 00001AEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059F0 00001AF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059F4 00001AF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059F8 00001AF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800059FC 00001AFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A00 00001B00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A04 00001B04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A08 00001B08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A0C 00001B0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A10 00001B10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A14 00001B14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A18 00001B18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A1C 00001B1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A20 00001B20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A24 00001B24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A28 00001B28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A2C 00001B2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A30 00001B30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A34 00001B34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A38 00001B38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A3C 00001B3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A40 00001B40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A44 00001B44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A48 00001B48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A4C 00001B4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A50 00001B50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A54 00001B54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A58 00001B58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A5C 00001B5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A60 00001B60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A64 00001B64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A68 00001B68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A6C 00001B6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A70 00001B70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A74 00001B74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A78 00001B78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A7C 00001B7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A80 00001B80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A84 00001B84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A88 00001B88  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A8C 00001B8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A90 00001B90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A94 00001B94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A98 00001B98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005A9C 00001B9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AA0 00001BA0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AA4 00001BA4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AA8 00001BA8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AAC 00001BAC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AB0 00001BB0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AB4 00001BB4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AB8 00001BB8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ABC 00001BBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AC0 00001BC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AC4 00001BC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AC8 00001BC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ACC 00001BCC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AD0 00001BD0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AD4 00001BD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AD8 00001BD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ADC 00001BDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AE0 00001BE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AE4 00001BE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AE8 00001BE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AEC 00001BEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AF0 00001BF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AF4 00001BF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AF8 00001BF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005AFC 00001BFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B00 00001C00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B04 00001C04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B08 00001C08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B0C 00001C0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B10 00001C10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B14 00001C14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B18 00001C18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B1C 00001C1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B20 00001C20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B24 00001C24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B28 00001C28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B2C 00001C2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B30 00001C30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B34 00001C34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B38 00001C38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B3C 00001C3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B40 00001C40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B44 00001C44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B48 00001C48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B4C 00001C4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B50 00001C50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B54 00001C54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B58 00001C58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B5C 00001C5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B60 00001C60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B64 00001C64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B68 00001C68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B6C 00001C6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B70 00001C70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B74 00001C74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B78 00001C78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B7C 00001C7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B80 00001C80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B84 00001C84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B88 00001C88  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B8C 00001C8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B90 00001C90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B94 00001C94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B98 00001C98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005B9C 00001C9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BA0 00001CA0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BA4 00001CA4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BA8 00001CA8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BAC 00001CAC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BB0 00001CB0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BB4 00001CB4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BB8 00001CB8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BBC 00001CBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BC0 00001CC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BC4 00001CC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BC8 00001CC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BCC 00001CCC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BD0 00001CD0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BD4 00001CD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BD8 00001CD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BDC 00001CDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BE0 00001CE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BE4 00001CE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BE8 00001CE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BEC 00001CEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BF0 00001CF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BF4 00001CF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BF8 00001CF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005BFC 00001CFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C00 00001D00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C04 00001D04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C08 00001D08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C0C 00001D0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C10 00001D10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C14 00001D14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C18 00001D18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C1C 00001D1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C20 00001D20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C24 00001D24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C28 00001D28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C2C 00001D2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C30 00001D30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C34 00001D34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C38 00001D38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C3C 00001D3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C40 00001D40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C44 00001D44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C48 00001D48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C4C 00001D4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C50 00001D50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C54 00001D54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C58 00001D58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C5C 00001D5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C60 00001D60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C64 00001D64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C68 00001D68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C6C 00001D6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C70 00001D70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C74 00001D74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C78 00001D78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C7C 00001D7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C80 00001D80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C84 00001D84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C88 00001D88  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C8C 00001D8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C90 00001D90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C94 00001D94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C98 00001D98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005C9C 00001D9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CA0 00001DA0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CA4 00001DA4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CA8 00001DA8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CAC 00001DAC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CB0 00001DB0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CB4 00001DB4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CB8 00001DB8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CBC 00001DBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CC0 00001DC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CC4 00001DC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CC8 00001DC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CCC 00001DCC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CD0 00001DD0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CD4 00001DD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CD8 00001DD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CDC 00001DDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CE0 00001DE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CE4 00001DE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CE8 00001DE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CEC 00001DEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CF0 00001DF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CF4 00001DF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CF8 00001DF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005CFC 00001DFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D00 00001E00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D04 00001E04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D08 00001E08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D0C 00001E0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D10 00001E10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D14 00001E14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D18 00001E18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D1C 00001E1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D20 00001E20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D24 00001E24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D28 00001E28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D2C 00001E2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D30 00001E30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D34 00001E34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D38 00001E38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D3C 00001E3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D40 00001E40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D44 00001E44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D48 00001E48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D4C 00001E4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D50 00001E50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D54 00001E54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D58 00001E58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D5C 00001E5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D60 00001E60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D64 00001E64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D68 00001E68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D6C 00001E6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D70 00001E70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D74 00001E74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D78 00001E78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D7C 00001E7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D80 00001E80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D84 00001E84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005D88 00001E88  7C 51 43 A6 */	mtspr 0x111, r2
/* 80005D8C 00001E8C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005D90 00001E90  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005D94 00001E94  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005D98 00001E98  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80005D9C 00001E9C  7C 60 00 A6 */	mfmsr r3
/* 80005DA0 00001EA0  60 63 00 30 */	ori r3, r3, 0x30
/* 80005DA4 00001EA4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80005DA8 00001EA8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80005DAC 00001EAC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80005DB0 00001EB0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80005DB4 00001EB4  38 60 1C 00 */	li r3, 0x1c00
/* 80005DB8 00001EB8  4C 00 00 64 */	rfi 
/* 80005DBC 00001EBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DC0 00001EC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DC4 00001EC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DC8 00001EC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DCC 00001ECC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DD0 00001ED0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DD4 00001ED4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DD8 00001ED8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DDC 00001EDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DE0 00001EE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DE4 00001EE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DE8 00001EE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DEC 00001EEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DF0 00001EF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DF4 00001EF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DF8 00001EF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005DFC 00001EFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E00 00001F00  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E04 00001F04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E08 00001F08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E0C 00001F0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E10 00001F10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E14 00001F14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E18 00001F18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E1C 00001F1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E20 00001F20  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E24 00001F24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E28 00001F28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E2C 00001F2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E30 00001F30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E34 00001F34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E38 00001F38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E3C 00001F3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E40 00001F40  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E44 00001F44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E48 00001F48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E4C 00001F4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E50 00001F50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E54 00001F54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E58 00001F58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E5C 00001F5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E60 00001F60  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E64 00001F64  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E68 00001F68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E6C 00001F6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E70 00001F70  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E74 00001F74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E78 00001F78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E7C 00001F7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E80 00001F80  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E84 00001F84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005E88 00001F88  7C 51 43 A6 */	mtspr 0x111, r2
/* 80005E8C 00001F8C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005E90 00001F90  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005E94 00001F94  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005E98 00001F98  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80005E9C 00001F9C  7C 60 00 A6 */	mfmsr r3
/* 80005EA0 00001FA0  60 63 00 30 */	ori r3, r3, 0x30
/* 80005EA4 00001FA4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80005EA8 00001FA8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80005EAC 00001FAC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80005EB0 00001FB0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80005EB4 00001FB4  38 60 1D 00 */	li r3, 0x1d00
/* 80005EB8 00001FB8  4C 00 00 64 */	rfi 
/* 80005EBC 00001FBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EC0 00001FC0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EC4 00001FC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EC8 00001FC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ECC 00001FCC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ED0 00001FD0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ED4 00001FD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005ED8 00001FD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EDC 00001FDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EE0 00001FE0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EE4 00001FE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EE8 00001FE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EEC 00001FEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EF0 00001FF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EF4 00001FF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EF8 00001FF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005EFC 00001FFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F00 00002000  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F04 00002004  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F08 00002008  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F0C 0000200C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F10 00002010  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F14 00002014  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F18 00002018  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F1C 0000201C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F20 00002020  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F24 00002024  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F28 00002028  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F2C 0000202C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F30 00002030  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F34 00002034  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F38 00002038  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F3C 0000203C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F40 00002040  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F44 00002044  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F48 00002048  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F4C 0000204C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F50 00002050  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F54 00002054  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F58 00002058  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F5C 0000205C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F60 00002060  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F64 00002064  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F68 00002068  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F6C 0000206C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F70 00002070  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F74 00002074  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F78 00002078  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F7C 0000207C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F80 00002080  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F84 00002084  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005F88 00002088  7C 51 43 A6 */	mtspr 0x111, r2
/* 80005F8C 0000208C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80005F90 00002090  7C 93 43 A6 */	mtspr 0x113, r4
/* 80005F94 00002094  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80005F98 00002098  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 80005F9C 0000209C  7C 60 00 A6 */	mfmsr r3
/* 80005FA0 000020A0  60 63 00 30 */	ori r3, r3, 0x30
/* 80005FA4 000020A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80005FA8 000020A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 80005FAC 000020AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 80005FB0 000020B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80005FB4 000020B4  38 60 1E 00 */	li r3, 0x1e00
/* 80005FB8 000020B8  4C 00 00 64 */	rfi 
/* 80005FBC 000020BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FC0 000020C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FC4 000020C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FC8 000020C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FCC 000020CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FD0 000020D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FD4 000020D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FD8 000020D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FDC 000020DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FE0 000020E0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FE4 000020E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FE8 000020E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FEC 000020EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FF0 000020F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FF4 000020F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FF8 000020F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005FFC 000020FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006000 00002100  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006004 00002104  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006008 00002108  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000600C 0000210C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006010 00002110  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006014 00002114  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006018 00002118  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000601C 0000211C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006020 00002120  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006024 00002124  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006028 00002128  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000602C 0000212C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006030 00002130  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006034 00002134  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006038 00002138  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000603C 0000213C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006040 00002140  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006044 00002144  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006048 00002148  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000604C 0000214C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006050 00002150  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006054 00002154  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006058 00002158  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000605C 0000215C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006060 00002160  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006064 00002164  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006068 00002168  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000606C 0000216C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006070 00002170  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006074 00002174  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006078 00002178  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000607C 0000217C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006080 00002180  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006084 00002184  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80006088 00002188  7C 51 43 A6 */	mtspr 0x111, r2
/* 8000608C 0000218C  7C 72 43 A6 */	mtspr 0x112, r3
/* 80006090 00002190  7C 93 43 A6 */	mtspr 0x113, r4
/* 80006094 00002194  7C 5A 02 A6 */	mfspr r2, 0x1a
/* 80006098 00002198  7C 9B 02 A6 */	mfspr r4, 0x1b
/* 8000609C 0000219C  7C 60 00 A6 */	mfmsr r3
/* 800060A0 000021A0  60 63 00 30 */	ori r3, r3, 0x30
/* 800060A4 000021A4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800060A8 000021A8  3C 60 80 1D */	lis r3, TRKInterruptHandler@h
/* 800060AC 000021AC  60 63 72 5C */	ori r3, r3, TRKInterruptHandler@l
/* 800060B0 000021B0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800060B4 000021B4  38 60 1F 00 */	li r3, 0x1f00
/* 800060B8 000021B8  4C 00 00 64 */	rfi 

.global __TRK_reset
__TRK_reset:
/* 800060BC 000021BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800060C0 000021C0  7C 08 02 A6 */	mflr r0
/* 800060C4 000021C4  38 60 00 00 */	li r3, 0
/* 800060C8 000021C8  38 80 00 00 */	li r4, 0
/* 800060CC 000021CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800060D0 000021D0  38 A0 00 00 */	li r5, 0
/* 800060D4 000021D4  48 26 A2 ED */	bl OSResetSystem
/* 800060D8 000021D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800060DC 000021DC  7C 08 03 A6 */	mtlr r0
/* 800060E0 000021E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800060E4 000021E4  4E 80 00 20 */	blr 

.global func_800060E8
func_800060E8:
/* 800060E8 000021E8  3C 60 80 00 */	lis r3, 0x800030E4@ha
/* 800060EC 000021EC  A0 03 30 E4 */	lhz r0, 0x800030E4@l(r3)
/* 800060F0 000021F0  70 00 0E EF */	andi. r0, r0, 0xeef
/* 800060F4 000021F4  2C 00 0E EF */	cmpwi r0, 0xeef
/* 800060F8 000021F8  4C 82 00 20 */	bnelr 
/* 800060FC 000021FC  38 60 00 00 */	li r3, 0
/* 80006100 00002200  38 80 00 00 */	li r4, 0
/* 80006104 00002204  38 A0 00 00 */	li r5, 0
/* 80006108 00002208  48 26 A2 B8 */	b OSResetSystem
/* 8000610C 0000220C  4E 80 00 20 */	blr 

.global func_80006110
func_80006110:
/* 80006110 00002210  38 00 00 01 */	li r0, 1
/* 80006114 00002214  98 0D A8 60 */	stb r0, -0x57a0(r13)
/* 80006118 00002218  4E 80 00 20 */	blr 

.global func_8000611C
func_8000611C:
/* 8000611C 0000221C  88 6D A8 60 */	lbz r3, -0x57a0(r13)
/* 80006120 00002220  4E 80 00 20 */	blr 

.global __start
__start:
/* 80006124 00002224  48 00 01 6D */	bl __init_registers
/* 80006128 00002228  48 00 02 A1 */	bl __init_hardware
/* 8000612C 0000222C  38 00 FF FF */	li r0, -1
/* 80006130 00002230  94 21 FF F8 */	stwu r1, -8(r1)
/* 80006134 00002234  90 01 00 04 */	stw r0, 4(r1)
/* 80006138 00002238  90 01 00 00 */	stw r0, 0(r1)
/* 8000613C 0000223C  48 00 01 E5 */	bl func_80006320
/* 80006140 00002240  38 00 00 00 */	li r0, 0
/* 80006144 00002244  3C C0 80 00 */	lis r6, 0x80000044@ha
/* 80006148 00002248  38 C6 00 44 */	addi r6, r6, 0x80000044@l
/* 8000614C 0000224C  90 06 00 00 */	stw r0, 0(r6)
/* 80006150 00002250  3C C0 80 00 */	lis r6, 0x800000F4@ha
/* 80006154 00002254  38 C6 00 F4 */	addi r6, r6, 0x800000F4@l
/* 80006158 00002258  80 C6 00 00 */	lwz r6, 0(r6)
/* 8000615C 0000225C  28 06 00 00 */	cmplwi r6, 0
/* 80006160 00002260  41 82 00 0C */	beq lbl_8000616C
/* 80006164 00002264  80 E6 00 0C */	lwz r7, 0xc(r6)
/* 80006168 00002268  48 00 00 24 */	b lbl_8000618C
lbl_8000616C:
/* 8000616C 0000226C  3C A0 80 00 */	lis r5, 0x80000034@ha
/* 80006170 00002270  38 A5 00 34 */	addi r5, r5, 0x80000034@l
/* 80006174 00002274  80 A5 00 00 */	lwz r5, 0(r5)
/* 80006178 00002278  28 05 00 00 */	cmplwi r5, 0
/* 8000617C 0000227C  41 82 00 4C */	beq lbl_800061C8
/* 80006180 00002280  3C E0 80 00 */	lis r7, 0x800030E8@ha
/* 80006184 00002284  38 E7 30 E8 */	addi r7, r7, 0x800030E8@l
/* 80006188 00002288  80 E7 00 00 */	lwz r7, 0(r7)
lbl_8000618C:
/* 8000618C 0000228C  38 A0 00 00 */	li r5, 0
/* 80006190 00002290  28 07 00 02 */	cmplwi r7, 2
/* 80006194 00002294  41 82 00 24 */	beq lbl_800061B8
/* 80006198 00002298  28 07 00 03 */	cmplwi r7, 3
/* 8000619C 0000229C  38 A0 00 01 */	li r5, 1
/* 800061A0 000022A0  41 82 00 18 */	beq lbl_800061B8
/* 800061A4 000022A4  28 07 00 04 */	cmplwi r7, 4
/* 800061A8 000022A8  40 82 00 20 */	bne lbl_800061C8
/* 800061AC 000022AC  38 A0 00 02 */	li r5, 2
/* 800061B0 000022B0  4B FF FF 61 */	bl func_80006110
/* 800061B4 000022B4  48 00 00 14 */	b lbl_800061C8
lbl_800061B8:
/* 800061B8 000022B8  3C C0 80 1E */	lis r6, InitMetroTRK@ha
/* 800061BC 000022BC  38 C6 91 38 */	addi r6, r6, InitMetroTRK@l
/* 800061C0 000022C0  7C C8 03 A6 */	mtlr r6
/* 800061C4 000022C4  4E 80 00 21 */	blrl 
lbl_800061C8:
/* 800061C8 000022C8  3C C0 80 00 */	lis r6, 0x800000F4@ha
/* 800061CC 000022CC  38 C6 00 F4 */	addi r6, r6, 0x800000F4@l
/* 800061D0 000022D0  80 A6 00 00 */	lwz r5, 0(r6)
/* 800061D4 000022D4  28 05 00 00 */	cmplwi r5, 0
/* 800061D8 000022D8  41 A2 00 60 */	beq+ lbl_80006238
/* 800061DC 000022DC  80 C5 00 08 */	lwz r6, 8(r5)
/* 800061E0 000022E0  28 06 00 00 */	cmplwi r6, 0
/* 800061E4 000022E4  41 A2 00 54 */	beq+ lbl_80006238
/* 800061E8 000022E8  7C C5 32 14 */	add r6, r5, r6
/* 800061EC 000022EC  81 C6 00 00 */	lwz r14, 0(r6)
/* 800061F0 000022F0  28 0E 00 00 */	cmplwi r14, 0
/* 800061F4 000022F4  41 82 00 44 */	beq lbl_80006238
/* 800061F8 000022F8  39 E6 00 04 */	addi r15, r6, 4
/* 800061FC 000022FC  7D C9 03 A6 */	mtctr r14
lbl_80006200:
/* 80006200 00002300  38 C6 00 04 */	addi r6, r6, 4
/* 80006204 00002304  80 E6 00 00 */	lwz r7, 0(r6)
/* 80006208 00002308  7C E7 2A 14 */	add r7, r7, r5
/* 8000620C 0000230C  90 E6 00 00 */	stw r7, 0(r6)
/* 80006210 00002310  42 00 FF F0 */	bdnz lbl_80006200
/* 80006214 00002314  3C A0 80 00 */	lis r5, 0x80000034@ha
/* 80006218 00002318  38 A5 00 34 */	addi r5, r5, 0x80000034@l
/* 8000621C 0000231C  55 E7 00 34 */	rlwinm r7, r15, 0, 0, 0x1a
/* 80006220 00002320  90 E5 00 00 */	stw r7, 0(r5)
/* 80006224 00002324  3C A0 80 00 */	lis r5, 0x80003110@ha
/* 80006228 00002328  38 A5 31 10 */	addi r5, r5, 0x80003110@l
/* 8000622C 0000232C  55 E7 00 34 */	rlwinm r7, r15, 0, 0, 0x1a
/* 80006230 00002330  90 E5 00 00 */	stw r7, 0(r5)
/* 80006234 00002334  48 00 00 0C */	b lbl_80006240
lbl_80006238:
/* 80006238 00002338  39 C0 00 00 */	li r14, 0
/* 8000623C 0000233C  39 E0 00 00 */	li r15, 0
lbl_80006240:
/* 80006240 00002340  48 27 11 55 */	bl DBInit
/* 80006244 00002344  48 26 2B E5 */	bl OSInit
/* 80006248 00002348  3C 80 80 00 */	lis r4, 0x800030E6@ha
/* 8000624C 0000234C  38 84 30 E6 */	addi r4, r4, 0x800030E6@l
/* 80006250 00002350  A0 64 00 00 */	lhz r3, 0(r4)
/* 80006254 00002354  70 65 80 00 */	andi. r5, r3, 0x8000
/* 80006258 00002358  41 82 00 10 */	beq lbl_80006268
/* 8000625C 0000235C  70 63 7F FF */	andi. r3, r3, 0x7fff
/* 80006260 00002360  28 03 00 01 */	cmplwi r3, 1
/* 80006264 00002364  40 82 00 08 */	bne lbl_8000626C
lbl_80006268:
/* 80006268 00002368  4B FF FE 81 */	bl func_800060E8
lbl_8000626C:
/* 8000626C 0000236C  4B FF FE B1 */	bl func_8000611C
/* 80006270 00002370  28 03 00 01 */	cmplwi r3, 1
/* 80006274 00002374  40 82 00 08 */	bne lbl_8000627C
/* 80006278 00002378  48 1D 2F 59 */	bl InitMetroTRK_BBA
lbl_8000627C:
/* 8000627C 0000237C  48 26 E2 29 */	bl __init_user
/* 80006280 00002380  7D C3 73 78 */	mr r3, r14
/* 80006284 00002384  7D E4 7B 78 */	mr r4, r15
/* 80006288 00002388  48 00 09 3D */	bl main
/* 8000628C 0000238C  48 26 E2 80 */	b exit

.global __init_registers
__init_registers:
/* 80006290 00002390  38 00 00 00 */	li r0, 0
/* 80006294 00002394  38 60 00 00 */	li r3, 0
/* 80006298 00002398  38 80 00 00 */	li r4, 0
/* 8000629C 0000239C  38 A0 00 00 */	li r5, 0
/* 800062A0 000023A0  38 C0 00 00 */	li r6, 0
/* 800062A4 000023A4  38 E0 00 00 */	li r7, 0
/* 800062A8 000023A8  39 00 00 00 */	li r8, 0
/* 800062AC 000023AC  39 20 00 00 */	li r9, 0
/* 800062B0 000023B0  39 40 00 00 */	li r10, 0
/* 800062B4 000023B4  39 60 00 00 */	li r11, 0
/* 800062B8 000023B8  39 80 00 00 */	li r12, 0
/* 800062BC 000023BC  39 C0 00 00 */	li r14, 0
/* 800062C0 000023C0  39 E0 00 00 */	li r15, 0
/* 800062C4 000023C4  3A 00 00 00 */	li r16, 0
/* 800062C8 000023C8  3A 20 00 00 */	li r17, 0
/* 800062CC 000023CC  3A 40 00 00 */	li r18, 0
/* 800062D0 000023D0  3A 60 00 00 */	li r19, 0
/* 800062D4 000023D4  3A 80 00 00 */	li r20, 0
/* 800062D8 000023D8  3A A0 00 00 */	li r21, 0
/* 800062DC 000023DC  3A C0 00 00 */	li r22, 0
/* 800062E0 000023E0  3A E0 00 00 */	li r23, 0
/* 800062E4 000023E4  3B 00 00 00 */	li r24, 0
/* 800062E8 000023E8  3B 20 00 00 */	li r25, 0
/* 800062EC 000023EC  3B 40 00 00 */	li r26, 0
/* 800062F0 000023F0  3B 60 00 00 */	li r27, 0
/* 800062F4 000023F4  3B 80 00 00 */	li r28, 0
/* 800062F8 000023F8  3B A0 00 00 */	li r29, 0
/* 800062FC 000023FC  3B C0 00 00 */	li r30, 0
/* 80006300 00002400  3B E0 00 00 */	li r31, 0
/* 80006304 00002404  3C 20 80 65 */	lis r1, 0x80653050@h
/* 80006308 00002408  60 21 30 50 */	ori r1, r1, 0x80653050@l
/* 8000630C 0000240C  3C 40 80 64 */	lis r2, 0x80648600@h
/* 80006310 00002410  60 42 86 00 */	ori r2, r2, 0x80648600@l
/* 80006314 00002414  3D A0 80 64 */	lis r13, 0x806452C0@h
/* 80006318 00002418  61 AD 52 C0 */	ori r13, r13, 0x806452C0@l
/* 8000631C 0000241C  4E 80 00 20 */	blr 

.global func_80006320
func_80006320:
/* 80006320 00002420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006324 00002424  7C 08 02 A6 */	mflr r0
/* 80006328 00002428  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000632C 0000242C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80006330 00002430  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80006334 00002434  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80006338 00002438  3F A0 80 00 */	lis r29, lbl_80006420@ha
/* 8000633C 0000243C  3B BD 64 20 */	addi r29, r29, lbl_80006420@l
lbl_80006340:
/* 80006340 00002440  83 DD 00 08 */	lwz r30, 8(r29)
/* 80006344 00002444  2C 1E 00 00 */	cmpwi r30, 0
/* 80006348 00002448  41 82 00 38 */	beq lbl_80006380
/* 8000634C 0000244C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80006350 00002450  83 FD 00 04 */	lwz r31, 4(r29)
/* 80006354 00002454  41 82 00 24 */	beq lbl_80006378
/* 80006358 00002458  7C 1F 20 40 */	cmplw r31, r4
/* 8000635C 0000245C  41 82 00 1C */	beq lbl_80006378
/* 80006360 00002460  7F E3 FB 78 */	mr r3, r31
/* 80006364 00002464  7F C5 F3 78 */	mr r5, r30
/* 80006368 00002468  4B FF DC 99 */	bl memcpy
/* 8000636C 0000246C  7F E3 FB 78 */	mr r3, r31
/* 80006370 00002470  7F C4 F3 78 */	mr r4, r30
/* 80006374 00002474  48 00 00 79 */	bl __flush_cache
lbl_80006378:
/* 80006378 00002478  3B BD 00 0C */	addi r29, r29, 0xc
/* 8000637C 0000247C  4B FF FF C4 */	b lbl_80006340
lbl_80006380:
/* 80006380 00002480  3F A0 80 00 */	lis r29, lbl_800064A4@ha
/* 80006384 00002484  3B BD 64 A4 */	addi r29, r29, lbl_800064A4@l
lbl_80006388:
/* 80006388 00002488  80 BD 00 04 */	lwz r5, 4(r29)
/* 8000638C 0000248C  2C 05 00 00 */	cmpwi r5, 0
/* 80006390 00002490  41 82 00 1C */	beq lbl_800063AC
/* 80006394 00002494  80 7D 00 00 */	lwz r3, 0(r29)
/* 80006398 00002498  41 82 00 0C */	beq lbl_800063A4
/* 8000639C 0000249C  38 80 00 00 */	li r4, 0
/* 800063A0 000024A0  4B FF DD 65 */	bl memset
lbl_800063A4:
/* 800063A4 000024A4  3B BD 00 08 */	addi r29, r29, 8
/* 800063A8 000024A8  4B FF FF E0 */	b lbl_80006388
lbl_800063AC:
/* 800063AC 000024AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800063B0 000024B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800063B4 000024B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800063B8 000024B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800063BC 000024BC  7C 08 03 A6 */	mtlr r0
/* 800063C0 000024C0  38 21 00 20 */	addi r1, r1, 0x20
/* 800063C4 000024C4  4E 80 00 20 */	blr 

.global __init_hardware
__init_hardware:
/* 800063C8 000024C8  7C 00 00 A6 */	mfmsr r0
/* 800063CC 000024CC  60 00 20 00 */	ori r0, r0, 0x2000
/* 800063D0 000024D0  7C 00 01 24 */	mtmsr r0
/* 800063D4 000024D4  7F E8 02 A6 */	mflr r31
/* 800063D8 000024D8  48 26 32 15 */	bl __OSPSInit
/* 800063DC 000024DC  48 26 1F BD */	bl __OSFPRInit
/* 800063E0 000024E0  48 26 46 FD */	bl __OSCacheInit
/* 800063E4 000024E4  7F E8 03 A6 */	mtlr r31
/* 800063E8 000024E8  4E 80 00 20 */	blr 

.global __flush_cache
__flush_cache:
/* 800063EC 000024EC  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800063F0 000024F0  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800063F4 000024F4  7C A5 18 38 */	and r5, r5, r3
/* 800063F8 000024F8  7C 65 18 50 */	subf r3, r5, r3
/* 800063FC 000024FC  7C 84 1A 14 */	add r4, r4, r3
lbl_80006400:
/* 80006400 00002500  7C 00 28 6C */	dcbst 0, r5
/* 80006404 00002504  7C 00 04 AC */	sync 0
/* 80006408 00002508  7C 00 2F AC */	icbi 0, r5
/* 8000640C 0000250C  30 A5 00 08 */	addic r5, r5, 8
/* 80006410 00002510  34 84 FF F8 */	addic. r4, r4, -8
/* 80006414 00002514  40 80 FF EC */	bge lbl_80006400
/* 80006418 00002518  4C 00 01 2C */	isync 
/* 8000641C 0000251C  4E 80 00 20 */	blr 
lbl_80006420: # todo pointers
/* 80006420 00002520  80 00 40 00 */	.4byte memcpy
/* 80006424 00002524  80 00 40 00 */	.4byte memcpy
/* 80006428 00002528  00 00 24 C4 */	.4byte 0x000024C4
/* 8000642C 0000252C  80 00 64 E0 */	.4byte lbl_800064E0
/* 80006430 00002530  80 00 64 E0 */	.4byte lbl_800064E0
/* 80006434 00002534  00 00 01 D0 */	.4byte 0x000001D0
/* 80006438 00002538  80 00 66 C0 */	lwz r0, 0x66c0(0)
/* 8000643C 0000253C  80 00 66 C0 */	lwz r0, 0x66c0(0)
/* 80006440 00002540  00 00 02 A8 */	.4byte 0x000002A8  /* unknown instruction */
/* 80006444 00002544  80 00 69 80 */	lwz r0, 0x6980(0)
/* 80006448 00002548  80 00 69 80 */	lwz r0, 0x6980(0)
/* 8000644C 0000254C  00 3D B4 D4 */	.4byte 0x003DB4D4  /* unknown instruction */
/* 80006450 00002550  80 3E 1E 60 */	lwz r1, 0x1e60(r30)
/* 80006454 00002554  80 3E 1E 60 */	lwz r1, 0x1e60(r30)
/* 80006458 00002558  00 00 04 30 */	.4byte 0x00000430  /* unknown instruction */
/* 8000645C 0000255C  80 3E 22 A0 */	lwz r1, 0x22a0(r30)
/* 80006460 00002560  80 3E 22 A0 */	lwz r1, 0x22a0(r30)
/* 80006464 00002564  00 00 00 0C */	.4byte 0x0000000C  /* unknown instruction */
/* 80006468 00002568  80 3E 22 C0 */	lwz r1, 0x22c0(r30)
/* 8000646C 0000256C  80 3E 22 C0 */	lwz r1, 0x22c0(r30)
/* 80006470 00002570  00 02 3A 88 */	.4byte 0x00023A88  /* unknown instruction */
/* 80006474 00002574  80 40 5D 60 */	lwz r2, 0x5d60(0)
/* 80006478 00002578  80 40 5D 60 */	lwz r2, 0x5d60(0)
/* 8000647C 0000257C  00 06 F1 A0 */	.4byte 0x0006F1A0  /* unknown instruction */
/* 80006480 00002580  80 63 D2 C0 */	lwz r3, -0x2d40(r3)
/* 80006484 00002584  80 63 D2 C0 */	lwz r3, -0x2d40(r3)
/* 80006488 00002588  00 00 16 18 */	.4byte 0x00001618  /* unknown instruction */
/* 8000648C 0000258C  80 64 06 00 */	lwz r3, 0x600(r4)
/* 80006490 00002590  80 64 06 00 */	lwz r3, 0x600(r4)
/* 80006494 00002594  00 00 2A 0C */	.4byte 0x00002A0C  /* unknown instruction */
/* 80006498 00002598  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000649C 0000259C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064A0 000025A0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_800064A4:
/* 800064A4 000025A4  80 47 4F 00 */	lwz r2, 0x4f00(r7)
/* 800064A8 000025A8  00 1C 83 B0 */	.4byte 0x001C83B0  /* unknown instruction */
/* 800064AC 000025AC  80 63 E8 E0 */	lwz r3, -0x1720(r3)
/* 800064B0 000025B0  00 00 1D 1C */	.4byte 0x00001D1C  /* unknown instruction */
/* 800064B4 000025B4  80 64 30 20 */	lwz r3, 0x3020(r4)
/* 800064B8 000025B8  00 00 00 30 */	.4byte 0x00000030  /* unknown instruction */
/* 800064BC 000025BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064C0 000025C0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064C4 000025C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064C8 000025C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064CC 000025CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064D0 000025D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064D4 000025D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064D8 000025D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800064DC 000025DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
