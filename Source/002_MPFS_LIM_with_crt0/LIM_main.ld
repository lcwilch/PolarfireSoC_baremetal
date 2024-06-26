ENTRY(_start)

MEMORY
{
    eNVM(rx):ORIGIN =0x20220000,LENGTH =128K
    L2_LIM(rwx):ORIGIN =0x08000000,LENGTH =0x081FFFFF
}

STACK_SIZE = (4 * 0x400); /* 4K stack size */
HEAP_SIZE = (16 * 0x400); /* 16K heap size */

SECTIONS
{
    .text : ALIGN(0x10)
    {
        *(.text)
    } > L2_LIM
    .data : ALIGN(0x10)
    {
        *(.data, .data.*)
    } > L2_LIM
    .sdata : ALIGN(0x10)
    {
        /* crt0.o will use this symbol to init gp reg in _start */
        __global_pointer$ = . + 0x800;
        *(.sdata, .sdata.*)
    }
    /* crt0.o needs bss start to be defined (start of unitialized sections) */
    __bss_start = .;
    .sbss : ALIGN(0x10)
    {
        *(.sbss, .sbss.*)
    }
    .bss : ALIGN(0x10)
    {
        *(.bss, .bss.*)
    } > L2_LIM
    /* crt0.o needs _end to be defined as the end of the unitialized sections */
    _end = .;
    .heap : ALIGN(0x10)
    {
        . += HEAP_SIZE;
    } > L2_LIM
    /* must be on 4k boundary- corresponds to page size */
    .stack : ALIGN(0x1000)
    {
        . += STACK_SIZE;
        /* crt0.o will use this symbol to init sp reg in _start */
        __stack_pointer$ = .;
    } > L2_LIM
    
}