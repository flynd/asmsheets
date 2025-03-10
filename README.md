Instruction Set Quick Reference Sheets  
Copyright (C) 2014-2025 Anders Sonmark

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.  This file is offered as-is,
without any warranty.


# Purpose

I made these reference sheets because I found myself needing them and
apart from a MIPS32 quick reference I was unable to find any
instruction set references that would fit a single page and still have
all the details I wanted.  
The purpose of these sheets are to get as much information as possible
in a few pages making it possible for someone who already knows the
architecture to have an overview of the instruction set.  
I've also tried to use common syntaxes for the instruction descriptions
rather than following some architecture specific conventions to make
the sheets look consistent.


# Included Sheets

## 8086

Instruction set of Intel 8086 including execution times for all
instructions. Also includes a quick help for using DOS DEBUG.  
Note that this is a pure 8086 sheet, i.e. no instructions or features
added by later x86 processors are included.
Floating point instructions for 8087 are not included.

I was unable to find the execution time for SETALC instruction
anywhere so the value listed is derived from testing on an actual
CPU (Fujitsu MBL8086-2).


## ARM AArch32

A32 and T32 instruction sets of ARM, including version information for
ARM versions 6, 6T, 6k and 7. Also includes floating point and Advanced
SIMD extensions and extra pages with system registers both for
ARMv7-A/R and ARMv7-M.


## ARM AArch64

A64 instruction set of ARM up ARMv8.6. Also includes floating point and SIMD
instructions and two extra pages with system registers for ARMv8-A. Debug
features, crypto operations, and compatibility with AArch32 have been omitted.


## CRIS v10

Instruction set of CRIS v10 including all memory addressing modes,
execution times and examples for performing multiplication and
division.


## CRIS v32

Instruction set of CRIS v32 including execution times and example for
performing division.


## M68HC11

Instruction set for the Motorola 68HC11.


## MIPS32 R2

Instruction set of MIPS32 release 2.  Includes MIPS16e, DSP module
rev 2 instructions, and coprocessor 0 registers.
Floating point and coprocessor 2 instructions are not included.


## PIC Baseline

Instruction set of PIC baseline devices including extended
instructions.


## PIC Mid-range

Instruction set of PIC mid range devices including extended instruction
set.


## PIC High end

Instruction set of PIC high end devices including extended instructions.


# Sources

1. Various internet sources, notably HelpPC for 8086 execution times.
2. "Intel 64 and IA-32 architectures software developer's manual"
3. "ARM Architecture Reference Manual, ARMv7-A and ARMv7-R edition"
(DDI 0406C.c)
4. "AXIS ETRAX 100LX Programmer's Manual"
5. "ETRAX FS Designer's Reference"
6. Additional information about CRIS architectures (with permission)
from internal resources within AXIS Communications.
7. "MIPS32 Architecture For Programmers" (MD00086, MD00076, and MD00090)
8. "MIPS32 Instruction Set Quick Reference" (MD00565)
9. Multiple data sheets for Microchip PICs.
10. "ARMv7-M Architecture Reference Manual" (DDI 0403E.b)
11. "MIPS DSP Module for the MIPS32 Architecture" (MD00374)
12. "ARM Architecture Reference Manual, ARMv8 for ARMv8-A architecture
profile" (DDI 0487F.a)
13. "M68HC11 Reference Manual"
