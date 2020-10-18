#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"

// TODO: C or C++

extern "C" {

// unkStruct gUnk8063F2D0(1, 4, 0);

unkClass gUnk804912B0[16];

unkClass* func_801DAAE0(void)
{
    for (u32 i = 0; i < 16; i++)
        if (gUnk804912B0[i].unk0 == 0)
            return &gUnk804912B0[i];
    return NULL;
}

}
