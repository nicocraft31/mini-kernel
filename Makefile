OBJS := $(wildcard obj/*.o)

ifeq (1 == 1)
all::
	echo 'adf'

all: build

setup: makedirs

makedirs:
	mkdir bin obj

build: $(OBJS)
	@make -C boot
	@make -C src
	x86_64-elf-ld -n -o iso/preiso.elf -T iso/linker.ld $(OBJS)
	@grub-mkrescue -o bin/os.iso iso

clear:
	@rm -dr bin obj 
	@rm iso/preiso.elf