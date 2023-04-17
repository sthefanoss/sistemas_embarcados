as -o asm_ops_64.o asm_ops_64.s
gcc -g -O -c main.c
gcc -I. -o main main.o asm_ops_64.o
