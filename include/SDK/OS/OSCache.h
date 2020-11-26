#ifndef POKEREVO_OSCACHE_H
#define POKEREVO_OSCACHE_H

#ifdef __cplusplus
extern "C" {
#endif

void DCFlushRange(void* startAddr, u32 nBytes);
void DCInvalidateRange(void* startAddr, u32 nBytes);
void LCEnable(void);
#define LC_BASE (0xE000 << 16)
#define LCGetBase() ((void*)LC_BASE)


#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSCACHE_H
