#ifndef POKEREVO_DARRAY_H
#define POKEREVO_DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "types.h"

typedef int (*SortFunction)(const void *, const void *);
typedef BOOL (*MapFunction)(const void *, s32);

typedef struct DArray {
    s32 size;
    s32 capacity;
    u32 elementSz;
    s32 growAmount;
    s32 unk10; // TODO destructor callback?
    char *buf;
} DArray;

void *ArrayNew(u32 p1, s32 p2, s32 p3);
void *ArrayNth(DArray *p1, s32 p2);
void *ArrayMapBackwards2(DArray *p1, s32 p2, s32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DARRAY_H
