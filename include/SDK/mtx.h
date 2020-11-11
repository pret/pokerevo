#ifndef POKEREVO_MTX_H
#define POKEREVO_MTX_H

#ifdef __cplusplus
extern "C" {
#endif

typedef float Mtx[3][4];
typedef float (*MtxPtr)[4];
#define MTX_PTR_OFFSET 3


#define MTXIdentity PSMTXIdentity
#define MTXScale PSMTXScale
#define MTXCopy PSMTXCopy

void PSMTXIdentity(Mtx m);

#ifdef __cplusplus
}
#endif


#endif //POKEREVO_MTX_H
