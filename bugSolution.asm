section .data
    array DWORD 10, 20, 30, 40 ; Example array
    arraySize EQU ($ - array) / 4 ; Size of the array in DWORDs

section .bss
    result resd 1

section .text
    global _start

_start:
    mov ecx, 2 ; Index of element to access
    cmp ecx, arraySize ; Check if index is within bounds
    jge error_handling ; Handle out-of-bounds access
    mov ebx, array ; Base address of the array
    mov eax, [ebx + ecx*4] ; Access array element if index is valid
    mov [result], eax ; Store the result
    jmp exit

error_handling:
    ; Handle the out-of-bounds access appropriately
    ; For instance, exit the program or set a default value
    mov eax, 0 ; Set error code 0 (optional)    
    jmp exit

exit:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80 