read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {Z:/Projects/PolarfireSoC_baremetal/Libero/000_MPFS_eNVM/MPFS_eNVM/designer/MPFS_eNVM_test/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\MPFS_eNVM_test_layout_combinational_loops.xml}
report -type slack {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\MPFS_eNVM_test_place_and_route_constraint_coverage.xml}]
set reportfile {Z:\Projects\PolarfireSoC_baremetal\Libero\000_MPFS_eNVM\MPFS_eNVM\designer\MPFS_eNVM_test\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp