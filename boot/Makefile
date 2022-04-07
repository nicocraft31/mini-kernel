ASM := nasm
ASMFLAGS := -f elf64 -F dwarf

SRCS := $(wildcard *.s)
OBJS := $(patsubst %.s,../obj/%.o,$(SRCS))

boot: $(OBJS)

../obj/%.o: %.s
	@$(ASM) $< $(ASMFLAGS) -o $@