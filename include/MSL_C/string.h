#ifndef POKEREVO_STRING_H
#define POKEREVO_STRING_H

#ifdef __cplusplus
extern "C" {
#endif

void *memset(void *s, int c, size_t n);
void *memmove(void *dest, const void *src, size_t n);
void *memcpy(void *dest, const void *src, size_t n);
int strcmp(const char *s1, const char *s2);
int strncmp(const char *s1, const char *s2, size_t n);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_STRING_H
