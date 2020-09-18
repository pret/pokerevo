EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                               \
    $(BUILD_DIR)/asm/extabindex.o

#init is included here so that linking is in the right order
#todo fix with makefile implementation
TEXT_O_FILES := 						            \
	$(BUILD_DIR)/asm/text_1.o                       \
	$(BUILD_DIR)/asm/text_2.o                       \
	$(BUILD_DIR)/asm/text_3.o                       \
	$(BUILD_DIR)/asm/text_4.o                       \
	$(BUILD_DIR)/asm/text_5.o                       \
	$(BUILD_DIR)/asm/text_6.o                       \
	$(BUILD_DIR)/asm/libstdc++/__mem.o              \
	$(BUILD_DIR)/asm/init.o                         \
	$(BUILD_DIR)/asm/text_6_2.o                     \
	$(BUILD_DIR)/asm/text_7.o                       \
	$(BUILD_DIR)/asm/SDK/OS/OS.o                    \
	$(BUILD_DIR)/asm/SDK/OS/OSAlarm.o               \
	$(BUILD_DIR)/src/SDK/OS/OSAlloc.o               \
	$(BUILD_DIR)/asm/SDK/OS/OSArena.o               \
	$(BUILD_DIR)/asm/SDK/OS/OSAudioSystem.o         \
	$(BUILD_DIR)/asm/SDK/OS/OSCache.o               \
	$(BUILD_DIR)/asm/SDK/OS/OSContext.o             \
	$(BUILD_DIR)/asm/SDK/OS/OSError.o               \
	$(BUILD_DIR)/asm/SDK/OS/OSExec.o                \
	$(BUILD_DIR)/asm/text_7_2.o                     \
	$(BUILD_DIR)/asm/text_8.o                       \
	$(BUILD_DIR)/asm/text_9.o                       \
	$(BUILD_DIR)/asm/text_10.o                      \
	$(BUILD_DIR)/src/darray.o                       \
	$(BUILD_DIR)/src/hashtable.o                    \
	$(BUILD_DIR)/asm/md5c.o                         \
	$(BUILD_DIR)/asm/nonport.o                      \
	$(BUILD_DIR)/asm/gsAvailable.o                  \
	$(BUILD_DIR)/asm/gsCrypt.o                      \
	$(BUILD_DIR)/asm/gsLargeInt.o                   \
	$(BUILD_DIR)/asm/gsRC4.o                        \
	$(BUILD_DIR)/asm/gsSHA1.o                       \
	$(BUILD_DIR)/asm/text_10_2.o                    \
	$(BUILD_DIR)/asm/text_11.o

CTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=                                   \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(BUILD_DIR)/asm/data.o

BSS_O_FILES :=                                      \
    $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=                                     \
    $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sbss2.o
