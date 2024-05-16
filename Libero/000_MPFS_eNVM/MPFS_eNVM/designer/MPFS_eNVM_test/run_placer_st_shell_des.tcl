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
set_name MPFS_eNVM_test
set_workdir {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test}
set_log     {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\MPFS_eNVM_test_sdc.log}
set_design_state pre_layout
