# pragma.py
#### Pragma processor for GameCube/Wii decompilation projects
###### by Max Parisi

This is a custom pragma processor meant for use with matching decompilation projects for GameCube and Wii games. It currently adds support for `#pragma regswap`.

If some reconstructed C/C++ source code compiles to object binary whose only differences with a target binary are misallocated registers, you can use `#pragma regswap` 
to correct the register allocation. This is an alternative to the strategy of inlining the desired assembly that aims to be more compact, self-documenting, and convenient. 

`pragma.py` will compile your source code, then fix the regswaps by patching the range of the object file specified in each pragma invocation.

## Usage
Invoke `#pragma regswap` one or more times in a C or C++ source file with the following parameters:
```
#pragma regswap start end regA regB startFile
```

where, 
* `start` - absolute address of start of affected region in hexadecimal format
* `end` - absolute address of end of affected region (in hex)
* `regA` - register to be swapped with `regB` (r0-r31 or f0-f31)
* `regB` - register to swapped with `regA` (r0-r31 or f0-f31)
* `startFile` - absolute address of the first function provided by this file (in hex)



Then, invoke the pragma processor with the `-fix-regswaps` option:
```
python3 pragma.py [-h] [-fix-regswaps] cc cflags output source
```


## Future Work
* Add support for an instruction-swap pragma (`#pragma iswap ...`)
* Support for more architectures besides Gekko/Broadway PowerPC
