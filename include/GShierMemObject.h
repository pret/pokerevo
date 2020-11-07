#ifndef POKEREVO_GSHIERMEMOBJECT_H
#define POKEREVO_GSHIERMEMOBJECT_H

#include "code_801DAAE0.h"

// TODO: determine file that defines this
extern MEMHeapHandle lbl_8063E8F8;

// Note: This is the root base class for various classes such as GScamera,
// GSlight, GSmodel, etc. Instances of these classes are all new/deleted using an alternative set of
// routines than the global new and delete, which we infer is defined inline here.

// TODO: abstract class?

class GShierMemObject
{
public:
    void* operator new(size_t sz)
    {
        if (func_801DAB28())
            return func_801DAC94(lbl_8063E8F8, sz);
        else
            return NULL;
    }
    
    void operator delete(void* ptr)
    {
        func_801DAD48(lbl_8063E8F8, ptr);
    }
};

#endif //POKEREVO_GSHIERMEMOBJECT_H
