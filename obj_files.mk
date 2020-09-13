INIT_O_FILES := 						            \
	$(BUILD_DIR)/asm/init.o

EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                               \
    $(BUILD_DIR)/asm/extabindex.o

TEXT_O_FILES := 						            \
	$(BUILD_DIR)/asm/text_1.o                       \
	$(BUILD_DIR)/asm/text_2.o                       \
	$(BUILD_DIR)/asm/text_3.o                       \
	$(BUILD_DIR)/asm/text_4.o                       \
	$(BUILD_DIR)/asm/text_5.o                       \
	$(BUILD_DIR)/asm/text_6.o                       \
	$(BUILD_DIR)/asm/text_7.o                       \
	$(BUILD_DIR)/asm/SDK/OS/OS.o                    \
	$(BUILD_DIR)/asm/SDK/OS/OSAlarm.o               \
	$(BUILD_DIR)/src/SDK/OS/OSAlloc.o               \
	$(BUILD_DIR)/asm/SDK/OS/OSAlloc_asm.o           \
	$(BUILD_DIR)/asm/SDK/OS/OSArena.o               \
	$(BUILD_DIR)/asm/SDK/OS/OSAudioSystem.o         \
	$(BUILD_DIR)/asm/SDK/OS/OSCache.o               \
	$(BUILD_DIR)/asm/text_7_2.o                     \
	$(BUILD_DIR)/asm/text_8.o                       \
	$(BUILD_DIR)/asm/text_9.o                       \
	$(BUILD_DIR)/asm/text_10.o                      \
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
