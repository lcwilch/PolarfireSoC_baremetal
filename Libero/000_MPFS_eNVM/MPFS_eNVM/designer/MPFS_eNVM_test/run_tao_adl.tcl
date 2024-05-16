set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD}
read_adl {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\MPFS_eNVM_test.adl}
read_afl {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\MPFS_eNVM_test.afl}
map_netlist
read_sdc {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\MPFS_eNVM_test_derived_constraints.sdc}
check_constraints {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\constraint\placer_sdc_errors.log}
estimate_jitter -report {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\place_and_route_jitter_report.txt}
write_sdc -mode layout {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\place_route.sdc}
