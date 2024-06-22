read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/blinky_sd_layout_combinational_loops.xml}
report -type slack {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/blinky_sd_place_and_route_constraint_coverage.xml}]
set reportfile {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/designer/blinky_sd/coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp