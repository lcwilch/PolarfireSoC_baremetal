# Debug
fpServer and openocd folders were grabbed from SoftConsole-v2022.2-RISC-V-747

openocd_mpfs_debug.sh will start an OpenOCD session to the MPFS using a connected flashpro (FlashPro5)

Before being able to successfully attach and halt with OpenOCD and GDB, use SoftConsole to set MPFS to boot mode 0 (idle boot). This will require some tweaks to the config (--die MPFS025T), and a Libero installation (for FPGENPROG)

# Steps to debug with OpenOCD and GDB
Start OpenOCD (shell command will provide board and interface configs to openocd):

    ./openocd_mpfs_debug.sh

Add toolchain to path if not already added (need to have setup toolchain beforehand, https://github.com/riscv-collab/riscv-gnu-toolchain):

    export PATH=$PATH:/opt/riscv/bin

Start GDB:

    riscv64-unkown-elf-gdb

In GDB CLI, connect to OpenOCD:

    target remote localhost:3333

OpenOCD shell should now show:

    Info : accepting 'gdb' connection on tcp/3333
    Info : New GDB Connection: 1, Target mpfs.hart0_e51, state: halted

## Helpful commands
Start GDB with commands:

    riscv64-unkown-elf-gdb -x <command file name> -f <executable>
    
example command file contents:
    
    tui enable
    target extended-remote localhost:3333
    set mem inaccessible-by-default off
    set architecture riscv:rv64

### GDB 
    help
    thread apply all set $pc=0x08000000       
    info reg <reg name>
    info threads
    thread <thread number>
    step
    set $pc=<address> (set $pc=reset_vector)
    monitor <openocd command>

### TUI (in GDB)
    refresh
    update
    set focus <view>
    lay <view>

### OpenOCD
    help
    target current
    targets <new target>


# Docs

https://openocd.org/doc/html/General-Commands.html

https://sourceware.org/gdb/current/onlinedocs/gdb.html/TUI-Keys.html#TUI-Keys

https://sourceware.org/gdb/current/onlinedocs/gdb.html/Command-Files.html