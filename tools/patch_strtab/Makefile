CC := gcc
CFLAGS := -O3 -std=c99 -Wall

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

TARGET := patch_strtab$(EXE)

.PHONY: all

all: $(TARGET)

clean:
	rm -f patch_strtab patch_strtab.exe

$(TARGET): patch_strtab.c
	$(CC) $(CFLAGS) -o $@ $^
