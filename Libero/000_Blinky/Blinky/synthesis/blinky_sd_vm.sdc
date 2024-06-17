# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1717466011 
# Top Level Design Parameters 

# Clocks 
create_clock -period 5.869 -waveform {0.000 2.934} -name {osc_rc160mhz} [get_pins {PF_OSC_C0_0/PF_OSC_C0_0/I_OSC_160/CLK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -divide_by {16} -source [get_pins {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

