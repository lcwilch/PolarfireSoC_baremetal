set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD}
read_adl {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/blinky_sd.adl}
read_afl {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/blinky_sd.afl}
map_netlist
read_sdc {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/constraint/blinky_sd_derived_constraints.sdc}
check_constraints {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/constraint/placer_sdc_errors.log}
estimate_jitter -report {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/place_and_route_jitter_report.txt}
write_sdc -mode layout {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/place_route.sdc}
