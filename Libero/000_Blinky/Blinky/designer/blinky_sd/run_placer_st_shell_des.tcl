set_device \
    -family  PolarFireSoC \
    -die     PA5SOC025T \
    -package fcvg484 \
    -speed   STD \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name blinky_sd
set_workdir {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd}
set_log     {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd_sdc.log}
set_design_state pre_layout
