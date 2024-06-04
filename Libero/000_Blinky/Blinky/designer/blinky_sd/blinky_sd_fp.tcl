new_project \
         -name {blinky_sd} \
         -location {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS025T} \
         -name {MPFS025T}
enable_device \
         -name {MPFS025T} \
         -enable {TRUE}
save_project
close_project
