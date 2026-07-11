# CS:APP Learning Repository

This repository records my study of **Computer Systems: A Programmer’s Perspective, 3rd Edition** and the corresponding systems programming experiments.

The goal is not only to finish the labs, but to understand the complete path from C source code to machine execution:

```text
C source code
    ↓
Compilation and linking
    ↓
Assembly instructions
    ↓
Processor and memory hierarchy
    ↓
Processes, virtual memory and system calls
    ↓
Concurrent and network programs
```

## Textbook

**Computer Systems: A Programmer’s Perspective, 3rd Edition, North American Edition**

All experiment notes in this repository use the page numbers of this edition unless otherwise stated.

## Current Progress

| Module                           |    Status | Main Topics                                                | Textbook             |
| -------------------------------- | --------: | ---------------------------------------------------------- | -------------------- |
| Hello Build Chain                | Completed | GCC, Makefile, ELF, compilation stages                     | Chapter 1, Chapter 7 |
| Data Representation Lab          | Completed | Bit operations, two’s complement, integer comparison       | Chapter 2            |
| Machine-Level Programming Basics | Completed | x86-64 registers, addressing, loops, compiler optimization | Chapter 3            |
| Bomb Lab                         |   Planned | Assembly analysis, control flow, stack frames, GDB         | Chapter 3            |
| Architecture Lab                 |   Planned | Y86-64, pipelining, hazards, forwarding                    | Chapter 4            |
| Cache Lab                        |   Planned | Cache mapping, locality, LRU, matrix blocking              | Chapter 6            |
| Shell Lab                        |   Planned | Processes, signals, job control, race conditions           | Chapter 8            |
| Malloc Lab                       |   Planned | Virtual memory, heap blocks, free lists, coalescing        | Chapter 9            |
| Proxy Lab                        |   Planned | System I/O, sockets, HTTP, concurrency                     | Chapters 10–12       |

## Repository Structure

```text
csapp-learning/
├── README.md
├── notes/
├── mini-projects/
│   ├── hello-build-chain/
│   └── machine-level-basics/
├── labs/
│   └── data-lab/
├── reports/
└── tools/
```

## Completed Experiments

### 1. Hello Build Chain

Location:

```text
mini-projects/hello-build-chain/
```

This experiment studies how a C source file becomes an executable program.

```text
hello.c
   ↓ preprocessing
hello.i
   ↓ compilation
hello.s
   ↓ assembly
hello.o
   ↓ linking
hello
```

Main tools:

```bash
gcc
make
objdump
readelf
nm
file
size
```

Build and run:

```bash
cd mini-projects/hello-build-chain
make
./hello
```

Clean generated files:

```bash
make clean
```

### 2. Data Representation Lab

Location:

```text
labs/data-lab/
```

Implemented functions:

```text
bit_xor
is_tmax
negate_int
is_ascii_digit
is_less_or_equal
```

Main topics:

* Bitwise operations
* Two’s-complement representation
* Signed integer boundaries
* Arithmetic right shift
* Integer overflow
* Compiler-generated assembly

Build and test:

```bash
cd labs/data-lab
make
make test
```

Generate and inspect object symbols:

```bash
nm bits.o
```

Generate disassembly:

```bash
objdump -d -Mintel test_bits
```

Textbook correspondence:

* Chapter 2: Representing and Manipulating Information
* Information Storage: pp. 31–67
* Integer Representations: pp. 68–88
* Integer Arithmetic: pp. 89–121
* Floating Point: pp. 122–160

### 3. Machine-Level Programming Basics

Location:

```text
mini-projects/machine-level-basics/
```

Implemented functions:

```c
long add_numbers(long x, long y);
long get_element(const long *array, long index);
long sum_array(const long *array, long length);
```

Main topics:

* System V AMD64 calling convention
* Function arguments in registers
* Return values in `%rax`
* Indexed addressing
* Array access
* Loop translation
* Comparison of `-O0`, `-Og` and `-O2`
* ELF disassembly

Build and test:

```bash
cd mini-projects/machine-level-basics
make
make test
```

Generate assembly at different optimization levels:

```bash
make assembly
```

Generate disassembly of the final executable:

```bash
make disassemble
```

Example instruction:

```asm
mov rax, QWORD PTR [rdi+rsi*8]
```

Interpretation:

```text
rdi = array base address
rsi = array index
rsi × 8 = byte offset of a long element
rax = array[index]
```

Textbook correspondence:

* Chapter 3: pp. 177–362
* Program Encodings: pp. 180–190
* Data Formats: pp. 191–195
* Accessing Information: pp. 196–213
* Arithmetic and Logical Operations: pp. 214–228
* Control and Loops: pp. 229–266

## Build Conventions

The projects use GCC and Make.

Typical commands:

```bash
make
make test
make clean
```

Compiler flags commonly used:

```text
-std=c11
-Wall
-Wextra
-Wpedantic
-Og
-g
```

Meanings:

* `-Wall -Wextra`: enable common warnings
* `-Wpedantic`: check ISO C compatibility
* `-Og`: keep useful optimizations while preserving debuggability
* `-g`: include debugging information for GDB

## Debugging Tools

### GDB

```bash
gdb ./program
```

Common commands:

```gdb
break main
run
next
step
stepi
info registers
x/i $pc
disassemble
continue
quit
```

### Objdump

```bash
objdump -d -Mintel program
```

### Readelf

```bash
readelf -h program
readelf -S program
readelf -s program
```

### NM

```bash
nm object-file.o
```

## Git Workflow

Check changes:

```bash
git status
```

Add files:

```bash
git add .
```

Commit:

```bash
git commit -m "feat: describe the completed work"
```

Push:

```bash
git push
```

Commit message examples:

```text
feat: add data representation lab
feat: add machine-level programming basics lab
fix: correct signed comparison edge case
test: add integer boundary test cases
docs: document x86-64 indexed addressing
```

## Learning Method

Each experiment follows the same workflow:

```text
Read textbook
    ↓
Understand the system concept
    ↓
Implement a minimal program
    ↓
Compile and test
    ↓
Inspect assembly or runtime state
    ↓
Debug with GDB
    ↓
Write conclusions
    ↓
Commit to GitHub
```

For each topic, the notes should answer:

1. What problem does this mechanism solve?
2. How is it represented in C?
3. How is it implemented in assembly or hardware?
4. Which edge cases can cause errors?
5. How can the behavior be verified experimentally?

## Planned Learning Path

```text
Compilation and Linking
        ↓
Data Representation
        ↓
Machine-Level Programming
        ↓
Bomb Lab
        ↓
Processor Architecture
        ↓
Cache Lab
        ↓
Processes and Signals
        ↓
Shell Lab
        ↓
Virtual Memory
        ↓
Malloc Lab
        ↓
System I/O and Networking
        ↓
Proxy Lab
```

## Notes

Generated binaries and object files should normally not be committed.

Recommended `.gitignore` entries:

```gitignore
*.o
*.out
*.a
*.so
*.core
core
.vscode/
.idea/
build/

hello
test_bits
show_bits
test_machine
```

Assembly files and disassembly files may be retained when they are used as learning material.

## Academic Integrity

This repository is intended for personal learning and documentation.

Course-provided starter code, restricted lab solutions, bomb answers or other materials that are not permitted for public distribution should not be uploaded to a public repository.

## Author

Runcheng Zhang

Graduate student in Electrical Engineering and Information Technology at Karlsruhe Institute of Technology, focusing on embedded systems, systems engineering and hardware-software co-design.
