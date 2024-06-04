set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD} -range {EXT}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/MSS_barebones/MSS_barebones.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PFSOC_INIT_MONITOR_C0/PFSOC_INIT_MONITOR_C0_0/PFSOC_INIT_MONITOR_C0_PFSOC_INIT_MONITOR_C0_0_PFSOC_INIT_MONITOR.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PFSOC_INIT_MONITOR_C0/PFSOC_INIT_MONITOR_C0.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PF_CCC_C0/PF_CCC_C0.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PF_OSC_C0/PF_OSC_C0_0/PF_OSC_C0_PF_OSC_C0_0_PF_OSC.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PF_OSC_C0/PF_OSC_C0.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/hdl/blinky.v}
read_verilog -mode system_verilog {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/blinky_sd/blinky_sd.v}
set_top_level {blinky_sd}
read_sdc -component {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.sdc}
read_sdc -component {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/component/work/MSS_barebones/MSS_barebones.sdc}
derive_constraints
write_sdc {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/constraint/blinky_sd_derived_constraints.sdc}
write_ndc {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/constraint/blinky_sd_derived_constraints.ndc}
write_pdc {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/constraint/fp/blinky_sd_derived_constraints.pdc}
