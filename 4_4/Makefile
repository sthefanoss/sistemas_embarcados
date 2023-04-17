assembler: main.c
	gcc -S -o main.s main.c

objects: main.c
	gcc -c main.c

show-objs: objects
	objdump -t *.o

exec: objects
	gcc -o main main.o

run: exec
	./main