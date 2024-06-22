ENTRY(_start)

MEMORY
{
    eNVM(rx):ORIGIN =0x20220000,LENGTH =128K
    L2_LIM(rwx):ORIGIN =0x08000000,LENGTH =0x081FFFFF
}

SECTIONS
{
    .text :
    {
        *(.text)
        . = ALIGN(8);
    } > L2_LIM
}