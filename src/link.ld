ENTRY(_start)
SECTIONS
{
    . = 0x200000;

    .text : { *(.text) }       /* executable code */
    .rodata : { *(.rodata) }   /* read-only constants */
    .data : { *(.data) }       /* initialized, writable globals */
    .bss :                     /* uninitialized globals -- zeroed by our own boot code, not the linker */
    {
        __bss_start = .;
        *(.bss)
        __bss_end = .;
    }
}