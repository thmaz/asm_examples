        segment .text
        global _start
_start:
        mov eax, 60
        mov edi, 5
        syscall
        end
