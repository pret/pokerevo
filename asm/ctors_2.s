.include "macros.inc"

.section .ctors, "wa"  # 0x803E1E60 - 0x803E22A0

.4byte func_801E4308, func_801E472C, func_801E5F5C, func_801E6BD8
.4byte func_801ED364, func_801EE024, func_801F1A68, func_801F40C0
.4byte func_801F98CC, func_801FA074, func_801FA36C, func_801FB40C
.4byte func_801FF2E8, func_801FFF94, func_80202E34, func_80203FE8
.4byte func_80205934, func_80207898, func_80207C2C, func_8020B4D8
.4byte func_8020CA18, func_8020D230, func_8020EA58, func_8020F8D4
.4byte func_80211544, func_802119E4, func_80213674, func_80219E28
.4byte func_8021C200, func_8021CA80, func_8021D0C0, func_8021D404
.4byte func_8021EA28, func_8021FB24, func_8022061C, func_80220D88
.4byte func_802233A8, func_8022362C, func_802236A0, func_802237F0
.4byte func_80223870, func_802239EC, func_80223B20, func_80223C34
.4byte func_802240E4, func_80224780, func_8022492C, func_80224AF0
.4byte func_80225E24, func_80226344, func_8022771C, func_80228950
.4byte func_80228AEC, func_802290EC, func_8022D70C, func_80230BB4
.4byte func_80230BD4, func_802322EC, func_8023281C, func_80232D04
.4byte func_802353D8, func_80235454, func_80235A54, func_802366A0
.4byte func_8023692C, func_80236AE8, func_80237774, func_8023779C
.4byte func_8023AF6C, func_8023B62C, func_8023B9D4, func_8023CF8C
.4byte func_8023EA24, func_8023EE4C, func_80240040, func_8024050C
.4byte func_802437CC, func_802448C8, func_802449F8, func_80244EBC
.4byte func_802452C8, func_80245C40, func_80246CAC, func_80247018
.4byte func_80247260, func_80249B5C, func_80249B80, func_80249BA8
.4byte func_80249BD0, func_80249D18, func_80250EE0, func_80253FB4
.4byte func_80254240, func_80254440, func_8025714C, func_80259A84
.4byte func_8025A6F0, func_8025AD64, func_8025B144, func_8025B68C
.4byte func_8025B6C8, func_8025D398, func_8025D7AC, func_8025DCA0
.4byte func_8025DF60, func_8025E328, func_8025E84C, func_8025EC48
.4byte func_8025F05C, func_8025FFD8, func_802609C0, func_8026136C
.4byte func_80262AE0, func_80262E70, func_80263C9C, func_802674AC
.4byte func_80268208, __sinit_$3ut_IOStream_cpp, __sinit_$3ut_FileStream_cpp, __sinit_$3ut_DvdFileStream_cpp
.4byte __sinit_$3ut_DvdLockedFileStream_cpp, __sinit_$3ut_TextWriterBase_cpp, __sinit_$3snd_BasicSound_cpp, __sinit_$3snd_SeqSound_cpp
.4byte __sinit_$3snd_SoundSystem_cpp, __sinit_$3snd_StrmSound_cpp, __sinit_$3snd_WaveSound_cpp, __sinit_$3lyt_pane_cpp
.4byte __sinit_$3lyt_picture_cpp, __sinit_$3lyt_textBox_cpp, __sinit_$3lyt_window_cpp, __sinit_$3lyt_bounding_cpp
.4byte func_8038F254, func_803D91F4, func_803D9EA0, 0
.4byte 0, 0, 0

# placed by the compiler it seems
# commenting out for now and writing the padding in directly for OK
#.balign 0x20, 0
