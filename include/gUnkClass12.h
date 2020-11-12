#ifndef POKEREVO_GUNKCLASS12_H
#define POKEREVO_GUNKCLASS12_H

#ifdef __cplusplus
extern "C" {
#endif

// TODO: same as gUnkClass9?
// NOTE: It may be possible to use RTTI data to determine the name of this class
struct gUnkClass12
{
    u8 unk0; // pad
    u8 unk1;
};

// TODO: convert to member functions
void func_801E1278(gUnkClass12*, Vec*, float);
void func_801E10C0(gUnkClass12*, float*, float);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_GUNKCLASS12_H
