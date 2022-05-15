all:
	as -g -o tp3.o tp3.asm
	ld --oformat binary -o tp3.img -T link.ld tp3.o
	qemu-system-i386 -fda tp3.img -boot a -s -S -monitor stdio

clean:
	rm *.o *.img .gdb_history