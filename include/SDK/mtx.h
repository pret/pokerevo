#ifndef POKEREVO_MTX_H
#define POKEREVO_MTX_H

#ifdef __cplusplus
extern "C" {
#endif

typedef float Mtx[3][4];
typedef float Mtx44[4][4];

typedef struct
{
    float x;
    float y;
    float z;
} Vec, Point3d;

typedef struct Quaternion
{
    float x;
    float y;
    float z;
    float w;
} Quaternion;

void PSMTXTranspose(const Mtx src, Mtx xPose);
void PSMTXCopy(const Mtx src, Mtx dest);
void C_MTXLookAt(Mtx m, const Point3d* camPos, const Vec* camUp, const Point3d* target);
void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dest);
void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dest);
u32 PSMTXInverse(const Mtx src, Mtx inv);
void PSMTXConcat(const Mtx a, const Mtx b, Mtx ab);
void PSMTXQuat(Mtx m, const Quaternion* q);
void C_QUATRotAxisRad(Quaternion* r, const Vec* axis, float rad);
void PSMTXScale(Mtx m, float xS, float yS, float zS);
void PSMTXIdentity(Mtx m);
void PSVECAdd(const Vec* a, const Vec* b, Vec* ab);
void PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb);
void PSVECNormalize(const Vec* src, Vec* unit);
void PSVECSubtract(const Vec* a, const Vec* b, Vec* a_b);

#define MTXTranspose PSMTXTranspose
#define MTXCopy PSMTXCopy
#define MTXLookAt C_MTXLookAt
#define VECAdd PSVECAdd
#define MTXMultVecSR PSMTXMultVecSR
#define MTXMultVec PSMTXMultVec
#define MTXInverse PSMTXInverse
#define MTXConcat PSMTXConcat  
#define MTXQuat PSMTXQuat
#define QUATRotAxisRad C_QUATRotAxisRad
#define VECSubtract PSVECSubtract
#define VECCrossProduct PSVECCrossProduct
#define VECNormalize PSVECNormalize
#define MTXIdentity PSMTXIdentity
#define MTXScale PSMTXScale
#define MTXCopy PSMTXCopy

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_MTX_H
