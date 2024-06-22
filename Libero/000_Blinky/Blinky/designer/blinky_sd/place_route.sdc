# Microchip Technology Inc.
# Date: 2024-Jun-22 12:26:57
# This file was generated based on the following SDC source files:
#   /home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/constraint/blinky_sd_derived_constraints.sdc
#

create_clock -name {osc_rc160mhz} -period 5.86854 [ get_pins { PF_OSC_C0_0/PF_OSC_C0_0/I_OSC_160/CLK } ]
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -divide_by 16 -source [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty 2.34742 [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -rise_to [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -fall_to [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty 0.6 [ get_clocks { osc_rc160mhz } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { osc_rc160mhz } ] -rise_to [ get_clocks { osc_rc160mhz } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { osc_rc160mhz } ] -fall_to [ get_clocks { osc_rc160mhz } ]
