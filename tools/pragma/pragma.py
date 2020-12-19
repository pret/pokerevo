# pragma.py 
# By mparisi20
# github.com/mparisi20/pragma_processor

# #pragma regswap usage:
# #pragma regswap start end regA regB startFile

# start: absolute address of start of affected region (hex)
# end: absolute address of end of affected region (hex)
# regA: register to swap (r0-r31 or f0-f31)
# regB: register to swap (r0-r31 or f0-f31)
# startFile: absolute address of the first function provided by this file (hex)

# TODO: add support for an instruction swap pragma
# TODO: add "#pragma startaddr <hex-addr>" to avoid rewriting the start address in each regswap pragma?

import os
import sys
import argparse
import subprocess
import tempfile
import re

# 10-bit extension field for instructions with opcode 31
op31_map = {
             'mask': 0x3ff,
             'data':
             {
             frozenset([0, 32, 4, 86, 470, 54, 278, 246, 1014, 982]): (11, 16),

             frozenset([28, 60, 284, 476, 124, 444, 412, 316, 24, 792, 
              536, 119, 87, 375, 343, 311, 279, 55, 23, 247, 
              215, 439, 407, 183, 151, 790, 534, 918, 662, 533, 
              661, 20, 150, 631, 599, 567, 535, 759, 727, 983, 
              695, 663, 310, 438]): (6, 11, 16), 

             frozenset([26, 954, 922, 824, 597, 725]): (6, 11),

             frozenset([19, 83, 339, 371, 144, 146, 467, 595, 210]): (6,),

             frozenset([659, 242]): (6, 16),

             frozenset([306]): (16,)
             }
           }

# lower 9 bits
op31_mask9_map = {
                   'mask': 0x1ff,
                   'data':
                   {
                   frozenset([266, 10, 138, 491, 459, 75, 11, 235, 40, 8, 136]): (6, 11, 16),
                   frozenset([234, 202, 104, 232, 200]): (6, 11)
                   }
                 }

# 10-bit extension field for instructions with opcode 63
op63_map = { 
             'mask': 0x3ff,
             'data':
             {
             frozenset([14, 15, 12, 264, 72, 136, 40]): (6, 16),
             frozenset([32, 0]): (11, 16),
             frozenset([583, 711]): (6,)
             }
           }

# lower 5 bits
op63_mask5_map = { 
                   'mask': 0x1f,
                   'data':
                   {
                   frozenset([21, 18, 20]): (6, 11, 16),
                   frozenset([25]): (6, 11, 21),
                   frozenset([26]): (6, 16),
                   frozenset([23, 29, 28, 31, 30]): (6, 11, 16, 21)
                   }
                 }

# lower 5 bits of the 10-bit extension field for instructions with opcode 59
op59_mask5_map = { 
                   'mask': 0x1f,
                   'data':
                   {
                   frozenset([21, 18, 20]): (6, 11, 16),
                   frozenset([25]): (6, 11, 21),
                   frozenset([24]): (6, 16),
                   frozenset([29, 28, 31, 30]): (6, 11, 16, 21)
                   }
                 }

# 10-bit extension field for instructions with opcode 4
op4_map = {
            'mask': 0x3ff,
            'data':
            {
            frozenset([40, 72, 136, 264]): (6, 16),
            frozenset([0, 32, 64, 96, 1014]): (11, 16),
            frozenset([528, 560, 592, 624]): (6, 11, 16)
            }
          }

# lower 6 bits
op4_mask6_map = {
                  'mask': 0x3f,
                  'data':
                  {
                  frozenset([6, 7, 38, 39]): (6, 11, 16)
                  }
                }

# lower 5 bits
op4_mask5_map = {
                  'mask': 0x1f,
                  'data':
                  {
                  frozenset([18, 20, 21]): (6, 11, 16),
                  frozenset([23, 28, 29, 30, 31, 10, 11, 14, 15]): (6, 11, 16, 21),
                  frozenset([24, 26]): (6, 16),
                  frozenset([25, 12, 13]): (6, 11, 21)
                  }
                }

# 6-bit opcode field for miscellaneous opcodes
misc_opcode_map = {
                    'mask': 0x3f,
                    'data':
                    {
                    frozenset([14, 12, 13, 15, 7, 8, 28, 29, 24, 25, 
                     26, 27, 20, 21, 34, 35, 42, 43, 40, 41, 
                     32, 33, 38, 39, 44, 45, 36, 37, 46, 47, 
                     50, 51, 48, 49, 54, 55, 52, 53, 56, 57, 
                     60, 61]): (6, 11),

                    frozenset([11, 10, 3]): (11,),

                    frozenset([23]): (6, 11, 16)
                    }
                  }

