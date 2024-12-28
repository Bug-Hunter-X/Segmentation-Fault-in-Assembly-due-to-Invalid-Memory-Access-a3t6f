# Segmentation Fault in Assembly: Invalid Memory Access

This repository demonstrates a common error in assembly programming: accessing memory outside allocated bounds, leading to segmentation faults.

The `bug.asm` file contains the problematic code, specifically the instruction `mov eax, [ebx + ecx*4 + 8]`.  The issue arises when the calculated address falls outside the program's allowed memory space.

The `bugSolution.asm` file shows a corrected version, with added checks to prevent out-of-bounds memory access.  This solution demonstrates how to ensure that memory accesses are within safe limits.