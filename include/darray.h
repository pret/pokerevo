#ifndef POKEREVO_DARRAY_H
#define POKEREVO_DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 (*CompareFunction)(const void *, const void *);
typedef BOOL (*MapFunction)(const void *, s32);
typedef void (*DtorFunction)(void *);

typedef struct DArray {
    s32 size;
    s32 capacity;
    u32 elemSz;
    s32 growAmount;
    DtorFunction elemDtor;
    char *buf;
} DArray;

DArray *ArrayNew(u32 elemSz, s32 initialCap, DtorFunction dtor);
void ArrayFree(DArray *d);
s32 ArrayLength(DArray *d);
void *ArrayNth(DArray *d, s32 n);
void ArrayAppend(DArray *d, void *elem);
void ArrayInsertSorted(DArray *d, void *elem, CompareFunction compar);
void ArrayRemoveAt(DArray *d, s32 n);
void ArrayDeleteAt(DArray *d, s32 n);
void ArrayReplaceAt(DArray *d, void *elem, s32 n);
void ArraySort(DArray *d, CompareFunction compar);
s32 ArraySearch(DArray *d, void *elem, CompareFunction cmp, s32 start, s32 doBinarySearch);
void ArrayMapBackwards(DArray *d, MapFunction map, s32 p3);
void *ArrayMapBackwards2(DArray *d, MapFunction map, s32 p3);
void ArrayClear(DArray *d);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DARRAY_H
