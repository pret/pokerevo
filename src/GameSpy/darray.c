#include "types.h"
#include "qsort.h"
#include "nonport.h"
#include "darray.h"

#pragma auto_inline on

extern void *memcpy(void *, const void *, u32);
extern void *memmove(void *, const void *, u32);

static inline void ArrayInsert(DArray *d, void *elem, s32 n)
{
    if (d->size == d->capacity) {
        s32 newCap = d->capacity + d->growAmount;
        d->capacity = newCap;
        d->buf = gsirealloc(d->buf, newCap * d->elemSz);
    }
    d->size++;
    s32 origSize = d->size - 1;
    if (n < origSize) {
        memmove(ArrayNth(d, n+1), ArrayNth(d, n),
               (origSize - n) * d->elemSz);
    }
    memcpy(ArrayNth(d, n), elem, d->elemSz);
}

DArray *ArrayNew(u32 elemSz, s32 initialCap, DtorFunction dtor)
{
    DArray *darray = gsimalloc(sizeof(DArray));
    if (initialCap == 0)
        initialCap = 8;
    darray->size = 0;
    darray->capacity = initialCap;
    darray->elemSz = elemSz;
    darray->growAmount = initialCap;
    darray->elemDtor = dtor;
    if (initialCap != 0) {
        darray->buf = gsimalloc(initialCap * darray->elemSz);
    } else {
        darray->buf = NULL;
    }
    return darray;
}

void ArrayFree(DArray *d)
{
    for (s32 i = 0; i < d->size; i++) {
        if (d->elemDtor) {
            void *elem = ArrayNth(d, i);
            d->elemDtor(elem);
        }
    }
    gsifree(d->buf);
    gsifree(d);
}

s32 ArrayLength(DArray *d)
{
    return d->size;
}

void *ArrayNth(DArray *d, s32 n)
{
    if (n < 0 || n >= d->size)
        return NULL;
    return &d->buf[d->elemSz * n];
}

void ArrayAppend(DArray *d, void *elem)
{
    if (d) {
        ArrayInsert(d, elem, d->size);
    }
}

