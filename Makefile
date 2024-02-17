all:
	nasm -f elf64 *.asm
	gcc -c *.c
	gcc -no-pie *.o -o test
	rm *.o
	./test