int main(void)
{
    volatile static char count = 1;

    while (1)
    {
        count++;
    }

    return 0;
}