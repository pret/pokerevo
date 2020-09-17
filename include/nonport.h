#ifndef POKEREVO_NONPORT_H
#define POKEREVO_NONPORT_H

#ifdef __cplusplus
extern "C" {
#endif

void *gsimalloc(u32 sz);
void *gsirealloc(void *ptr, u32 sz);
void gsifree(void *ptr);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NONPORT_H
