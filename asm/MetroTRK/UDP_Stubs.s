.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global udp_cc_post_stop
udp_cc_post_stop:
/* 801D99A8 001D5608  38 60 FF FF */	li r3, -1
/* 801D99AC 001D560C  4E 80 00 20 */	blr

.global udp_cc_pre_continue
udp_cc_pre_continue:
/* 801D99B0 001D5610  38 60 FF FF */	li r3, -1
/* 801D99B4 001D5614  4E 80 00 20 */	blr

.global udp_cc_peek
udp_cc_peek:
/* 801D99B8 001D5618  38 60 00 00 */	li r3, 0
/* 801D99BC 001D561C  4E 80 00 20 */	blr

.global udp_cc_write
udp_cc_write:
/* 801D99C0 001D5620  38 60 00 00 */	li r3, 0
/* 801D99C4 001D5624  4E 80 00 20 */	blr

.global udp_cc_read
udp_cc_read:
/* 801D99C8 001D5628  38 60 00 00 */	li r3, 0
/* 801D99CC 001D562C  4E 80 00 20 */	blr

.global udp_cc_close
udp_cc_close:
/* 801D99D0 001D5630  38 60 FF FF */	li r3, -1
/* 801D99D4 001D5634  4E 80 00 20 */	blr

.global udp_cc_open
udp_cc_open:
/* 801D99D8 001D5638  38 60 FF FF */	li r3, -1
/* 801D99DC 001D563C  4E 80 00 20 */	blr

.global udp_cc_shutdown
udp_cc_shutdown:
/* 801D99E0 001D5640  38 60 FF FF */	li r3, -1
/* 801D99E4 001D5644  4E 80 00 20 */	blr

.global udp_cc_initialize
udp_cc_initialize:
/* 801D99E8 001D5648  38 60 FF FF */	li r3, -1
/* 801D99EC 001D564C  4E 80 00 20 */	blr
