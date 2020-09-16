#ifndef POKEREVO_QSORT_H
#define POKEREVO_QSORT_H

#ifdef __cplusplus
extern "C" {
#endif

void qsort(void *base, size_t nmemb, size_t size, 
            int (*compar)(const void *, const void *));

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_QSORT_H
