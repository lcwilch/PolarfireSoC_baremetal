set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/MSS_barebones/MSS_barebones.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PFSOC_INIT_MONITOR_C0/PFSOC_INIT_MONITOR_C0_0/PFSOC_INIT_MONITOR_C0_PFSOC_INIT_MONITOR_C0_0_PFSOC_INIT_MONITOR.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PFSOC_INIT_MONITOR_C0/PFSOC_INIT_MONITOR_C0.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PF_CCC_C0/PF_CCC_C0.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PF_OSC_C0/PF_OSC_C0_0/PF_OSC_C0_PF_OSC_C0_0_PF_OSC.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PF_OSC_C0/PF_OSC_C0.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/hdl/blinky.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/blinky_sd/blinky_sd.v}
set_top_level {blinky_sd}
map_netlist
read_sdc {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/constraint/blinky_sd_derived_constraints.sdc}
check_constraints {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/constraint/synthesis_sdc_errors.log}
write_fdc {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/synthesis.fdc}