#ifdef NONMATCHING
void ArrayInsertSorted(DArray *d, void *elem, CompareFunction compar)
{
    char *buf;
    u32 elemSz;
    s32 mid, high, low;
    elemSz = d->elemSz;
    buf = d->buf;
    high = d->size - 1;
    low = 0;
    while (low <= high) {
        mid = (low + high) >> 1;
        s32 result = compar(&buf[mid * elemSz], elem);
        if (result < 0) {
            low = mid + 1;
        }
        if (result >= 0) {
            high = mid - 1;
        }
    }
    char *recomputeLow = &buf[low * elemSz];
    ArrayInsert(d, elem, (recomputeLow - d->buf)/ (s32)d->elemSz);
}
#else
_savegpr_23();
_restgpr_23();
_savegpr_24();
_restgpr_24();
asm void ArrayInsertSorted(DArray *d, void *elem, CompareFunction compar)
{
    nofralloc
    /* 80336044 00331CA4  94 21 FF D0 */	stwu r1, -0x30(r1)
    /* 80336048 00331CA8  7C 08 02 A6 */	mflr r0
    /* 8033604C 00331CAC  90 01 00 34 */	stw r0, 0x34(r1)
    /* 80336050 00331CB0  39 61 00 30 */	addi r11, r1, 0x30
    /* 80336054 00331CB4  4B E9 10 C9 */	bl _savegpr_24
    /* 80336058 00331CB8  80 C3 00 00 */	lwz r6, 0(r3)
    /* 8033605C 00331CBC  7C 7D 1B 78 */	mr r29, r3
    /* 80336060 00331CC0  83 83 00 08 */	lwz r28, 8(r3)
    /* 80336064 00331CC4  7C 9E 23 78 */	mr r30, r4
    /* 80336068 00331CC8  83 E3 00 14 */	lwz r31, 0x14(r3)
    /* 8033606C 00331CCC  7C B8 2B 78 */	mr r24, r5
    /* 80336070 00331CD0  3B 46 FF FF */	addi r26, r6, -1
    /* 80336074 00331CD4  3B 20 00 00 */	li r25, 0
    /* 80336078 00331CD8  48 00 00 3C */	b lbl_803360B4
    lbl_8033607C:
    /* 8033607C 00331CDC  7C 19 D2 14 */	add r0, r25, r26
    /* 80336080 00331CE0  7F 0C C3 78 */	mr r12, r24
    /* 80336084 00331CE4  7C 1B 0E 70 */	srawi r27, r0, 1
    /* 80336088 00331CE8  7F C4 F3 78 */	mr r4, r30
    /* 8033608C 00331CEC  7C 1B E1 D6 */	mullw r0, r27, r28
    /* 80336090 00331CF0  7C 7F 02 14 */	add r3, r31, r0
    /* 80336094 00331CF4  7D 89 03 A6 */	mtctr r12
    /* 80336098 00331CF8  4E 80 04 21 */	bctrl
    /* 8033609C 00331CFC  2C 03 00 00 */	cmpwi r3, 0
    /* 803360A0 00331D00  40 80 00 08 */	bge lbl_803360A8
    /* 803360A4 00331D04  3B 3B 00 01 */	addi r25, r27, 1
    lbl_803360A8:
    /* 803360A8 00331D08  2C 03 00 00 */	cmpwi r3, 0
    /* 803360AC 00331D0C  41 80 00 08 */	blt lbl_803360B4
    /* 803360B0 00331D10  3B 5B FF FF */	addi r26, r27, -1
    lbl_803360B4:
    /* 803360B4 00331D14  7C 19 D0 00 */	cmpw r25, r26
    /* 803360B8 00331D18  40 81 FF C4 */	ble lbl_8033607C
    /* 803360BC 00331D1C  7C D9 E1 D6 */	mullw r6, r25, r28
    /* 803360C0 00331D20  80 7D 00 14 */	lwz r3, 0x14(r29)
    /* 803360C4 00331D24  80 BD 00 08 */	lwz r5, 8(r29)
    /* 803360C8 00331D28  80 1D 00 00 */	lwz r0, 0(r29)
    /* 803360CC 00331D2C  80 9D 00 04 */	lwz r4, 4(r29)
    /* 803360D0 00331D30  7C DF 32 14 */	add r6, r31, r6
    /* 803360D4 00331D34  7C C3 30 50 */	subf r6, r3, r6
    /* 803360D8 00331D38  7C 00 20 00 */	cmpw r0, r4
    /* 803360DC 00331D3C  7F E6 2B D6 */	divw r31, r6, r5
    /* 803360E0 00331D40  40 82 00 1C */	bne lbl_803360FC
    /* 803360E4 00331D44  80 1D 00 0C */	lwz r0, 0xc(r29)
    /* 803360E8 00331D48  7C 04 02 14 */	add r0, r4, r0
    /* 803360EC 00331D4C  7C 80 29 D6 */	mullw r4, r0, r5
    /* 803360F0 00331D50  90 1D 00 04 */	stw r0, 4(r29)
    /* 803360F4 00331D54  48 00 32 31 */	bl gsirealloc
    /* 803360F8 00331D58  90 7D 00 14 */	stw r3, 0x14(r29)
    lbl_803360FC:
    /* 803360FC 00331D5C  80 7D 00 00 */	lwz r3, 0(r29)
    /* 80336100 00331D60  38 A3 00 01 */	addi r5, r3, 1
    /* 80336104 00331D64  38 C5 FF FF */	addi r6, r5, -1
    /* 80336108 00331D68  90 BD 00 00 */	stw r5, 0(r29)
    /* 8033610C 00331D6C  7C 1F 30 00 */	cmpw r31, r6
    /* 80336110 00331D70  40 80 00 64 */	bge lbl_80336174
    /* 80336114 00331D74  34 9F 00 01 */	addic. r4, r31, 1
    /* 80336118 00331D78  41 80 00 0C */	blt lbl_80336124
    /* 8033611C 00331D7C  7C 04 28 00 */	cmpw r4, r5
    /* 80336120 00331D80  41 80 00 0C */	blt lbl_8033612C
    lbl_80336124:
    /* 80336124 00331D84  38 60 00 00 */	li r3, 0
    /* 80336128 00331D88  48 00 00 14 */	b lbl_8033613C
    lbl_8033612C:
    /* 8033612C 00331D8C  80 1D 00 08 */	lwz r0, 8(r29)
    /* 80336130 00331D90  80 7D 00 14 */	lwz r3, 0x14(r29)
    /* 80336134 00331D94  7C 00 21 D6 */	mullw r0, r0, r4
    /* 80336138 00331D98  7C 63 02 14 */	add r3, r3, r0
    lbl_8033613C:
    /* 8033613C 00331D9C  2C 1F 00 00 */	cmpwi r31, 0
    /* 80336140 00331DA0  41 80 00 0C */	blt lbl_8033614C
    /* 80336144 00331DA4  7C 1F 28 00 */	cmpw r31, r5
    /* 80336148 00331DA8  41 80 00 0C */	blt lbl_80336154
    lbl_8033614C:
    /* 8033614C 00331DAC  38 80 00 00 */	li r4, 0
    /* 80336150 00331DB0  48 00 00 14 */	b lbl_80336164
    lbl_80336154:
    /* 80336154 00331DB4  80 1D 00 08 */	lwz r0, 8(r29)
    /* 80336158 00331DB8  80 9D 00 14 */	lwz r4, 0x14(r29)
    /* 8033615C 00331DBC  7C 00 F9 D6 */	mullw r0, r0, r31
    /* 80336160 00331DC0  7C 84 02 14 */	add r4, r4, r0
    lbl_80336164:
    /* 80336164 00331DC4  80 BD 00 08 */	lwz r5, 8(r29)
    /* 80336168 00331DC8  7C 1F 30 50 */	subf r0, r31, r6
    /* 8033616C 00331DCC  7C A5 01 D6 */	mullw r5, r5, r0
    /* 80336170 00331DD0  4B E9 41 05 */	bl memmove
    lbl_80336174:
    /* 80336174 00331DD4  2C 1F 00 00 */	cmpwi r31, 0
    /* 80336178 00331DD8  41 80 00 10 */	blt lbl_80336188
    /* 8033617C 00331DDC  80 1D 00 00 */	lwz r0, 0(r29)
    /* 80336180 00331DE0  7C 1F 00 00 */	cmpw r31, r0
    /* 80336184 00331DE4  41 80 00 0C */	blt lbl_80336190
    lbl_80336188:
    /* 80336188 00331DE8  38 60 00 00 */	li r3, 0
    /* 8033618C 00331DEC  48 00 00 14 */	b lbl_803361A0
    lbl_80336190:
    /* 80336190 00331DF0  80 1D 00 08 */	lwz r0, 8(r29)
    /* 80336194 00331DF4  80 7D 00 14 */	lwz r3, 0x14(r29)
    /* 80336198 00331DF8  7C 00 F9 D6 */	mullw r0, r0, r31
    /* 8033619C 00331DFC  7C 63 02 14 */	add r3, r3, r0
    lbl_803361A0:
    /* 803361A0 00331E00  80 BD 00 08 */	lwz r5, 8(r29)
    /* 803361A4 00331E04  7F C4 F3 78 */	mr r4, r30
    /* 803361A8 00331E08  4B CC DE 59 */	bl memcpy
    /* 803361AC 00331E0C  39 61 00 30 */	addi r11, r1, 0x30
    /* 803361B0 00331E10  4B E9 0F B9 */	bl _restgpr_24
    /* 803361B4 00331E14  80 01 00 34 */	lwz r0, 0x34(r1)
    /* 803361B8 00331E18  7C 08 03 A6 */	mtlr r0
    /* 803361BC 00331E1C  38 21 00 30 */	addi r1, r1, 0x30
    /* 803361C0 00331E20  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

void ArrayRemoveAt(DArray *d, s32 n)
{
    s32 origSize = d->size;
    s32 decOrigSize = origSize - 1;
    if (n < decOrigSize) {
        memmove(ArrayNth(d, n), ArrayNth(d, n+1), 
            d->elemSz * (decOrigSize - n));
    }
    d->size--;
}

void ArrayDeleteAt(DArray *d, s32 n)
{
    if (d->elemDtor) {
        d->elemDtor(ArrayNth(d, n));
    }
    ArrayRemoveAt(d, n);
}

void ArrayReplaceAt(DArray *d, void *elem, s32 n)
{
    if (d->elemDtor) {
        d->elemDtor(ArrayNth(d, n));
    }
    memcpy(ArrayNth(d, n), elem, d->elemSz);
}

void ArraySort(DArray *d, CompareFunction compar)
{
    qsort(d->buf, (u32)d->size, d->elemSz, compar);
}

#ifdef NONMATCHING
s32 ArraySearch(DArray *d, void *elem, CompareFunction cmp, s32 start, s32 doBinarySearch)
{
    BOOL found = TRUE;
    char *ptr;
    
    s32 arrSize;
    if (!d || (arrSize = d->size) == 0) {
        return -1;
    }
    if (doBinarySearch) {
        char *r27 = ArrayNth(d, start);
        s32 high = arrSize - start - 1;
        u32 elemSz = d->elemSz;
        s32 low = 0;
        found = FALSE;
        while (low <= high) {
            s32 mid = (low + high) >> 1;
            s32 result = cmp(&r27[mid * elemSz], elem);
            if (result == 0) {
                found = TRUE;
            }
            if (result < 0) {
                low = mid + 1;
            }
            if (result >= 0) {
                high = mid - 1;
            }
        }
        ptr = &r27[low * elemSz];
    } else {
        char *r23 = ArrayNth(d, start);
        u32 elemSz = d->elemSz;
        s32 r24 = arrSize - start;
        for (s32 i = 0, j = 0; i < r24; j += elemSz, i++) {
            if (cmp(elem, &r23[j]) == 0) {
                ptr = &r23[i * elemSz];
                goto exit;
            }
        }
        ptr = NULL;
    }
    exit:
    if (ptr && found) {
        return (ptr - d->buf) / (s32)d->elemSz;
    }
    return -1;
}
#else
asm s32 ArraySearch(DArray *d, void *elem, CompareFunction cmp, s32 start, s32 doBinarySearch)
{
    nofralloc
    /* 80336430 00332090  94 21 FF D0 */	stwu r1, -0x30(r1)
    /* 80336434 00332094  7C 08 02 A6 */	mflr r0
    /* 80336438 00332098  90 01 00 34 */	stw r0, 0x34(r1)
    /* 8033643C 0033209C  39 61 00 30 */	addi r11, r1, 0x30
    /* 80336440 003320A0  4B E9 0C D9 */	bl _savegpr_23
    /* 80336444 003320A4  2C 03 00 00 */	cmpwi r3, 0
    /* 80336448 003320A8  7C 7C 1B 78 */	mr r28, r3
    /* 8033644C 003320AC  7C 9D 23 78 */	mr r29, r4
    /* 80336450 003320B0  7C BE 2B 78 */	mr r30, r5
    /* 80336454 003320B4  3B E0 00 01 */	li r31, 1
    /* 80336458 003320B8  41 82 00 10 */	beq lbl_80336468
    /* 8033645C 003320BC  80 A3 00 00 */	lwz r5, 0(r3)
    /* 80336460 003320C0  2C 05 00 00 */	cmpwi r5, 0
    /* 80336464 003320C4  40 82 00 0C */	bne lbl_80336470
    lbl_80336468:
    /* 80336468 003320C8  38 60 FF FF */	li r3, -1
    /* 8033646C 003320CC  48 00 01 44 */	b lbl_803365B0
    lbl_80336470:
    /* 80336470 003320D0  2C 07 00 00 */	cmpwi r7, 0
    /* 80336474 003320D4  41 82 00 9C */	beq lbl_80336510
    /* 80336478 003320D8  2C 06 00 00 */	cmpwi r6, 0
    /* 8033647C 003320DC  41 80 00 0C */	blt lbl_80336488
    /* 80336480 003320E0  7C 06 28 00 */	cmpw r6, r5
    /* 80336484 003320E4  41 80 00 0C */	blt lbl_80336490
    lbl_80336488:
    /* 80336488 003320E8  3B 60 00 00 */	li r27, 0
    /* 8033648C 003320EC  48 00 00 14 */	b lbl_803364A0
    lbl_80336490:
    /* 80336490 003320F0  80 03 00 08 */	lwz r0, 8(r3)
    /* 80336494 003320F4  80 83 00 14 */	lwz r4, 0x14(r3)
    /* 80336498 003320F8  7C 00 31 D6 */	mullw r0, r0, r6
    /* 8033649C 003320FC  7F 64 02 14 */	add r27, r4, r0
    lbl_803364A0:
    /* 803364A0 00332100  7C 86 28 50 */	subf r4, r6, r5
    /* 803364A4 00332104  83 43 00 08 */	lwz r26, 8(r3)
    /* 803364A8 00332108  3B 04 FF FF */	addi r24, r4, -1
    /* 803364AC 0033210C  3A E0 00 00 */	li r23, 0
    /* 803364B0 00332110  3B E0 00 00 */	li r31, 0
    /* 803364B4 00332114  48 00 00 48 */	b lbl_803364FC
    lbl_803364B8:
    /* 803364B8 00332118  7C 17 C2 14 */	add r0, r23, r24
    /* 803364BC 0033211C  7F CC F3 78 */	mr r12, r30
    /* 803364C0 00332120  7C 19 0E 70 */	srawi r25, r0, 1
    /* 803364C4 00332124  7F A4 EB 78 */	mr r4, r29
    /* 803364C8 00332128  7C 19 D1 D6 */	mullw r0, r25, r26
    /* 803364CC 0033212C  7C 7B 02 14 */	add r3, r27, r0
    /* 803364D0 00332130  7D 89 03 A6 */	mtctr r12
    /* 803364D4 00332134  4E 80 04 21 */	bctrl
    /* 803364D8 00332138  2C 03 00 00 */	cmpwi r3, 0
    /* 803364DC 0033213C  40 82 00 08 */	bne lbl_803364E4
    /* 803364E0 00332140  3B E0 00 01 */	li r31, 1
    lbl_803364E4:
    /* 803364E4 00332144  2C 03 00 00 */	cmpwi r3, 0
    /* 803364E8 00332148  40 80 00 08 */	bge lbl_803364F0
    /* 803364EC 0033214C  3A F9 00 01 */	addi r23, r25, 1
    lbl_803364F0:
    /* 803364F0 00332150  2C 03 00 00 */	cmpwi r3, 0
    /* 803364F4 00332154  41 80 00 08 */	blt lbl_803364FC
    /* 803364F8 00332158  3B 19 FF FF */	addi r24, r25, -1
    lbl_803364FC:
    /* 803364FC 0033215C  7C 17 C0 00 */	cmpw r23, r24
    /* 80336500 00332160  40 81 FF B8 */	ble lbl_803364B8
    /* 80336504 00332164  7C 17 D1 D6 */	mullw r0, r23, r26
    /* 80336508 00332168  7C 9B 02 14 */	add r4, r27, r0
    /* 8033650C 0033216C  48 00 00 7C */	b lbl_80336588
    lbl_80336510:
    /* 80336510 00332170  2C 06 00 00 */	cmpwi r6, 0
    /* 80336514 00332174  41 80 00 0C */	blt lbl_80336520
    /* 80336518 00332178  7C 06 28 00 */	cmpw r6, r5
    /* 8033651C 0033217C  41 80 00 0C */	blt lbl_80336528
    lbl_80336520:
    /* 80336520 00332180  3A E0 00 00 */	li r23, 0
    /* 80336524 00332184  48 00 00 14 */	b lbl_80336538
    lbl_80336528:
    /* 80336528 00332188  80 03 00 08 */	lwz r0, 8(r3)
    /* 8033652C 0033218C  80 83 00 14 */	lwz r4, 0x14(r3)
    /* 80336530 00332190  7C 00 31 D6 */	mullw r0, r0, r6
    /* 80336534 00332194  7E E4 02 14 */	add r23, r4, r0
    lbl_80336538:
    /* 80336538 00332198  83 23 00 08 */	lwz r25, 8(r3)
    /* 8033653C 0033219C  7F 06 28 50 */	subf r24, r6, r5
    /* 80336540 003321A0  3B 40 00 00 */	li r26, 0
    /* 80336544 003321A4  3B 60 00 00 */	li r27, 0
    /* 80336548 003321A8  48 00 00 34 */	b lbl_8033657C
    lbl_8033654C:
    /* 8033654C 003321AC  7F CC F3 78 */	mr r12, r30
    /* 80336550 003321B0  7F A3 EB 78 */	mr r3, r29
    /* 80336554 003321B4  7C 97 DA 14 */	add r4, r23, r27
    /* 80336558 003321B8  7D 89 03 A6 */	mtctr r12
    /* 8033655C 003321BC  4E 80 04 21 */	bctrl
    /* 80336560 003321C0  2C 03 00 00 */	cmpwi r3, 0
    /* 80336564 003321C4  40 82 00 10 */	bne lbl_80336574
    /* 80336568 003321C8  7C 19 D1 D6 */	mullw r0, r25, r26
    /* 8033656C 003321CC  7C 97 02 14 */	add r4, r23, r0
    /* 80336570 003321D0  48 00 00 18 */	b lbl_80336588
    lbl_80336574:
    /* 80336574 003321D4  7F 7B CA 14 */	add r27, r27, r25
    /* 80336578 003321D8  3B 5A 00 01 */	addi r26, r26, 1
    lbl_8033657C:
    /* 8033657C 003321DC  7C 1A C0 00 */	cmpw r26, r24
    /* 80336580 003321E0  41 80 FF CC */	blt lbl_8033654C
    /* 80336584 003321E4  38 80 00 00 */	li r4, 0
    lbl_80336588:
    /* 80336588 003321E8  2C 04 00 00 */	cmpwi r4, 0
    /* 8033658C 003321EC  41 82 00 20 */	beq lbl_803365AC
    /* 80336590 003321F0  2C 1F 00 00 */	cmpwi r31, 0
    /* 80336594 003321F4  41 82 00 18 */	beq lbl_803365AC
    /* 80336598 003321F8  80 7C 00 14 */	lwz r3, 0x14(r28)
    /* 8033659C 003321FC  80 1C 00 08 */	lwz r0, 8(r28)
    /* 803365A0 00332200  7C 63 20 50 */	subf r3, r3, r4
    /* 803365A4 00332204  7C 63 03 D6 */	divw r3, r3, r0
    /* 803365A8 00332208  48 00 00 08 */	b lbl_803365B0
    lbl_803365AC:
    /* 803365AC 0033220C  38 60 FF FF */	li r3, -1
    lbl_803365B0:
    /* 803365B0 00332210  39 61 00 30 */	addi r11, r1, 0x30
    /* 803365B4 00332214  4B E9 0B B1 */	bl _restgpr_23
    /* 803365B8 00332218  80 01 00 34 */	lwz r0, 0x34(r1)
    /* 803365BC 0033221C  7C 08 03 A6 */	mtlr r0
    /* 803365C0 00332220  38 21 00 30 */	addi r1, r1, 0x30
    /* 803365C4 00332224  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

void ArrayMapBackwards(DArray *d, MapFunction map, s32 p3)
{
    for (s32 i = d->size - 1; i >= 0; i--) {
        void *elem = ArrayNth(d, i);
        map(elem, p3);
    }
}

void *ArrayMapBackwards2(DArray *d, MapFunction map, s32 p3)
{
    for (s32 i = d->size - 1; i >= 0; i--) {
        void *elem = ArrayNth(d, i);
        if (map(elem, p3) == FALSE) {
            return elem;
        }
    }
    return NULL;
}

void ArrayClear(DArray *d)
{
    for (s32 i = d->size - 1; i >= 0; i--) {
        ArrayDeleteAt(d, i);
    }
}
