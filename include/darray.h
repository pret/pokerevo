#ifndef POKEREVO_DARRAY_H
#define POKEREVO_DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DArray {
    s32 size;
    s32 unk4;
    u32 elementSz;
    s32 unkC;
    s32 unk10;
    char *buf;
} DArray;

void *ArrayNew(s32 p1, s32 p3, s32 p6);
void *ArrayNth(DArray *p1, s32 p2);
void *ArrayMapBackwards2(DArray *p1, s32 p2, s32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DARRAY_H