class PPCInstr:

    INSTR_SIZE = 32
    REG_FIELD_SIZE = 5

    def __init__(self, val):
        self.v = val
    
    def get_field(self, left, right):
        return (self.v >> (self.INSTR_SIZE - right - 1)) & ((1 << (right - left + 1)) - 1)
    
    def set_field(self, left, right, val):
        width = right - left + 1
        mask = (1 << width) - 1
        shift = self.INSTR_SIZE - width - left
        self.v = self.v & ~(mask << shift) | ((val & mask) << shift)
    
    def get_opcode(self):
        return self.get_field(0, 5)
    
    def get_ext_opcode(self):
        return self.get_field(21, 30)
    
    def search_opcode_maps(self, opcode, *maps):
        for map in maps:
            masked_opcode = opcode & map['mask']
            for k in map['data'].keys():
                if masked_opcode in k:
                    return map['data'][k]
    
    # returns a tuple containing the bit position of each register field
    # or None if the instruction does not use registers
    def get_reg_fields(self):
        opcode = self.get_opcode()
        ext_opcode = self.get_ext_opcode()
        if opcode == 31:
            return self.search_opcode_maps(ext_opcode, op31_map, op31_mask9_map)
        elif opcode == 59:
            return self.search_opcode_maps(ext_opcode, op59_mask5_map)
        elif opcode == 63:
            return self.search_opcode_maps(ext_opcode, op63_map, op63_mask5_map)
        elif opcode == 4:
            return self.search_opcode_maps(ext_opcode, op4_map, op4_mask6_map, op4_mask5_map)
        else:
            return self.search_opcode_maps(opcode, misc_opcode_map)
    
    # edit the PPC instruction to swap the registers
    def swap_registers(self, regA, regB):
        # DEBUG_v = hex(self.v)
        reg_fields = self.get_reg_fields()
        # print(str(reg_fields) + ", " + DEBUG_v)
        if reg_fields is None:
            return
        for left in reg_fields:
            right = left + self.REG_FIELD_SIZE - 1
            currReg = self.get_field(left, right)
            if currReg == regA:
                self.set_field(left, right, regB)
            elif currReg == regB:
                self.set_field(left, right, regA)


parser = argparse.ArgumentParser()
parser.add_argument("cc", 
                    help="path to a C/C++ compiler")
parser.add_argument("cflags", 
                    help="all flags and options to be invoked with cc")
parser.add_argument("output", 
                    help="path to the outputted object file")
parser.add_argument("source", 
                    help="path to the C/C++ source file")
parser.add_argument("-fix-regswaps", 
                    help="execute #pragma regswap", action="store_true")
args = parser.parse_args()

def parse_reg(str):
    if str[0] == 'r' or str[0] == 'f':
        reg = int(str[1:])
        if reg >= 0 and reg <= 31:
            return reg
    raise ValueError("Failed to parse register argument (can be r0...r31 or f0...f31)")

class RegswapTask:
    def __init__(self, start, end, regA, regB):
        self.start = start # .text section byte offset 
        self.end = end     # .text section byte offset
        self.regA = regA
        self.regB = regB

regswap_tasks = []
with open(args.source, "r") as src:
    regswap_pattern = re.compile("[ \t]*#pragma[ \t]+regswap[ \t]+")
    for line in src:
        if regswap_pattern.match(line):
            if args.fix_regswaps:
                params = line.split()[2:]
                if len(params) != 5:
                    raise ValueError("ERROR: " + len(params) + " arguments passed to #pragma regswap (expected 5)")
                start = int(params[0], base=16)
                end = int(params[1], base=16)
                regA = parse_reg(params[2])
                regB = parse_reg(params[3])
                start_file = int(params[4], base=16)
                if not (start % 4 == 0 and end % 4 == 0 and start_file % 4 == 0):
                    raise ValueError("Invalid start, end, or start_file arguments (should have 4 byte aligment)")
                if not (start >= start_file and end > start):
                    raise ValueError("Invalid start, end, or start_file arguments (end must be > start, and start >= start_file)")
                regswap_tasks.append(RegswapTask(start-start_file, end-start_file, regA, regB))
    subprocess.run([*args.cc.strip().split(' '), *args.cflags.split(' '), "-o", args.output, args.source])

instrs = []
TEXT_INDEX = 1 # NOTE: assumes that mwcceppc always places the .text section header at index 1
SHDR_32_SIZE = 40 # size of an Elf32_Shdr object

if args.fix_regswaps and len(regswap_tasks) != 0:
    with open(args.output, "rb") as f:
        if f.read(7) != b'\x7FELF\x01\x02\x01':
            raise ValueError("compiler output is not an current version ELF file for a 32-bit big endian architecture")
        f.seek(0x20)
        e_shoff = int.from_bytes(f.read(4), byteorder='big')
        f.seek(0x30)
        e_shnum = int.from_bytes(f.read(2), byteorder='big')
        if e_shoff == 0 or e_shnum < 2:
            raise ValueError("ELF file must contain at least two sections")
        
        # get .text section sh_offset and sh_size members
        f.seek(e_shoff + TEXT_INDEX*SHDR_32_SIZE + 0x10)
        text_offset = int.from_bytes(f.read(4), byteorder='big')
        text_size = int.from_bytes(f.read(4), byteorder='big')
        
        # read .text section contents into buffer
        f.seek(text_offset)
        for i in range(text_size // 4):
            instrs.append(PPCInstr(int.from_bytes(f.read(4), byteorder='big')))
        
        # perform regswap tasks
        for task in regswap_tasks:
            if task.end > text_size:
                raise ValueError("End address " + (task.end + start_file) + " is past the end of the ELF file's .text section")
            for i in range(task.start // 4, task.end // 4):
                instrs[i].swap_registers(task.regA, task.regB)
    
    # write patched .text section back to the ELF
    with open(args.output, "rb+") as f:
        f.seek(text_offset)
        for instr in instrs:
            f.write(instr.v.to_bytes(4, byteorder='big'))
