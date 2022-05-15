all:
	as -g -o tp3.o tp3.asm
	ld --oformat binary -o tp3.img -T link.ld tp3.o
	qemu-system-x86_64 --drive file=tp3.img,format=raw,index=0,media=disk

clean:
	rm *.o *.img tp3