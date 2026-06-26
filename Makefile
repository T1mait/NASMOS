all:
	rm -rf output/
	mkdir output/
	cp output/kernel.elf iso/boot/
	grub-mkrescue -o bootable.iso iso
