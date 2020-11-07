#ifndef POKEREVO_GSBLENDOBJECT_H
#define POKEREVO_GSBLENDOBJECT_H

#include "GSanimationObject.h"
#include "code_801DD5C8.h"

class GSblendObject : public GSanimationObject
{
    gUnkClass7* unk8;
    float unkC;
public:
    GSblendObject(gUnkClass8* list);
    ~GSblendObject();
    void func_801DDC84(float p2);
    void func_801DDE4C(u16 id, u16 p3, float p4, float p5);
    void func_801DDEA0(u16 id, u16 p3, float p4, float p5, float p6);
};

#endif //POKEREVO_GSBLENDOBJECT_H
