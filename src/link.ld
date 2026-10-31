ENTRY(_start)
SECTIONS
{
    . = 0x200000;

    .text : { *(.text) }       /* executable code */
    .rodata : { *(.rodata) }   /* read-only constants */
    .data : { *(.data) }       /* initialized, writable globals */
    /* Uninitialized globals. There is no OS loader here to zero this for
     * us -- our own boot code must do it, using __bss_start/__bss_end
     * below. For comparison: on Linux this exact job is done by
     * padzero() in fs/binfmt_elf.c, before a program's main() ever runs --
     * see https://elixir.bootlin.com/linux/v5.15/source/fs/binfmt_elf.c#L134
     */
    .bss :
    {
        __bss_start = .;
        *(.bss)
        __bss_end = .;
    }
}