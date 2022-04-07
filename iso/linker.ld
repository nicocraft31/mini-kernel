
SECTIONS
{
	. = 0x100000;

	.boot :
	{
		KEEP(*(.multiboot_header))
	}

	.text :
	{
		*(.text)
	}

	.bss :
	{
		*(.bss)
	}

	.rodata :
    {
        *(.rodata)
    }
}