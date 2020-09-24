WSLENV ?= no
ifeq ($(WSLENV),)
NOWINE = 1
else
NOWINE = 0
endif

ifeq ($(OS),Windows_NT)
EXE := .exe
WINE :=
else
EXE :=
WINE := wine
endif

ifeq ($(NOWINE),1)
WINE :=
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

# Used for elf2dol
TARGET_COL := wii

TARGET := pbr_pal

BUILD_DIR := build/$(TARGET)

SRC_DIRS := src src/SDK/OS src/libstdc++ src/MetroTRK src/GameSpy src/NW4R
ASM_DIRS := asm asm/SDK/OS asm/libstdc++ asm/MetroTRK asm/GameSpy asm/NW4R

# Inputs
S_FILES := $(wildcard asm/*.s)
CPP_FILES := $(wildcard src/*.cpp)
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/$(TARGET).dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(TARGET).map

include obj_files.mk

O_FILES := $(EXTAB_O_FILES) $(EXTABINDEX_O_FILES) $(TEXT_O_FILES) \
           $(CTORS_O_FILES) $(DTORS_O_FILES) $(RODATA_O_FILES) $(DATA_O_FILES)    \
           $(BSS_O_FILES) $(SDATA_O_FILES) $(SBSS_O_FILES) $(SDATA2_O_FILES) 	  \
		   $(SBSS2_O_FILES)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 3.0

# Programs
AS          := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY     := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
CPP         := cpp -P
CC          := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
LD          := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL     := tools/elf2dol/elf2dol$(EXE)
SHA1SUM     := sha1sum
PYTHON      := python3

POSTPROC := tools/postprocess/postprocess.py

# Options
INCLUDES := -i . -I- -i include -i include/SDK -i include/libstdc++

ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -msgstyle gcc -ipa file $(INCLUDES) -W all

# for postprocess.py
PROCFLAGS := -fsymbol-fixup

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

TOOLS_DIR = tools
TOOLDIRS = $(filter-out $(TOOLS_DIR)/mwcc_compiler $(TOOLS_DIR)/postprocess,$(wildcard $(TOOLS_DIR)/*))
TOOLBASE = $(TOOLDIRS:$(TOOLS_DIR)/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),$(TOOLS_DIR)/$(tool)/$(tool)$(EXE))

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

ifeq (,$(filter-out all,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) tools)
endif

default: all

all: $(DOL)

ALL_DIRS := build $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools clean clean-tools $(TOOLDIRS)

$(LDSCRIPT): ldscript.lcf
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF)
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c $(TARGET).sha1

clean: clean-tools
	rm -f -d -r build

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(MAKE) -C $@

clean-tools:
	$(foreach tool,$(TOOLDIRS),$(MAKE) clean -C $(tool);)

$(ELF): $(O_FILES) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) $(O_FILES)
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
	$(OBJCOPY) $@ $@
$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
# resolve escape sequences for C++ mangled names in the .strtab section (assembler workaround).
	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@ -fsymbol-fixup

$(BUILD_DIR)/%.o: %.cpp
	$(CC) $(CFLAGS) -lang c++ -c -o $@ $<

$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -lang c99 -c -o $@ $<

#	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@
