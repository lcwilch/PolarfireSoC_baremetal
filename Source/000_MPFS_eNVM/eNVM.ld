/*
 * https://five-embeddev.com/baremetal/startup_c/
 * https://five-embeddev.com/baremetal/intro/
 * https://stackoverflow.com/questions/50214840/risc-v-startup-code-for-stack-pointer-initalization
 */

ENTRY(main)

MEMORY
{
    eNVM(rx):ORIGIN =0x20220000,LENGTH =128K
    L2_LIM(rwx):ORIGIN =0x08000000,LENGTH =0x081FFFFF
}

SECTIONS
{
    .text :
    {
        *(.text.enter)
        *(.text)
        . = ALIGN(8);
    } > eNVM
    .data :
    {
        *(.data)
        /* need to figure out how this var works */
        PROVIDE(__global_pointer$ = .);
        . = ALIGN(8);
    } > L2_LIM AT > eNVM
    .bss :
    {
        __bss_start = .;
        *(.bss)
        . = ALIGN(8);
        _end = .;
    } > L2_LIM
    /* temp implementation */
    PROVIDE(_sp = _end);
}