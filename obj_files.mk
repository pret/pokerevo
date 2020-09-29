EXTAB_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                                             \
    $(BUILD_DIR)/asm/extabindex.o

#init is included here so that linking is in the right order
#todo fix with makefile implementation
TEXT_O_FILES := 						                          \
	$(BUILD_DIR)/asm/text_1.o                                     \
	$(BUILD_DIR)/asm/text_2.o                                     \
	$(BUILD_DIR)/asm/text_3.o                                     \
	$(BUILD_DIR)/asm/text_4.o                                     \
	$(BUILD_DIR)/asm/text_5.o                                     \
	$(BUILD_DIR)/asm/libstdc++/__mem.o                            \
	$(BUILD_DIR)/asm/libstdc++/__va_arg.o                         \
	$(BUILD_DIR)/asm/libstdc++/global_destructor_chain.o          \
	$(BUILD_DIR)/asm/libstdc++/NMWException.o                     \
	$(BUILD_DIR)/src/libstdc++/ptmf.o                             \
	$(BUILD_DIR)/asm/libstdc++/runtime.o                          \
	$(BUILD_DIR)/asm/libstdc++/__init_cpp_exceptions.o            \
	$(BUILD_DIR)/asm/libstdc++/Gecko_ExceptionPPC.o               \
	$(BUILD_DIR)/asm/libstdc++/ansi_files.o                       \
	$(BUILD_DIR)/asm/libstdc++/ansi_fp.o                          \
	$(BUILD_DIR)/asm/libstdc++/arith.o                            \
	$(BUILD_DIR)/asm/libstdc++/buffer_io.o                        \
	$(BUILD_DIR)/asm/libstdc++/direct_io.o                        \
	$(BUILD_DIR)/asm/libstdc++/file_io.o                          \
	$(BUILD_DIR)/asm/libstdc++/FILE_POS.o                         \
	$(BUILD_DIR)/asm/libstdc++/mbstring.o                         \
	$(BUILD_DIR)/asm/libstdc++/mem.o                              \
	$(BUILD_DIR)/asm/libstdc++/mem_funcs.o                        \
	$(BUILD_DIR)/asm/libstdc++/math_api.o                         \
	$(BUILD_DIR)/asm/libstdc++/misc_io.o                          \
	$(BUILD_DIR)/asm/libstdc++/printf.o                           \
	$(BUILD_DIR)/asm/libstdc++/qsort.o                            \
	$(BUILD_DIR)/asm/libstdc++/rand.o                             \
	$(BUILD_DIR)/asm/libstdc++/scanf.o                            \
	$(BUILD_DIR)/asm/libstdc++/string.o                           \
	$(BUILD_DIR)/asm/libstdc++/strtold.o                          \
	$(BUILD_DIR)/asm/libstdc++/strtoul.o                          \
	$(BUILD_DIR)/asm/libstdc++/wstring.o                          \
	$(BUILD_DIR)/asm/libstdc++/wchar_io.o                         \
	$(BUILD_DIR)/asm/libstdc++/uart_console_io_gcn.o              \
	$(BUILD_DIR)/asm/libstdc++/math_sun.o                         \
	$(BUILD_DIR)/asm/libstdc++/extras.o                           \
	$(BUILD_DIR)/asm/libstdc++/e_acos.o                           \
	$(BUILD_DIR)/asm/libstdc++/e_asin.o                           \
	$(BUILD_DIR)/asm/libstdc++/e_atan2.o                          \
	$(BUILD_DIR)/asm/libstdc++/e_fmod.o                           \
	$(BUILD_DIR)/asm/libstdc++/e_pow.o                            \
	$(BUILD_DIR)/asm/libstdc++/e_rem_pio2.o                       \
	$(BUILD_DIR)/asm/libstdc++/k_cos.o                            \
	$(BUILD_DIR)/asm/libstdc++/k_rem_pio2.o                       \
	$(BUILD_DIR)/asm/libstdc++/k_sin.o                            \
	$(BUILD_DIR)/asm/libstdc++/k_tan.o                            \
	$(BUILD_DIR)/asm/libstdc++/s_atan.o                           \
	$(BUILD_DIR)/asm/libstdc++/s_copysign.o                       \
	$(BUILD_DIR)/asm/libstdc++/s_cos.o                            \
	$(BUILD_DIR)/asm/libstdc++/s_floor.o                          \
	$(BUILD_DIR)/asm/libstdc++/s_frexp.o                          \
	$(BUILD_DIR)/asm/libstdc++/s_ldexp.o                          \
	$(BUILD_DIR)/asm/libstdc++/s_sin.o                            \
	$(BUILD_DIR)/asm/libstdc++/s_tan.o                            \
	$(BUILD_DIR)/asm/libstdc++/w_acos.o                           \
	$(BUILD_DIR)/asm/libstdc++/w_asin.o                           \
	$(BUILD_DIR)/asm/libstdc++/w_atan2.o                          \
	$(BUILD_DIR)/asm/libstdc++/w_fmod.o                           \
	$(BUILD_DIR)/asm/libstdc++/w_pow.o                            \
	$(BUILD_DIR)/asm/libstdc++/e_sqrt.o                           \
	$(BUILD_DIR)/asm/libstdc++/math_ppc.o                         \
	$(BUILD_DIR)/asm/libstdc++/w_sqrt.o                           \
	$(BUILD_DIR)/asm/MetroTRK/mainloop.o                          \
	$(BUILD_DIR)/asm/text_6.o                                     \
	$(BUILD_DIR)/asm/MetroTRK/mem_TRK.o                           \
	$(BUILD_DIR)/asm/init.o                                       \
	$(BUILD_DIR)/asm/text_6_2.o                                   \
	$(BUILD_DIR)/asm/text_7.o                                     \
	$(BUILD_DIR)/asm/SDK/OS/OS.o                                  \
	$(BUILD_DIR)/asm/SDK/OS/OSAlarm.o                             \
	$(BUILD_DIR)/src/SDK/OS/OSAlloc.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSArena.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSAudioSystem.o                       \
	$(BUILD_DIR)/asm/SDK/OS/OSCache.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSContext.o                           \
	$(BUILD_DIR)/asm/SDK/OS/OSError.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSExec.o                              \
	$(BUILD_DIR)/asm/text_7_2.o                                   \
	$(BUILD_DIR)/asm/text_8.o                                     \
	$(BUILD_DIR)/asm/text_9.o                                     \
	$(BUILD_DIR)/asm/text_10.o                                    \
	$(BUILD_DIR)/src/GameSpy/darray.o                             \
	$(BUILD_DIR)/src/GameSpy/hashtable.o                          \
	$(BUILD_DIR)/asm/GameSpy/md5c.o                               \
	$(BUILD_DIR)/asm/GameSpy/nonport.o                            \
	$(BUILD_DIR)/asm/GameSpy/gsAvailable.o                        \
	$(BUILD_DIR)/asm/GameSpy/gsCrypt.o                            \
	$(BUILD_DIR)/asm/GameSpy/gsLargeInt.o                         \
	$(BUILD_DIR)/asm/GameSpy/gsRC4.o                              \
	$(BUILD_DIR)/asm/GameSpy/gsSHA1.o                             \
	$(BUILD_DIR)/asm/GameSpy/gsXML.o                              \
	$(BUILD_DIR)/asm/GameSpy/gp.o                                 \
	$(BUILD_DIR)/asm/GameSpy/gpi.o                                \
	$(BUILD_DIR)/asm/GameSpy/gpiBuddy.o                           \
	$(BUILD_DIR)/asm/GameSpy/gpiBuffer.o                          \
	$(BUILD_DIR)/asm/GameSpy/gpiCallback.o                        \
	$(BUILD_DIR)/asm/GameSpy/gpiConnect.o                         \
	$(BUILD_DIR)/asm/GameSpy/gpiInfo.o                            \
	$(BUILD_DIR)/asm/GameSpy/gpiOperation.o                       \
	$(BUILD_DIR)/asm/GameSpy/gpiPeer.o                            \
	$(BUILD_DIR)/asm/GameSpy/gpiProfile.o                         \
	$(BUILD_DIR)/asm/GameSpy/gpiSearch.o                          \
	$(BUILD_DIR)/asm/GameSpy/gpiTransfer.o                        \
	$(BUILD_DIR)/asm/GameSpy/gpiUnique.o                          \
	$(BUILD_DIR)/asm/GameSpy/gpiUtility.o                         \
	$(BUILD_DIR)/asm/GameSpy/gt2Auth.o                            \
	$(BUILD_DIR)/asm/GameSpy/gt2Buffer.o                          \
	$(BUILD_DIR)/asm/GameSpy/gt2Callback.o                        \
	$(BUILD_DIR)/asm/GameSpy/gt2Connection.o                      \
	$(BUILD_DIR)/asm/GameSpy/gt2Main.o                            \
	$(BUILD_DIR)/asm/GameSpy/gt2Message.o                         \
	$(BUILD_DIR)/asm/GameSpy/gt2Socket.o                          \
	$(BUILD_DIR)/asm/GameSpy/gt2Utility.o                         \
	$(BUILD_DIR)/asm/GameSpy/qr2.o                                \
	$(BUILD_DIR)/asm/GameSpy/qr2regkeys.o                         \
	$(BUILD_DIR)/asm/GameSpy/ghttpBuffer.o                        \
	$(BUILD_DIR)/asm/GameSpy/ghttpCallbacks.o                     \
	$(BUILD_DIR)/asm/GameSpy/ghttpCommon.o                        \
	$(BUILD_DIR)/asm/GameSpy/ghttpConnection.o                    \
	$(BUILD_DIR)/asm/GameSpy/ghttpEncryption.o                    \
	$(BUILD_DIR)/asm/GameSpy/ghttpMain.o                          \
	$(BUILD_DIR)/asm/GameSpy/ghttpPost.o                          \
	$(BUILD_DIR)/asm/GameSpy/ghttpProcess.o                       \
	$(BUILD_DIR)/asm/GameSpy/gbucket.o                            \
	$(BUILD_DIR)/asm/GameSpy/gstats.o                             \
	$(BUILD_DIR)/asm/GameSpy/NATify.o                             \
	$(BUILD_DIR)/asm/GameSpy/natneg.o                             \
	$(BUILD_DIR)/asm/GameSpy/sb_crypt.o                           \
	$(BUILD_DIR)/asm/GameSpy/sb_queryengine.o                     \
	$(BUILD_DIR)/asm/GameSpy/sb_server.o                          \
	$(BUILD_DIR)/asm/GameSpy/sb_serverbrowsing.o                  \
	$(BUILD_DIR)/asm/GameSpy/sb_serverlist.o                      \
	$(BUILD_DIR)/asm/text_10_2.o                                      \
	$(BUILD_DIR)/asm/nw4r/ut/ut_list.o                                \
	$(BUILD_DIR)/asm/nw4r/ut/detail/ut_LinkList.o                     \
	$(BUILD_DIR)/asm/nw4r/ut/ut_binaryFileFormat.o                    \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharStrmReader.o                      \
	$(BUILD_DIR)/asm/nw4r/ut/ut_TagProcessorBase.o                    \
	$(BUILD_DIR)/asm/nw4r/ut/ut_IOStream.o                            \
	$(BUILD_DIR)/asm/nw4r/ut/ut_FileStream.o                          \
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdFileStream.o                       \
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdLockedFileStream.o                 \
	$(BUILD_DIR)/asm/nw4r/ut/ut_Font.o                                \
	$(BUILD_DIR)/asm/text_10_3.o                                      \
	$(BUILD_DIR)/asm/nw4r/ut/ut_ResFont.o                             \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharWriter.o                          \
	$(BUILD_DIR)/asm/nw4r/ut/ut_TextWriterBase.o                      \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxManager.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoice.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoiceManager.o             \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxfxImpl.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Bank.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BankFile.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicPlayer.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicSound.o                 \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Channel.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_DisposeCallbackManager.o     \
	$(BUILD_DIR)/asm/nw4r/snd/snd_DvdSoundArchive.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_EnvGenerator.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_ExternalSoundPlayer.o        \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_FrameHeap.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/snd_FxDelay.o                           \
	$(BUILD_DIR)/asm/text_10_4.o                                      \
	$(BUILD_DIR)/asm/nw4r/snd/snd_FxReverbHi.o                        \
	$(BUILD_DIR)/asm/text_10_5.o                                      \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_InstancePool.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Lfo.o                        \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MemorySoundArchive.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MidiSeqPlayer.o              \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlParser.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrack.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrackAllocator.o       \
	$(BUILD_DIR)/asm/nw4r/snd/snd_NandSoundArchive.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeaker.o                     \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_RemoteSpeakerManager.o       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqFile.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqPlayer.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqSound.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqSoundHandle.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqTrack.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Sound3DListener.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Sound3DManager.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchive.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveFile.o           \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveLoader.o         \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchivePlayer.o                \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHandle.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHeap.o                         \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundPlayer.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundStartable.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundSystem.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundThread.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmChannel.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmFile.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmPlayer.o                 \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmSound.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Task.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskManager.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskThread.o                 \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Voice.o                      \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_VoiceManager.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Util.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveFile.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveSound.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveSoundHandle.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdFile.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdPlayer.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_adpcm.o                      \
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o                      \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_pane.o                              \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_group.o                             \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_layout.o                            \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_picture.o                           \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_textBox.o                           \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_window.o                            \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_bounding.o                          \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_material.o                          \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_texMap.o                            \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_drawInfo.o                          \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_animation.o                         \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_resourceAccessor.o                  \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_arcResourceAccessor.o               \
	$(BUILD_DIR)/asm/nw4r/lyt/detail/lyt_common.o                     \
	$(BUILD_DIR)/asm/text_11.o

CTORS_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                                   \
    $(BUILD_DIR)/asm/data.o

BSS_O_FILES :=                                                    \
    $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=                                                   \
    $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/sbss2.o
