//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Jun 21 20:06:51 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// blinky_sd
module blinky_sd(
    // Inputs
    REFCLK,
    REFCLK_N,
    TCK,
    TDI,
    TMS,
    TRSTB,
    // Outputs
    LEDS,
    TDO,
    TDO_OE
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         REFCLK;
input         REFCLK_N;
input         TCK;
input         TDI;
input         TMS;
input         TRSTB;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [14:3] LEDS;
output        TDO;
output        TDO_OE;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [14:3] LEDS_net_0;
wire          PF_CCC_C0_0_OUT0_FABCLK_0;
wire          PF_OSC_C0_0_RCOSC_160MHZ_GL;
wire          PFSOC_INIT_MONITOR_C0_0_DEVICE_INIT_DONE;
wire          REFCLK;
wire          REFCLK_N;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TDO_OE_net_0;
wire          TMS;
wire          TRSTB;
wire   [14:3] LEDS_net_1;
wire          TDO_net_1;
wire          TDO_OE_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LEDS_net_1   = LEDS_net_0;
assign LEDS[14:3]   = LEDS_net_1;
assign TDO_net_1    = TDO_net_0;
assign TDO          = TDO_net_1;
assign TDO_OE_net_1 = TDO_OE_net_0;
assign TDO_OE       = TDO_OE_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------blinky
blinky blinky_0(
        // Inputs
        .clkin ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        // Outputs
        .leds  ( LEDS_net_0 ) 
        );

//--------MSS_barebones
MSS_barebones MSS_barebones_0(
        // Inputs
        .JTAG_TMS_F2M     ( TMS ),
        .JTAG_TCK_F2M     ( TCK ),
        .JTAG_TDI_F2M     ( TDI ),
        .JTAG_TRSTB_F2M   ( TRSTB ),
        .MSS_RESET_N_F2M  ( PFSOC_INIT_MONITOR_C0_0_DEVICE_INIT_DONE ),
        .REFCLK           ( REFCLK ),
        .REFCLK_N         ( REFCLK_N ),
        // Outputs
        .JTAG_TDO_M2F     ( TDO_net_0 ),
        .JTAG_TDO_OE_M2F  ( TDO_OE_net_0 ),
        .PLL_CPU_LOCK_M2F (  ),
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
        .DEVICE_INIT_DONE           ( PFSOC_INIT_MONITOR_C0_0_DEVICE_INIT_DONE ),
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
