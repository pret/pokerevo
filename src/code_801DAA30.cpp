#include "types.h"

extern "C"
{
    BOOL func_801DAB28(void);
    void *func_801DAD64(size_t);
    void func_801DAEA4(void *);
}

class unkStruct
{
    u8 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
public:
    unkStruct(u8 p1, u16 p2, u8 p3) 
        : unk0(p1), unk2(p2), unk4(p3) { }
};

unkStruct unk(1, 4, 0);

void* operator new(size_t sz)
{
    if (func_801DAB28())
        return func_801DAD64(sz);
    else
        return NULL;
}

void* operator new[](size_t sz)
{
    if (func_801DAB28())
        return func_801DAD64(sz);
    else
        return NULL;
}

void operator delete(void* ptr)
{
    func_801DAEA4(ptr);
}

void operator delete[](void* ptr)
{
    func_801DAEA4(ptr);
}
