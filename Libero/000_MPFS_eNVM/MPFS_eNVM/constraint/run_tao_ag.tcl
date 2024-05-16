set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD} -range {EXT}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\MSS_barebones\MSS_barebones.v}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\PFSOC_INIT_MONITOR_C1\PFSOC_INIT_MONITOR_C1_0\PFSOC_INIT_MONITOR_C1_PFSOC_INIT_MONITOR_C1_0_PFSOC_INIT_MONITOR.v}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\PFSOC_INIT_MONITOR_C1\PFSOC_INIT_MONITOR_C1.v}
read_verilog -mode system_verilog {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\MPFS_eNVM_test\MPFS_eNVM_test.v}
set_top_level {MPFS_eNVM_test}
read_sdc -component {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\component\work\MSS_barebones\MSS_barebones.sdc}
derive_constraints
write_sdc {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\MPFS_eNVM_test_derived_constraints.sdc}
write_ndc {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\MPFS_eNVM_test_derived_constraints.ndc}
write_pdc {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\fp\MPFS_eNVM_test_derived_constraints.pdc}
