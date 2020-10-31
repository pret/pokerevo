#ifndef POKEREVO_QSORT_H
#define POKEREVO_QSORT_H

#ifdef __cplusplus
extern "C" {
#endif

void qsort(void *base, u32 nmemb, u32 size, 
            s32 (*compar)(const void *, const void *));

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_QSORT_H
