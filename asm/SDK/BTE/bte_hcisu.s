.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global bte_hcisu_send
bte_hcisu_send:
/* 802BCD70 002B89D0  B0 83 00 00 */	sth r4, 0(r3)
/* 802BCD74 002B89D4  80 8D AE E0 */	lwz r4, lbl_806401A0-_SDA_BASE_(r13)
/* 802BCD78 002B89D8  2C 04 00 00 */	cmpwi r4, 0
/* 802BCD7C 002B89DC  41 82 00 10 */	beq lbl_802BCD8C
/* 802BCD80 002B89E0  81 84 00 0C */	lwz r12, 0xc(r4)
/* 802BCD84 002B89E4  7D 89 03 A6 */	mtctr r12
/* 802BCD88 002B89E8  4E 80 04 20 */	bctr
lbl_802BCD8C:
/* 802BCD8C 002B89EC  4B FF CF A8 */	b GKI_freebuf

.global bte_hcisu_task
bte_hcisu_task:
/* 802BCD90 002B89F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCD94 002B89F4  7C 08 02 A6 */	mflr r0
/* 802BCD98 002B89F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCD9C 002B89FC  80 6D AE E0 */	lwz r3, lbl_806401A0-_SDA_BASE_(r13)
/* 802BCDA0 002B8A00  2C 03 00 00 */	cmpwi r3, 0
/* 802BCDA4 002B8A04  41 82 00 40 */	beq lbl_802BCDE4
/* 802BCDA8 002B8A08  81 83 00 00 */	lwz r12, 0(r3)
/* 802BCDAC 002B8A0C  2C 0C 00 00 */	cmpwi r12, 0
/* 802BCDB0 002B8A10  41 82 00 18 */	beq lbl_802BCDC8
/* 802BCDB4 002B8A14  38 60 00 02 */	li r3, 2
/* 802BCDB8 002B8A18  38 80 00 01 */	li r4, 1
/* 802BCDBC 002B8A1C  38 A0 08 00 */	li r5, 0x800
/* 802BCDC0 002B8A20  7D 89 03 A6 */	mtctr r12
/* 802BCDC4 002B8A24  4E 80 04 21 */	bctrl
lbl_802BCDC8:
/* 802BCDC8 002B8A28  80 6D AE E0 */	lwz r3, lbl_806401A0-_SDA_BASE_(r13)
/* 802BCDCC 002B8A2C  81 83 00 04 */	lwz r12, 4(r3)
/* 802BCDD0 002B8A30  2C 0C 00 00 */	cmpwi r12, 0
/* 802BCDD4 002B8A34  41 82 00 10 */	beq lbl_802BCDE4
/* 802BCDD8 002B8A38  80 6D AE E4 */	lwz r3, lbl_806401A4-_SDA_BASE_(r13)
/* 802BCDDC 002B8A3C  7D 89 03 A6 */	mtctr r12
/* 802BCDE0 002B8A40  4E 80 04 21 */	bctrl
lbl_802BCDE4:
/* 802BCDE4 002B8A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCDE8 002B8A48  7C 08 03 A6 */	mtlr r0
/* 802BCDEC 002B8A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCDF0 002B8A50  4E 80 00 20 */	blr

.global bte_hcisu_close
bte_hcisu_close:
/* 802BCDF4 002B8A54  80 6D AE E0 */	lwz r3, lbl_806401A0-_SDA_BASE_(r13)
/* 802BCDF8 002B8A58  2C 03 00 00 */	cmpwi r3, 0
/* 802BCDFC 002B8A5C  4D 82 00 20 */	beqlr
/* 802BCE00 002B8A60  81 83 00 08 */	lwz r12, 8(r3)
/* 802BCE04 002B8A64  2C 0C 00 00 */	cmpwi r12, 0
/* 802BCE08 002B8A68  4D 82 00 20 */	beqlr
/* 802BCE0C 002B8A6C  7D 89 03 A6 */	mtctr r12
/* 802BCE10 002B8A70  4E 80 04 20 */	bctr
/* 802BCE14 002B8A74  4E 80 00 20 */	blr

.global bta_ci_hci_msg_handler
bta_ci_hci_msg_handler:
/* 802BCE18 002B8A78  7C 65 1B 78 */	mr r5, r3
/* 802BCE1C 002B8A7C  38 60 00 02 */	li r3, 2
/* 802BCE20 002B8A80  38 80 00 00 */	li r4, 0
/* 802BCE24 002B8A84  4B FF D0 C4 */	b GKI_send_msg
