//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed May 15 20:43:40 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MPFS_eNVM_test
module MPFS_eNVM_test(
    // Inputs
    REFCLK,
    REFCLK_N,
    // Outputs
    LED
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  REFCLK;
input  REFCLK_N;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   LED_net_0;
wire   PFSOC_INIT_MONITOR_C1_0_DEVICE_INIT_DONE;
wire   REFCLK;
wire   REFCLK_N;
wire   LED_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LED_net_1 = LED_net_0;
assign LED       = LED_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MSS_barebones
MSS_barebones MSS_barebones_0(
        // Inputs
        .MSS_RESET_N_F2M  ( PFSOC_INIT_MONITOR_C1_0_DEVICE_INIT_DONE ),
        .REFCLK           ( REFCLK ),
        .REFCLK_N         ( REFCLK_N ),
        // Outputs
        .PLL_CPU_LOCK_M2F (  ),
        .MSS_RESET_N_M2F  ( LED_net_0 ) 
        );

//--------PFSOC_INIT_MONITOR_C1
PFSOC_INIT_MONITOR_C1 PFSOC_INIT_MONITOR_C1_0(
        // Outputs
        .FABRIC_POR_N               (  ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( PFSOC_INIT_MONITOR_C1_0_DEVICE_INIT_DONE ),
        .BANK_0_CALIB_STATUS        (  ),
        .BANK_1_CALIB_STATUS        (  ),
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
