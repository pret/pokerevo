#ifndef POKEREVO_CODE_801DAAE0_H
#define POKEREVO_CODE_801DAAE0_H

#ifdef __cplusplus
extern "C" {
#endif

// TODO: move, determine type definition
typedef u32 MEMHeapHandle;


class unkClass
{
public:
    u8 unk0;
    MEMHeapHandle unk4;
    u32 unk8;
};

unkClass* func_801DAAE0(void);
BOOL func_801DAB28(void);
void func_801DAB30(void);
MEMHeapHandle func_801DAB78(void* p1, u32 p2, u16 p3);
u32 func_801DAC0C(void);
u32 func_801DAC14(u32 p1);
u16 func_801DAC44(u16 p1);
void* func_801DAD64(size_t);
void func_801DAEA4(void*);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DAAE0_H
