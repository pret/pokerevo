#ifndef POKEREVO___MEM_H
#define POKEREVO___MEM_H


#ifdef __cplusplus
extern "C" {
#endif

void *memset(void *s, int c, size_t n);
void *memcpy(void *dest, const void *src, size_t n);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO___MEM_H
