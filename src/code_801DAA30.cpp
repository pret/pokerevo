#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"

namespace
{
    unkStruct gUnk8063F2C8(1, 4, 0);
}

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
