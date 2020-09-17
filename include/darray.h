#ifndef POKEREVO_DARRAY_H
#define POKEREVO_DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "types.h"

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
void ArrayFree(DArray *p1);
s32 ArrayLength(DArray *arr);
void *ArrayNth(DArray *arr, s32 n);
void ArrayAppend(DArray *p1, void *elem);
ArrayInsertSorted(DArray *p1, void *p2, CompareFunction compar);
void ArrayRemoveAt(DArray *p1, s32 n);
void ArrayDeleteAt(DArray *p1, s32 n);
void ArrayReplaceAt(DArray *p1, void *elem, s32 n);
void ArraySort(DArray *p1, CompareFunction compar);
s32 ArraySearch(DArray *p1, void *elem, CompareFunction cmp, s32 p4, s32 p5);
void ArrayMapBackwards(DArray *p1, MapFunction p2, s32 p3);
void *ArrayMapBackwards2(DArray *p1, MapFunction p2, s32 p3);
void ArrayClear(DArray *p1);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DARRAY_H
