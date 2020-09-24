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
	$(BUILD_DIR)/asm/text_5_2.o                                   \
	$(BUILD_DIR)/asm/libstdc++/__init_cpp_exceptions.o            \
	$(BUILD_DIR)/asm/text_5_3.o                                   \
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
	$(BUILD_DIR)/asm/text_10_2.o                                  \
	$(BUILD_DIR)/asm/NW4R/ut_list.o                               \
	$(BUILD_DIR)/asm/NW4R/ut_LinkList.o                           \
	$(BUILD_DIR)/asm/NW4R/ut_binaryFileFormat.o                   \
	$(BUILD_DIR)/asm/NW4R/ut_CharStrmReader.o                     \
	$(BUILD_DIR)/asm/NW4R/ut_TagProcessorBase.o                   \
	$(BUILD_DIR)/asm/NW4R/ut_IOStream.o                           \
	$(BUILD_DIR)/asm/NW4R/ut_FileStream.o                         \
	$(BUILD_DIR)/asm/NW4R/ut_DvdFileStream.o                      \
	$(BUILD_DIR)/asm/NW4R/ut_DvdLockedFileStream.o                \
	$(BUILD_DIR)/asm/NW4R/ut_Font.o                               \
	$(BUILD_DIR)/asm/text_10_3.o                                  \
	$(BUILD_DIR)/asm/NW4R/ut_ResFont.o                            \
	$(BUILD_DIR)/asm/NW4R/ut_CharWriter.o                         \
	$(BUILD_DIR)/asm/NW4R/ut_TextWriterBase.o                     \
	$(BUILD_DIR)/asm/NW4R/snd_AxManager.o                         \
	$(BUILD_DIR)/asm/NW4R/snd_AxVoice.o                           \
	$(BUILD_DIR)/asm/NW4R/snd_AxVoiceManager.o                    \
	$(BUILD_DIR)/asm/NW4R/snd_AxfxImpl.o                          \
	$(BUILD_DIR)/asm/NW4R/snd_Bank.o                              \
	$(BUILD_DIR)/asm/NW4R/snd_BankFile.o                          \
	$(BUILD_DIR)/asm/NW4R/snd_BasicPlayer.o                       \
	$(BUILD_DIR)/asm/NW4R/snd_BasicSound.o                        \
	$(BUILD_DIR)/asm/NW4R/snd_Channel.o                           \
	$(BUILD_DIR)/asm/NW4R/snd_DisposeCallbackManager.o            \
	$(BUILD_DIR)/asm/NW4R/snd_DvdSoundArchive.o                   \
	$(BUILD_DIR)/asm/NW4R/snd_EnvGenerator.o                      \
	$(BUILD_DIR)/asm/NW4R/snd_ExternalSoundPlayer.o               \
	$(BUILD_DIR)/asm/NW4R/snd_FrameHeap.o                         \
	$(BUILD_DIR)/asm/NW4R/snd_FxDelay.o                           \
	$(BUILD_DIR)/asm/text_10_4.o                                  \
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
