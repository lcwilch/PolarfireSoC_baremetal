//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun  3 21:36:52 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of PF_OSC_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-FCVG484E
# Create and Configure the core component PF_OSC_C0
create_and_configure_core -core_vlnv {Actel:SgCore:PF_OSC:1.0.102} -component_name {PF_OSC_C0} -params {\
"RCOSC_2MHZ_CLK_DIV_EN:false"  \
"RCOSC_2MHZ_GL_EN:false"  \
"RCOSC_2MHZ_NGMUX_EN:false"  \
"RCOSC_160MHZ_CLK_DIV_EN:false"  \
"RCOSC_160MHZ_GL_EN:true"  \
"RCOSC_160MHZ_NGMUX_EN:false"   }
# Exporting Component Description of PF_OSC_C0 to TCL done
*/

// PF_OSC_C0
module PF_OSC_C0(
    // Outputs
    RCOSC_160MHZ_GL
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output RCOSC_160MHZ_GL;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   RCOSC_160MHZ_GL_net_0;
wire   RCOSC_160MHZ_GL_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign RCOSC_160MHZ_GL_net_1 = RCOSC_160MHZ_GL_net_0;
assign RCOSC_160MHZ_GL       = RCOSC_160MHZ_GL_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PF_OSC_C0_PF_OSC_C0_0_PF_OSC   -   Actel:SgCore:PF_OSC:1.0.102
PF_OSC_C0_PF_OSC_C0_0_PF_OSC PF_OSC_C0_0(
        // Outputs
        .RCOSC_160MHZ_GL ( RCOSC_160MHZ_GL_net_0 ) 
        );


endmodule
