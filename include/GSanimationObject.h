#ifndef POKEREVO_GSANIMATIONOBJECT_H
#define POKEREVO_GSANIMATIONOBJECT_H

#include "GShierMemObject.h"
#include "code_801DD5C8.h"

class GSanimationObject : public GShierMemObject
{
protected:
    gUnkClass8* unk0;
    gUnkClass7* unk4;
public:
    GSanimationObject(gUnkClass8* list);
    ~GSanimationObject();
    void func_801DD9C8(float p2);
    gUnkClass8* func_801DDA94(u16 id);
    void func_801DDABC(u16 id, u16 p3, float p4, float p5);
};

#endif //POKEREVO_GSANIMATIONOBJECT_H
