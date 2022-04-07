section .text
bits 32

cli

extern kmain
call kmain

cli
hlt
jmp $