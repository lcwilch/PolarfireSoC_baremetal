# 000_MPFS_eNVM

# Overview:
Project to build MPFS MSS eNVM image and flash via SoftConsole w/ FlashPro5.
Image will use LED or UART to indicate that code is successfully executing.
Will also include MSS Config and Libero project to flash custom bare bones bitstream for MPFS.
By the end of this project, should be ready to start working on eNVM bootloader to load application into L2 scratchpad/LIM

# Objectives:
Generate intel hex (.hex) image to be flashed into MPFS eNVM
Import image into Libero
Use MSS config tool to create barbones MSS for Libero import
Configure barebones MPFS in Libero, with MSS instantiation and eNVM initialization
Flash MPFS with bitstream and eNVM image (in boot mode 1)

# What needs done:
Generate .hex (intel hex) file
    RISC-V toolchain installed in ubuntu VM
    Linker script created
    Makefile created
    Source created

Configure barebones MSS using MSS configurator

Configure barebones MPFS using Libero

Import .hex file into "Program Desgin>Configure Design Initialization Data and Memories>eNVM"
