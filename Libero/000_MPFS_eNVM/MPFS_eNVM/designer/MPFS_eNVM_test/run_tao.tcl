set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\MSS_barebones\MSS_barebones.v}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\PFSOC_INIT_MONITOR_C1\PFSOC_INIT_MONITOR_C1_0\PFSOC_INIT_MONITOR_C1_PFSOC_INIT_MONITOR_C1_0_PFSOC_INIT_MONITOR.v}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\PFSOC_INIT_MONITOR_C1\PFSOC_INIT_MONITOR_C1.v}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\MPFS_eNVM_test\MPFS_eNVM_test.v}
set_top_level {MPFS_eNVM_test}
map_netlist
read_sdc {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\MPFS_eNVM_test_derived_constraints.sdc}
check_constraints {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\synthesis_sdc_errors.log}
write_fdc {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\synthesis.fdc}
