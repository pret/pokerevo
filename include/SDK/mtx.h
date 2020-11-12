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
#define MTXTranspose PSMTXTranspose

void PSMTXCopy(const Mtx src, Mtx dest);
#define MTXCopy PSMTXCopy

void C_MTXLookAt(Mtx m, const Point3d* camPos, const Vec* camUp, const Point3d* target);
#define MTXLookAt C_MTXLookAt

void PSVECAdd(const Vec* a, const Vec* b, Vec* ab);
#define VECAdd PSVECAdd

void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dest);
#define MTXMultVecSR PSMTXMultVecSR

void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dest);
#define MTXMultVec PSMTXMultVec

u32 PSMTXInverse(const Mtx src, Mtx inv);
#define MTXInverse PSMTXInverse

void PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb);
void PSVECNormalize(const Vec* src, Vec* unit);
void PSVECSubtract(const Vec* a, const Vec* b, Vec* a_b);




#define MTXConcat PSMTXConcat  
void PSMTXConcat(const Mtx a, const Mtx b, Mtx ab);

#define MTXQuat PSMTXQuat
void PSMTXQuat(Mtx m, const Quaternion* q);

#define QUATRotAxisRad C_QUATRotAxisRad
void C_QUATRotAxisRad(Quaternion* r, const Vec* axis, float rad);

void PSMTXScale(Mtx m, float xS, float yS, float zS);



#define VECSubtract PSVECSubtract
#define VECCrossProduct PSVECCrossProduct
#define VECNormalize PSVECNormalize


#define MTXIdentity PSMTXIdentity
#define MTXScale PSMTXScale
#define MTXCopy PSMTXCopy

void PSMTXIdentity(Mtx m);

#ifdef __cplusplus
}
#endif


#endif //POKEREVO_MTX_H
