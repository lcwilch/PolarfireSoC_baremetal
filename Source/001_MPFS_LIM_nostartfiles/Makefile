OPT_LEVEL=-O3

CC=riscv64-unknown-elf-gcc
CFLAGS=-c -Wall $(OPT_LEVEL)
LDFLAGS=-T mss_startup_LIM.ld -nostartfiles
# -T xxx.ld specficies to use specific linker script, xxx.ld
# -nostartfiles is necessary so multiple _start definitions do not occur (since we want to define our own)
all:mss_startup.o mss_startup.elf

mss_startup.o:mss_startup.S 
	$(CC) $(CFLAGS) -o $@ $^

mss_startup.elf:mss_startup.o
	$(CC) $(LDFLAGS) -o $@ $^
# $(CC) $(LDFLAGS) -o $@ -Wl,--start-group $^ -Wl,--end-group
# -Wl,--start-group and -Wl,--end-group bound arguments that will be passed to linker directly (no necessary here)

clean:
	rm -rf *.elf *.hex *.o