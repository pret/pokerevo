#ifndef POKEREVO_CODE_801DD5C8_H
#define POKEREVO_CODE_801DD5C8_H

#ifdef __cplusplus
extern "C" {
#endif

// TODO: identify data structures

// size == 0x10
struct gUnkClass9
{
    u8 pad[0xC];
    void (*unkC)(void*, gUnkClass9*, u32, float); // TODO: identify 1st parameter
};

// TODO: linked list?
// size >= 0xC
struct gUnkClass8
{
    u16 unk0;         // TODO: this is a guess
    u16 unk2;
    gUnkClass9* unk4;
    float unk8;
    gUnkClass8* next; // TODO: this is a guess
};

struct gUnkClass7
{
    gUnkClass8* unk0;
    u16 unk4;
    u16 unk6;
    float unk8;
    float unkC;
};

void func_801DD5C8(gUnkClass7* p1, float p2);
void func_801DD7FC(gUnkClass7* p1, void* p2, u32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DD5C8_H
