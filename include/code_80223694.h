#ifndef POKEREVO_CODE_80223694_H
#define POKEREVO_CODE_80223694_H

#ifdef __cplusplus
extern "C" {
#endif

#include <SDK/mtx.h>

void func_80223694(Mtx44 m, float t, float b, float l, float r, float n, float f); // C_MTXFrustum
void func_80223698(Mtx44 m, float t, float b, float l, float r, float n, float f); // C_MTXOrtho
void func_8022369C(Mtx44 m, float fovy, float aspect, float n, float f); // C_MTXPerspective

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_80223694_H
