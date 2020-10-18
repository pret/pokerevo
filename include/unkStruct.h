#ifndef POKEREVO_CODE_UNKSTRUCT_H
#define POKEREVO_CODE_UNKSTRUCT_H

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

#endif //POKEREVO_CODE_UNKSTRUCT_H
