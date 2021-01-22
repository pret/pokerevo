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

SRC_DIRS := src src/NdevExi2A src/SDK/OS src/SDK/EXI src/SDK/SI src/SDK/DB src/SDK/VI src/SDK/MTX \
            src/SDK/GX src/SDK/DVD src/SDK/AI src/SDK/AX src/SDK/AXFX src/SDK/MEM src/SDK/MIX src/SDK/DSP \
            src/SDK/TPL src/SDK/THP src/SDK/KPAD src/SDK/CX src/SDK/PAD src/SDK/WPAD src/SDK/FS src/SDK/IPC \
            src/SDK/NdevExi2A src/SDK/USB src/SDK/EUART src/SDK/WUD  src/SDK/BTE src/SDK/NAND \
			src/SDK/SC src/SDK/WENC src/SDK/ARC src/SDK/NCD src/SDK/WD src/SDK/NTR src/SDK/MP src/SDK/MPDL \
			src/SDK/NET src/SDK/NHTTP src/SDK/SSL src/SDK/NWC24 src/SDK/VF src/SDK/DWC/dwc_common src/SDK/DWC/dwc_ghttp \
			src/SDK/DWC/dwc_lanmatch src/SDK/DWC/dwc_match src/SDK/DWC/dwc_nonport src/SDK/DWC/dwcsec_account \
			src/SDK/DWC/dwcsec_auth src/SDK/DWC/dwcsec_nas asm/SDK/DWC/gamespy src/SDK/SSL src/SDK/SO src/SDK/base src/SDK/HBM src/MSL_C/MSL_Common src/MSL_C/MSL_Common_Embedded \
            src/MSL_C/MSL_Common_Embedded/Math src/MSL_C/PPC_EABI src/Runtime \
            src/MetroTRK src/nw4r/db src/nw4r/ut src/nw4r/snd src/nw4r/ut/detail \
            src/nw4r/snd/detail src/nw4r/math src/nw4r/lyt src/nw4r/lyt/detail
ASM_DIRS := asm asm/NdevExi2A asm/SDK/OS asm/SDK/EXI asm/SDK/SI asm/SDK/DB asm/SDK/VI asm/SDK/MTX \
            asm/SDK/GX asm/SDK/DVD asm/SDK/AI asm/SDK/AX asm/SDK/AXFX asm/SDK/MEM asm/SDK/MIX asm/SDK/DSP \
            asm/SDK/TPL asm/SDK/THP asm/SDK/KPAD asm/SDK/CX asm/SDK/PAD asm/SDK/WPAD asm/SDK/FS asm/SDK/IPC \
            asm/SDK/NdevExi2A asm/SDK/USB asm/SDK/EUART asm/SDK/WUD asm/SDK/BTE asm/SDK/NAND \
			asm/SDK/SC asm/SDK/WENC asm/SDK/ARC asm/SDK/NCD asm/SDK/WD asm/SDK/NTR asm/SDK/MP asm/SDK/MPDL \
			asm/SDK/NET asm/SDK/NHTTP asm/SDK/SSL asm/SDK/NWC24 asm/SDK/VF asm/SDK/DWC/dwc_common asm/SDK/DWC/dwc_ghttp \
			asm/SDK/DWC/dwc_lanmatch asm/SDK/DWC/dwc_match asm/SDK/DWC/dwc_nonport asm/SDK/DWC/dwcsec_account \
			asm/SDK/DWC/dwcsec_auth asm/SDK/DWC/dwcsec_nas src/SDK/DWC/gamespy asm/SDK/SSL asm/SDK/SO asm/SDK/base asm/SDK/HBM asm/MSL_C/MSL_Common asm/MSL_C/MSL_Common_Embedded \
            asm/MSL_C/MSL_Common_Embedded/Math asm/MSL_C/PPC_EABI asm/Runtime \
            asm/MetroTRK asm/nw4r/db asm/nw4r/ut asm/nw4r/snd asm/nw4r/ut/detail \
            asm/nw4r/snd/detail asm/nw4r/math asm/nw4r/lyt asm/nw4r/lyt/detail

# Inputs
S_FILES := $(wildcard asm/*.s)
CPP_FILES := $(wildcard src/*.cpp)
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/$(TARGET).dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(TARGET).map

include obj_files.mk

O_FILES := $(EXTAB_O_FILES) $(EXTABINDEX_O_FILES) $(SPLIT_O_FILES) \
           $(DTORS_O_FILES) $(RODATA_O_FILES) $(DATA_O_FILES)    \
		   $(SBSS2_O_FILES)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 3.0

# Programs
AS          := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY     := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
CPP         := cpp -P
CC          := $(WINE) tools/mwcc_compiler/GC/$(MWCC_VERSION)/mwcceppc.exe
LD          := $(WINE) tools/mwcc_compiler/GC/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL     := tools/elf2dol/elf2dol$(EXE)
SHA1SUM     := sha1sum
PYTHON      := python3

POSTPROC := tools/postprocess/postprocess.py
PRAGMAPROC := tools/pragma/pragma.py

# Options
INCLUDES := -i . -I- -i include -i include/SDK -i include/MSL_C -include include/types.h
ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -msgstyle gcc -ipa file $(INCLUDES) -W all -w nopragmas

# for postprocess.py
PROCFLAGS := -fsymbol-fixup

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

TOOLS_DIR = tools
TOOLDIRS = $(filter-out $(TOOLS_DIR)/mwcc_compiler $(TOOLS_DIR)/postprocess $(TOOLS_DIR)/pragma,$(wildcard $(TOOLS_DIR)/*))
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
	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@

$(BUILD_DIR)/%.o: %.cpp
	$(PYTHON) $(PRAGMAPROC) "$(CC)" "$(CFLAGS) -lang c++ -c" $@ $<

$(BUILD_DIR)/%.o: %.c
	$(PYTHON) $(PRAGMAPROC) "$(CC)" "$(CFLAGS) -lang c99 -c" $@ $<
