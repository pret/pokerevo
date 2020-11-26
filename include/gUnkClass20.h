#ifndef POKEREVO_GUNKCLASS20_H
#define POKEREVO_GUNKCLASS20_H

// size == 0x4
struct gUnkClass21
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
};

// size == 0x8
struct gUnkClass20
{
    u8 unk0; // index into an array of gUnkClass21. 
             // id?
    u8 unk1; // func_801FB80C returns first instance where this is 0.
             // "allocated" flag? 
    u8 unk2;
    u8 unk3;
    u32 unk4;
    
    gUnkClass20* func_801E0810(u32 p2, u8 p3, u8 p4);
    void func_801E0904();
    void func_801E0978(gUnkClass21* p2) const;
    void func_801E09DC(gUnkClass21* p2) const;
};

#endif //POKEREVO_GUNKCLASS20_H
