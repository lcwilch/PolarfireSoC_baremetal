extern void _enter(void) __attribute__ ((naked, section(".text.enter")));
extern void _start(void) __attribute__ ((noreturn));
extern int main(void);

void _enter(void)
{
    __asm__ volatile (
        ".option push;"
        ".option norelax;"
        "la gp, __global_pointer$;"
        ".option pop;"
        "la sp, _sp;"
        "jal zero, _start;"
        :
        :
        :
    );
}

void _start(void)
{
    main();
}

int main(void)
{
    while(1);
}