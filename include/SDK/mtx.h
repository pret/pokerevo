#ifndef POKEREVO_MTX_H
#define POKEREVO_MTX_H

#ifdef __cplusplus
extern "C" {
#endif

typedef f32 Mtx[3][4];
typedef f32 (*MtxPtr)[4];
#define MTX_PTR_OFFSET 3


#define MTXIdentity PSMTXIdentity

void PSMTXIdentity(Mtx m);

#ifdef __cplusplus
}
#endif


#endif //POKEREVO_MTX_H
