.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global lbl_80030134
lbl_80030134:
/* 80030134 0002BD94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80030138 0002BD98  7C 08 02 A6 */	mflr r0
/* 8003013C 0002BD9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80030140 0002BDA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80030144 0002BDA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80030148 0002BDA8  7C DE 33 78 */	mr r30, r6
/* 8003014C 0002BDAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80030150 0002BDB0  7C BD 2B 78 */	mr r29, r5
/* 80030154 0002BDB4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80030158 0002BDB8  7C 9C 23 78 */	mr r28, r4
/* 8003015C 0002BDBC  48 01 46 ED */	bl func_80044848
/* 80030160 0002BDC0  2C 1C 00 12 */	cmpwi r28, 0x12
/* 80030164 0002BDC4  7C 7F 1B 78 */	mr r31, r3
/* 80030168 0002BDC8  41 82 00 C4 */	beq lbl_8003022C
/* 8003016C 0002BDCC  40 80 01 70 */	bge lbl_800302DC
/* 80030170 0002BDD0  2C 1C 00 11 */	cmpwi r28, 0x11
/* 80030174 0002BDD4  40 80 00 08 */	bge lbl_8003017C
/* 80030178 0002BDD8  48 00 01 64 */	b lbl_800302DC
lbl_8003017C:
/* 8003017C 0002BDDC  A8 1D 00 08 */	lha r0, 8(r29)
/* 80030180 0002BDE0  2C 00 00 01 */	cmpwi r0, 1
/* 80030184 0002BDE4  40 82 00 0C */	bne lbl_80030190
/* 80030188 0002BDE8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8003018C 0002BDEC  48 00 00 28 */	b lbl_800301B4
lbl_80030190:
/* 80030190 0002BDF0  2C 00 00 02 */	cmpwi r0, 2
/* 80030194 0002BDF4  40 82 00 18 */	bne lbl_800301AC
/* 80030198 0002BDF8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8003019C 0002BDFC  FC 00 00 1E */	fctiwz f0, f0
/* 800301A0 0002BE00  D8 01 00 08 */	stfd f0, 8(r1)
/* 800301A4 0002BE04  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800301A8 0002BE08  48 00 00 0C */	b lbl_800301B4
lbl_800301AC:
/* 800301AC 0002BE0C  38 7D 00 08 */	addi r3, r29, 8
/* 800301B0 0002BE10  48 1F DB 85 */	bl func_8022DD34
lbl_800301B4:
/* 800301B4 0002BE14  2C 03 00 00 */	cmpwi r3, 0
/* 800301B8 0002BE18  41 80 00 0C */	blt lbl_800301C4
/* 800301BC 0002BE1C  2C 03 00 08 */	cmpwi r3, 8
/* 800301C0 0002BE20  41 80 00 0C */	blt lbl_800301CC
lbl_800301C4:
/* 800301C4 0002BE24  38 00 00 00 */	li r0, 0
/* 800301C8 0002BE28  48 00 00 0C */	b lbl_800301D4
lbl_800301CC:
/* 800301CC 0002BE2C  1C 03 00 F0 */	mulli r0, r3, 0xf0
/* 800301D0 0002BE30  7C 1F 02 14 */	add r0, r31, r0
lbl_800301D4:
/* 800301D4 0002BE34  2C 00 00 00 */	cmpwi r0, 0
/* 800301D8 0002BE38  41 82 01 04 */	beq lbl_800302DC
/* 800301DC 0002BE3C  38 60 00 2A */	li r3, 0x2a
/* 800301E0 0002BE40  38 00 00 00 */	li r0, 0
/* 800301E4 0002BE44  B0 7E 00 00 */	sth r3, 0(r30)
/* 800301E8 0002BE48  B0 1E 00 02 */	sth r0, 2(r30)
/* 800301EC 0002BE4C  A8 1D 00 08 */	lha r0, 8(r29)
/* 800301F0 0002BE50  2C 00 00 01 */	cmpwi r0, 1
/* 800301F4 0002BE54  40 82 00 0C */	bne lbl_80030200
/* 800301F8 0002BE58  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 800301FC 0002BE5C  48 00 00 28 */	b lbl_80030224
lbl_80030200:
/* 80030200 0002BE60  2C 00 00 02 */	cmpwi r0, 2
/* 80030204 0002BE64  40 82 00 18 */	bne lbl_8003021C
/* 80030208 0002BE68  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8003020C 0002BE6C  FC 00 00 1E */	fctiwz f0, f0
/* 80030210 0002BE70  D8 01 00 08 */	stfd f0, 8(r1)
/* 80030214 0002BE74  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80030218 0002BE78  48 00 00 0C */	b lbl_80030224
lbl_8003021C:
/* 8003021C 0002BE7C  38 7D 00 08 */	addi r3, r29, 8
/* 80030220 0002BE80  48 1F DB 15 */	bl func_8022DD34
lbl_80030224:
/* 80030224 0002BE84  90 7E 00 04 */	stw r3, 4(r30)
/* 80030228 0002BE88  48 00 00 B4 */	b lbl_800302DC
lbl_8003022C:
/* 8003022C 0002BE8C  A8 1D 00 08 */	lha r0, 8(r29)
/* 80030230 0002BE90  2C 00 00 01 */	cmpwi r0, 1
/* 80030234 0002BE94  40 82 00 0C */	bne lbl_80030240
/* 80030238 0002BE98  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8003023C 0002BE9C  48 00 00 28 */	b lbl_80030264
lbl_80030240:
/* 80030240 0002BEA0  2C 00 00 02 */	cmpwi r0, 2
/* 80030244 0002BEA4  40 82 00 18 */	bne lbl_8003025C
/* 80030248 0002BEA8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8003024C 0002BEAC  FC 00 00 1E */	fctiwz f0, f0
/* 80030250 0002BEB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80030254 0002BEB4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80030258 0002BEB8  48 00 00 0C */	b lbl_80030264
lbl_8003025C:
/* 8003025C 0002BEBC  38 7D 00 08 */	addi r3, r29, 8
/* 80030260 0002BEC0  48 1F DA D5 */	bl func_8022DD34
lbl_80030264:
/* 80030264 0002BEC4  2C 03 00 00 */	cmpwi r3, 0
/* 80030268 0002BEC8  41 80 00 0C */	blt lbl_80030274
/* 8003026C 0002BECC  2C 03 00 08 */	cmpwi r3, 8
/* 80030270 0002BED0  41 80 00 0C */	blt lbl_8003027C
lbl_80030274:
/* 80030274 0002BED4  38 00 00 00 */	li r0, 0
/* 80030278 0002BED8  48 00 00 10 */	b lbl_80030288
lbl_8003027C:
/* 8003027C 0002BEDC  1C 03 00 E8 */	mulli r0, r3, 0xe8
/* 80030280 0002BEE0  7C 7F 02 14 */	add r3, r31, r0
/* 80030284 0002BEE4  38 03 07 80 */	addi r0, r3, 0x780
lbl_80030288:
/* 80030288 0002BEE8  2C 00 00 00 */	cmpwi r0, 0
/* 8003028C 0002BEEC  41 82 00 50 */	beq lbl_800302DC
/* 80030290 0002BEF0  38 60 00 2A */	li r3, 0x2a
/* 80030294 0002BEF4  38 00 00 00 */	li r0, 0
/* 80030298 0002BEF8  B0 7E 00 00 */	sth r3, 0(r30)
/* 8003029C 0002BEFC  B0 1E 00 02 */	sth r0, 2(r30)
/* 800302A0 0002BF00  A8 1D 00 08 */	lha r0, 8(r29)
/* 800302A4 0002BF04  2C 00 00 01 */	cmpwi r0, 1
/* 800302A8 0002BF08  40 82 00 0C */	bne lbl_800302B4
/* 800302AC 0002BF0C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 800302B0 0002BF10  48 00 00 28 */	b lbl_800302D8
lbl_800302B4:
/* 800302B4 0002BF14  2C 00 00 02 */	cmpwi r0, 2
/* 800302B8 0002BF18  40 82 00 18 */	bne lbl_800302D0
/* 800302BC 0002BF1C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 800302C0 0002BF20  FC 00 00 1E */	fctiwz f0, f0
/* 800302C4 0002BF24  D8 01 00 08 */	stfd f0, 8(r1)
/* 800302C8 0002BF28  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800302CC 0002BF2C  48 00 00 0C */	b lbl_800302D8
lbl_800302D0:
/* 800302D0 0002BF30  38 7D 00 08 */	addi r3, r29, 8
/* 800302D4 0002BF34  48 1F DA 61 */	bl func_8022DD34
lbl_800302D8:
/* 800302D8 0002BF38  90 7E 00 04 */	stw r3, 4(r30)
lbl_800302DC:
/* 800302DC 0002BF3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800302E0 0002BF40  38 60 00 01 */	li r3, 1
/* 800302E4 0002BF44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800302E8 0002BF48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800302EC 0002BF4C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800302F0 0002BF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800302F4 0002BF54  7C 08 03 A6 */	mtlr r0
/* 800302F8 0002BF58  38 21 00 20 */	addi r1, r1, 0x20
/* 800302FC 0002BF5C  4E 80 00 20 */	blr

.global func_80030300
func_80030300:
/* 80030300 0002BF60  38 A0 00 01 */	li r5, 1
/* 80030304 0002BF64  38 6D 97 48 */	addi r3, r13, lbl_8063EA08-_SDA_BASE_
/* 80030308 0002BF68  38 80 00 04 */	li r4, 4
/* 8003030C 0002BF6C  38 00 00 00 */	li r0, 0
/* 80030310 0002BF70  98 AD 97 48 */	stb r5, lbl_8063EA08-_SDA_BASE_(r13)
/* 80030314 0002BF74  B0 83 00 02 */	sth r4, 2(r3)
/* 80030318 0002BF78  98 03 00 04 */	stb r0, 4(r3)
/* 8003031C 0002BF7C  4E 80 00 20 */	blr
