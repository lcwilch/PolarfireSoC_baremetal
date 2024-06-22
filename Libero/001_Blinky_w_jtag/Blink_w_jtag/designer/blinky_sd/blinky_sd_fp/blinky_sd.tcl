open_project -project {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/blinky_sd_fp/blinky_sd.pro}
enable_device -name {MPFS025T} -enable 1
set_programming_file -name {MPFS025T} -file {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/blinky_sd.ppd}
set_programming_action -action {PROGRAM} -name {MPFS025T} 
run_selected_actions
save_project
close_project
