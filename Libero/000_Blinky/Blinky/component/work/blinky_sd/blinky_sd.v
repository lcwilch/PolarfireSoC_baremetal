//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Jun 22 07:59:41 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// blinky_sd
module blinky_sd(
    // Inputs
    REFCLK,
    REFCLK_N,
    // Outputs
    LEDS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         REFCLK;
input         REFCLK_N;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [14:3] LEDS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [14:3] LEDS_net_0;
wire          MSS_barebones_0_PLL_CPU_LOCK_M2F;
wire          PF_CCC_C0_0_OUT0_FABCLK_0;
wire          PF_OSC_C0_0_RCOSC_160MHZ_GL;
wire          REFCLK;
wire          REFCLK_N;
wire   [14:3] LEDS_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LEDS_net_1 = LEDS_net_0;
assign LEDS[14:3] = LEDS_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------blinky
blinky blinky_0(
        // Inputs
        .clkin  ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .enable ( MSS_barebones_0_PLL_CPU_LOCK_M2F ),
        // Outputs
        .leds   ( LEDS_net_0 ) 
        );

//--------MSS_barebones
MSS_barebones MSS_barebones_0(
        // Inputs
        .MSS_RESET_N_F2M  ( VCC_net ),
        .REFCLK           ( REFCLK ),
        .REFCLK_N         ( REFCLK_N ),
        // Outputs
        .PLL_CPU_LOCK_M2F ( MSS_barebones_0_PLL_CPU_LOCK_M2F ),
        .MSS_RESET_N_M2F  (  ) 
        );

//--------PF_CCC_C0
PF_CCC_C0 PF_CCC_C0_0(
        // Inputs
        .REF_CLK_0     ( PF_OSC_C0_0_RCOSC_160MHZ_GL ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0    (  ) 
        );

//--------PF_OSC_C0
PF_OSC_C0 PF_OSC_C0_0(
        // Outputs
        .RCOSC_160MHZ_GL ( PF_OSC_C0_0_RCOSC_160MHZ_GL ) 
        );

//--------PFSOC_INIT_MONITOR_C0
PFSOC_INIT_MONITOR_C0 PFSOC_INIT_MONITOR_C0_0(
        // Outputs
        .FABRIC_POR_N               (  ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           (  ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );


endmodule
