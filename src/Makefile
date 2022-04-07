CC := x86_64-elf-gcc
CFLAGS := -ffreestanding -mno-red-zone -Wall -I ../include -nostdlib

SRCS := $(wildcard *.c)
OBJS := $(patsubst %.c,../obj/%.o,$(SRCS))

kernel: $(OBJS)
	
../obj/%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@