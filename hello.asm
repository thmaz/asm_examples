; hello world in asm
; Author: thmaz
; using nasm on linux debian 12

global _start

section .text:

_start:
        mov eax, 0x4            ; write syscall (cat /usr/include/x86_64-linux-gnu/asm/unistd_32.h)
                                ; man 2 write for instruction writing function
                                ; 
        mov ebx, 1              ; std out as fd
        mov ecx, message        ; message as buffer
        mov edx, message_length ; supply length
        int 0x80                ; invoke syscall

        mov eax, 0x1            ; exit
        mov ebx, 0              ; return succesfull exit 
        int 0x80

section .data:
        message: db "Hello World!", 0xA
        message_length equ $-message
