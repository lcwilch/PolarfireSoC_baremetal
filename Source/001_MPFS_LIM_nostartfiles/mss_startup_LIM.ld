ENTRY(_start)

MEMORY
{
    eNVM(rx):ORIGIN =0x20220000,LENGTH =128K
    L2_LIM(rwx):ORIGIN =0x08000000,LENGTH =0x081FFFFF
}

STACK_SIZE = (4 * 0x400); /* 4K stack size */

SECTIONS
{
    .text : ALIGN(0x10)
    {
        *(.text)
    } > L2_LIM
    .sdata : ALIGN(0x10)
    {
        __global_pointer$ = . + 0x800;
        *(.sdata)
    }
    .sbss : ALGIN(0x10)
    {
        *(.sbss)
    }
    .data : ALIGN(0x10)
    {
        *(.data)
    } > L2_LIM
    .bss : ALIGN(0x10)
    {
        *(.bss)
    } > L2_LIM
    /* must be on 4k boundary- corresponds to page size */
    .stack : ALIGN(0x1000)
    {
        PROVIDE(_STACK_START = .);
        . += STACK_SIZE;
        PROVIDE(_STACK_END = .);
    } > L2_LIM
}