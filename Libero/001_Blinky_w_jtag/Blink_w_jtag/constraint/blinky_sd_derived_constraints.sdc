# Microchip Technology Inc.
# Date: 2024-Jun-21 20:07:01
# This file was generated based on the following SDC source files:
#   /home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/MSS_barebones/MSS_barebones.sdc
#   /home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/001_Blinky_w_jtag/Blink_w_jtag/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.sdc
#   /usr/local/microchip/Libero_SoC_v2024.1/Libero/data/aPA5M/cores/constraints/EXT/osc_rc160mhz.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {osc_rc160mhz} -period 5.86854 [ get_pins { PF_OSC_C0_0/PF_OSC_C0_0/I_OSC_160/CLK } ]
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -divide_by 16 -source [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
