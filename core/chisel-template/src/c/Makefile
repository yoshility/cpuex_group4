#Makefile
fib.o : fib.c
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -c -o fib.o fib.c
fib : fib.o link.ld
	riscv64-unknown-elf-ld -b elf32-littleriscv fib.o -T link.ld -o fib
fib.elf.dump : fib
	riscv64-unknown-elf-objdump -b elf32-littleriscv -D fib > ../dump/fib.elf.dmp
fib.hex : fib.bin
	od -An -tx1 -w1 -v fib.bin > ../hex/fib.hex
fib.bin : fib
	riscv64-unknown-elf-objcopy -O binary fib fib.bin