#ifndef POKEREVO_OSINTERRUPT_H
#define POKEREVO_OSINTERRUPT_H

#ifdef __cplusplus
extern "C" {
#endif

void OSDisableInterrupts(void);
void OSRestoreInterrupts(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSINTERRUPT_H
