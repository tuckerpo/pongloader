.PHONY: all
all: boot
	qemu-system-i386 boot

boot: bootloader.S
	nasm bootloader.S -o boot

.PHONY: clean
clean:
	rm boot
