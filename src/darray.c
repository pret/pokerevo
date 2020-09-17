#if 0
==ArrayNew 8035a460 80335db8 9c
==ArrayFree 8035a4fc 80335e54 94
==ArrayLength 8035a590 80025100 8
==ArrayNth 8035a598 80335ef0 30
==ArrayAppend 8035a5c8 80335f20 124
==ArrayInsertSorted 8035a6ec 80336044 180
==ArrayRemoveAt 8035a86c 803361c4 ac
==ArrayDeleteAt 8035a918 80336270 f0
==ArrayReplaceAt 8035aa08 80336360 b8
==# ArraySort 80336418 18
ArraySearch 8035aad8 80336430 198
==ArrayMapBackwards 8035ac70 803365c8 9c
==ArrayMapBackwards2 8035ad0c 80336664 a4
==ArrayClear 8035adb0 80336708 104
#endif

#include "types.h"
#include "qsort.h"
#include "nonport.h"
#include "darray.h"

// TODO: separate function, or embedded in ArrayInsert
static inline void ArrayCheckGrow(DArray *p1)
{
    if (p1->size == p1->capacity) {
        s32 newCap = p1->capacity + p1->growAmount;
        p1->capacity = newCap;
        p1->buf = gsirealloc(p1->buf, newCap * p1->elemSz);
    }
}

static inline void ArrayInsert(DArray *p1, void *elem, s32 n)
{
    ArrayCheckGrow(p1);
    if (n < p1->size++) {
        memmove(ArrayNth(p1, n+1), ArrayNth(p1, n),
               (p1->size - 1 - n) * p1->elemSz);
    }
    memcpy(ArrayNth(p1, n), elem, p1->elemSz);
}

#if 0
static inline void ArrayBinarySearch(....)
{
    
}
#endif


DArray *ArrayNew(u32 elemSz, s32 initialCap, DtorFunction dtor)
{
    DArray *darray = gsimalloc(sizeof(DArray));
    if (initialCap == 0)
        initialCap = 8; // r29
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

#if 0

void ArrayFree(DArray *p1)
{
    for (s32 i = 0; i < p1->size; i++) {
        if (p1->elemDtor) {
            void *elem = ArrayNth(p1, i);
            p1->elemDtor(elem);
        }
    }
    gsifree(p1->buf);
    gsifree(p1);
}

s32 ArrayLength(DArray *arr)
{
    return arr->size;
}

void *ArrayNth(DArray *arr, s32 n)
{
    if (n < 0 || n >= arr->size)
        return NULL;
    return &arr->buf[n * arr->elemSz];
}

void ArrayAppend(DArray *p1, void *elem)
{
    if (p1) {
        ArrayInsert(p1, elem, p1->size);
    }
}

// params r29 p1, r30 p2, compar r24
ArrayInsertSorted(DArray *p1, void *p2, CompareFunction compar)
{
    // TODO: inlined binary search?
    
    s32 high = p1->size - 1; // r26
    u32 elemSz = p1->elemSz; // r28
    char *buf = p1->buf; // r31
    s32 low = 0; // r25
    while (low <= high) {
        s32 mid = (low + high) / 2; // r27
        s32 result = compar(&buf[mid * elemSz], p2);
        if (result < 0) {
            low = mid + 1;
        }
        if (result >= 0) {
            high = mid - 1;
        }
    }
    // low points to the insert index
    #if 0
    search: 8
    
    2 4 6 7 9
          h 
            l
            m
    so insert at index 4
    
    low * elemSz // r6
    p1->buf // r3
    elemSz = p1->elemSz; // r5
    p1->size // r0
    s32 cap = p1->capacity // r4
    #endif
    
    // TODO: maybe this is because inline binarySearch func
    // returns a char * into the buf
    s32 recomputeLow = (buf + (low * elemSz) - p1->buf) / p1->elemSz;
    ArrayInsert(p1, p2, recomputeLow);
}

// Faster deleter for DArrays of types that do not
// need a destructor
void ArrayRemoveAt(DArray *p1, s32 n)
{
    s32 origSize = p1->size;
    s32 decOrigSize = origSize - 1;
    if (n < decOrigSize) { // if not the last element
        memmove(ArrayNth(p1, n), ArrayNth(p1, n+1), 
            p1->elemSz * (decOrigSize - n));
    }
    p1->size--;
}

// p1 r31, n r30
void ArrayDeleteAt(DArray *p1, s32 n)
{
    if (p1->elemDtor) {
        p1->elemDtor(ArrayNth(p1, n));
    }
    ArrayRemoveAt(p1, n);
}

// params r29...
void ArrayReplaceAt(DArray *p1, void *elem, s32 n)
{
    if (p1->elemDtor) {
        p1->elemDtor(ArrayNth(p1, n));
    }
    memcpy(ArrayNth(p1, n), elem, p1->elemSz);
}

void ArraySort(DArray *p1, CompareFunction compar)
{
    qsort(p1->buf, p1->size, p1->elemSz, compar);
}

s32 ArraySearch(DArray *p1, void *elem, CompareFunction cmp, s32 p4, s32 p5)
{
    #if 0 
    p1 = r28, elem = r29, cmp = r30, p4 = r6
    #endif
    char *ptr; // r4
    
    BOOL found = TRUE; // r31
    s32 arrSize = p1->size; // r5
    if (!p1 || arrSize == 0) {
        return -1;
    }
    if (p5) {
        char *r27 = ArrayNth(p1, p4); // r27
        s32 high = arrSize - p4 - 1; // r24
        u32 elemSz = p1->elemSz; // r26
        s32 low = 0; // r23
        found = FALSE;
        while (low <= high) {
            s32 mid = (low + high) / 2; // r25
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
        // 510
        char *r23 = ArrayNth(p1, p4); // r23
        u32 elemSz = p1->elemSz; // r25
        s32 r24 = arrSize - p4;
        for (s32 i = 0, j = 0; i < r24; j += elemSz, i++) { // r26 and r27
            if (cmp(elem, &r23[j]) == 0) {
                ptr = &r23[i * elemSz];
                goto exit;
            }
        }
        ptr = NULL;
    }
    
    // 588
    exit:
    if (ptr && found) {
        return (ptr - p1->buf) / (s32)p1->elemSz;
    }
    return -1;
}

// params r28, r29, r30
void ArrayMapBackwards(DArray *p1, MapFunction p2, s32 p3)
{
    for (s32 i = p1->size - 1; i >= 0; i--) {
        void *elem = ArrayNth(p1, i);
        p2(elem, p3);
    }
}

// params r27 ...
void *ArrayMapBackwards2(DArray *p1, MapFunction p2, s32 p3)
{
    for (s32 i = p1->size - 1; i >= 0; i--) {
        void *elem = ArrayNth(p1, i);
        if (p2(elem, p3) == FALSE) {
            return elem;
        }
    }
    return NULL;
}

void ArrayClear(DArray *p1)
{
    for (s32 i = p1->size - 1; i >= 0; i--) {
        ArrayDeleteAt(p1, i);
    }
}

#endif



