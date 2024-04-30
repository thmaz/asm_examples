yasm -f elf64 exit.asm
ld -s -o exit exit.o
./exit 
