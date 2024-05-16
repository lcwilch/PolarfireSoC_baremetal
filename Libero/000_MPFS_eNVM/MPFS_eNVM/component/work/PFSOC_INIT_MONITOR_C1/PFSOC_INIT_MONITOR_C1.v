//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed May 15 20:33:13 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of PFSOC_INIT_MONITOR_C1 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-FCVG484E
# Create and Configure the core component PFSOC_INIT_MONITOR_C1
create_and_configure_core -core_vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:1.0.307} -component_name {PFSOC_INIT_MONITOR_C1} -params {\
"BANK_0_CALIB_STATUS_ENABLED:true"  \
"BANK_0_CALIB_STATUS_SIMULATION_DELAY:1"  \
"BANK_0_RECALIBRATION_ENABLED:false"  \
"BANK_0_VDDI_STATUS_ENABLED:false"  \
"BANK_0_VDDI_STATUS_SIMULATION_DELAY:1"  \
"BANK_1_CALIB_STATUS_ENABLED:true"  \
"BANK_1_CALIB_STATUS_SIMULATION_DELAY:1"  \
"BANK_1_RECALIBRATION_ENABLED:false"  \
"BANK_1_VDDI_STATUS_ENABLED:false"  \
"BANK_1_VDDI_STATUS_SIMULATION_DELAY:1"  \
"BANK_7_CALIB_STATUS_ENABLED:true"  \
"BANK_7_CALIB_STATUS_SIMULATION_DELAY:1"  \
"BANK_7_RECALIBRATION_ENABLED:false"  \
"BANK_7_VDDI_STATUS_ENABLED:false"  \
"BANK_7_VDDI_STATUS_SIMULATION_DELAY:1"  \
"BANK_8_CALIB_STATUS_ENABLED:true"  \
"BANK_8_CALIB_STATUS_SIMULATION_DELAY:1"  \
"BANK_8_RECALIBRATION_ENABLED:false"  \
"BANK_8_VDDI_STATUS_ENABLED:false"  \
"BANK_8_VDDI_STATUS_SIMULATION_DELAY:1"  \
"BANK_9_CALIB_STATUS_ENABLED:true"  \
"BANK_9_CALIB_STATUS_SIMULATION_DELAY:1"  \
"BANK_9_RECALIBRATION_ENABLED:false"  \
"BANK_9_VDDI_STATUS_ENABLED:false"  \
"BANK_9_VDDI_STATUS_SIMULATION_DELAY:1"  \
"DEVICE_INIT_DONE_SIMULATION_DELAY:12"  \
"FABRIC_DELAY_INCR:3"  \
"FABRIC_POR_N_SIMULATION_DELAY:1"  \
"LATCH_SC_OUTPUTS:false"  \
"PCIE_DELAY_INCR:2"  \
"PCIE_INIT_DONE_SIMULATION_DELAY:4"  \
"SHOW_BANK_0_CALIB_STATUS_ENABLED:true"  \
"SHOW_BANK_0_RECALIBRATION_ENABLED:true"  \
"SHOW_BANK_0_VDDI_STATUS_ENABLED:true"  \
"SHOW_BANK_1_CALIB_STATUS_ENABLED:true"  \
"SHOW_BANK_1_RECALIBRATION_ENABLED:true"  \
"SHOW_BANK_1_VDDI_STATUS_ENABLED:true"  \
"SHOW_BANK_7_CALIB_STATUS_ENABLED:false"  \
"SHOW_BANK_7_RECALIBRATION_ENABLED:false"  \
"SHOW_BANK_7_VDDI_STATUS_ENABLED:false"  \
"SHOW_BANK_8_CALIB_STATUS_ENABLED:false"  \
"SHOW_BANK_8_RECALIBRATION_ENABLED:false"  \
"SHOW_BANK_8_VDDI_STATUS_ENABLED:false"  \
"SHOW_BANK_9_CALIB_STATUS_ENABLED:false"  \
"SHOW_BANK_9_RECALIBRATION_ENABLED:false"  \
"SHOW_BANK_9_VDDI_STATUS_ENABLED:false"  \
"SRAM_DELAY_INCR:3"  \
"SRAM_INIT_DONE_SIMULATION_DELAY:6"  \
"URAM_DELAY_INCR:3"  \
"USRAM_INIT_DONE_SIMULATION_DELAY:9"   }
# Exporting Component Description of PFSOC_INIT_MONITOR_C1 to TCL done
*/

// PFSOC_INIT_MONITOR_C1
module PFSOC_INIT_MONITOR_C1(
    // Outputs
    AUTOCALIB_DONE,
    BANK_0_CALIB_STATUS,
    BANK_1_CALIB_STATUS,
    DEVICE_INIT_DONE,
    FABRIC_POR_N,
    PCIE_INIT_DONE,
    SRAM_INIT_DONE,
    SRAM_INIT_FROM_SNVM_DONE,
    SRAM_INIT_FROM_SPI_DONE,
    SRAM_INIT_FROM_UPROM_DONE,
    USRAM_INIT_DONE,
    USRAM_INIT_FROM_SNVM_DONE,
    USRAM_INIT_FROM_SPI_DONE,
    USRAM_INIT_FROM_UPROM_DONE,
    XCVR_INIT_DONE
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output AUTOCALIB_DONE;
output BANK_0_CALIB_STATUS;
output BANK_1_CALIB_STATUS;
output DEVICE_INIT_DONE;
output FABRIC_POR_N;
output PCIE_INIT_DONE;
output SRAM_INIT_DONE;
output SRAM_INIT_FROM_SNVM_DONE;
output SRAM_INIT_FROM_SPI_DONE;
output SRAM_INIT_FROM_UPROM_DONE;
output USRAM_INIT_DONE;
output USRAM_INIT_FROM_SNVM_DONE;
output USRAM_INIT_FROM_SPI_DONE;
output USRAM_INIT_FROM_UPROM_DONE;
output XCVR_INIT_DONE;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   AUTOCALIB_DONE_net_0;
wire   BANK_0_CALIB_STATUS_net_0;
wire   BANK_1_CALIB_STATUS_net_0;
wire   DEVICE_INIT_DONE_net_0;
wire   FABRIC_POR_N_net_0;
wire   PCIE_INIT_DONE_net_0;
wire   SRAM_INIT_DONE_net_0;
wire   SRAM_INIT_FROM_SNVM_DONE_net_0;
wire   SRAM_INIT_FROM_SPI_DONE_net_0;
wire   SRAM_INIT_FROM_UPROM_DONE_net_0;
wire   USRAM_INIT_DONE_net_0;
wire   USRAM_INIT_FROM_SNVM_DONE_net_0;
wire   USRAM_INIT_FROM_SPI_DONE_net_0;
wire   USRAM_INIT_FROM_UPROM_DONE_net_0;
wire   XCVR_INIT_DONE_net_0;
wire   FABRIC_POR_N_net_1;
wire   PCIE_INIT_DONE_net_1;
wire   USRAM_INIT_DONE_net_1;
wire   SRAM_INIT_DONE_net_1;
wire   DEVICE_INIT_DONE_net_1;
wire   BANK_0_CALIB_STATUS_net_1;
wire   BANK_1_CALIB_STATUS_net_1;
wire   XCVR_INIT_DONE_net_1;
wire   USRAM_INIT_FROM_SNVM_DONE_net_1;
wire   USRAM_INIT_FROM_UPROM_DONE_net_1;
wire   USRAM_INIT_FROM_SPI_DONE_net_1;
wire   SRAM_INIT_FROM_SNVM_DONE_net_1;
wire   SRAM_INIT_FROM_UPROM_DONE_net_1;
wire   SRAM_INIT_FROM_SPI_DONE_net_1;
wire   AUTOCALIB_DONE_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FABRIC_POR_N_net_1               = FABRIC_POR_N_net_0;
assign FABRIC_POR_N                     = FABRIC_POR_N_net_1;
assign PCIE_INIT_DONE_net_1             = PCIE_INIT_DONE_net_0;
assign PCIE_INIT_DONE                   = PCIE_INIT_DONE_net_1;
assign USRAM_INIT_DONE_net_1            = USRAM_INIT_DONE_net_0;
assign USRAM_INIT_DONE                  = USRAM_INIT_DONE_net_1;
assign SRAM_INIT_DONE_net_1             = SRAM_INIT_DONE_net_0;
assign SRAM_INIT_DONE                   = SRAM_INIT_DONE_net_1;
assign DEVICE_INIT_DONE_net_1           = DEVICE_INIT_DONE_net_0;
assign DEVICE_INIT_DONE                 = DEVICE_INIT_DONE_net_1;
assign BANK_0_CALIB_STATUS_net_1        = BANK_0_CALIB_STATUS_net_0;
assign BANK_0_CALIB_STATUS              = BANK_0_CALIB_STATUS_net_1;
assign BANK_1_CALIB_STATUS_net_1        = BANK_1_CALIB_STATUS_net_0;
assign BANK_1_CALIB_STATUS              = BANK_1_CALIB_STATUS_net_1;
assign XCVR_INIT_DONE_net_1             = XCVR_INIT_DONE_net_0;
assign XCVR_INIT_DONE                   = XCVR_INIT_DONE_net_1;
assign USRAM_INIT_FROM_SNVM_DONE_net_1  = USRAM_INIT_FROM_SNVM_DONE_net_0;
assign USRAM_INIT_FROM_SNVM_DONE        = USRAM_INIT_FROM_SNVM_DONE_net_1;
assign USRAM_INIT_FROM_UPROM_DONE_net_1 = USRAM_INIT_FROM_UPROM_DONE_net_0;
assign USRAM_INIT_FROM_UPROM_DONE       = USRAM_INIT_FROM_UPROM_DONE_net_1;
assign USRAM_INIT_FROM_SPI_DONE_net_1   = USRAM_INIT_FROM_SPI_DONE_net_0;
assign USRAM_INIT_FROM_SPI_DONE         = USRAM_INIT_FROM_SPI_DONE_net_1;
assign SRAM_INIT_FROM_SNVM_DONE_net_1   = SRAM_INIT_FROM_SNVM_DONE_net_0;
assign SRAM_INIT_FROM_SNVM_DONE         = SRAM_INIT_FROM_SNVM_DONE_net_1;
assign SRAM_INIT_FROM_UPROM_DONE_net_1  = SRAM_INIT_FROM_UPROM_DONE_net_0;
assign SRAM_INIT_FROM_UPROM_DONE        = SRAM_INIT_FROM_UPROM_DONE_net_1;
assign SRAM_INIT_FROM_SPI_DONE_net_1    = SRAM_INIT_FROM_SPI_DONE_net_0;
assign SRAM_INIT_FROM_SPI_DONE          = SRAM_INIT_FROM_SPI_DONE_net_1;
assign AUTOCALIB_DONE_net_1             = AUTOCALIB_DONE_net_0;
assign AUTOCALIB_DONE                   = AUTOCALIB_DONE_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PFSOC_INIT_MONITOR_C1_PFSOC_INIT_MONITOR_C1_0_PFSOC_INIT_MONITOR   -   Microsemi:SgCore:PFSOC_INIT_MONITOR:1.0.307
PFSOC_INIT_MONITOR_C1_PFSOC_INIT_MONITOR_C1_0_PFSOC_INIT_MONITOR PFSOC_INIT_MONITOR_C1_0(
        // Outputs
        .FABRIC_POR_N               ( FABRIC_POR_N_net_0 ),
        .PCIE_INIT_DONE             ( PCIE_INIT_DONE_net_0 ),
        .USRAM_INIT_DONE            ( USRAM_INIT_DONE_net_0 ),
        .SRAM_INIT_DONE             ( SRAM_INIT_DONE_net_0 ),
        .DEVICE_INIT_DONE           ( DEVICE_INIT_DONE_net_0 ),
        .BANK_0_CALIB_STATUS        ( BANK_0_CALIB_STATUS_net_0 ),
        .BANK_1_CALIB_STATUS        ( BANK_1_CALIB_STATUS_net_0 ),
        .XCVR_INIT_DONE             ( XCVR_INIT_DONE_net_0 ),
        .USRAM_INIT_FROM_SNVM_DONE  ( USRAM_INIT_FROM_SNVM_DONE_net_0 ),
        .USRAM_INIT_FROM_UPROM_DONE ( USRAM_INIT_FROM_UPROM_DONE_net_0 ),
        .USRAM_INIT_FROM_SPI_DONE   ( USRAM_INIT_FROM_SPI_DONE_net_0 ),
        .SRAM_INIT_FROM_SNVM_DONE   ( SRAM_INIT_FROM_SNVM_DONE_net_0 ),
        .SRAM_INIT_FROM_UPROM_DONE  ( SRAM_INIT_FROM_UPROM_DONE_net_0 ),
        .SRAM_INIT_FROM_SPI_DONE    ( SRAM_INIT_FROM_SPI_DONE_net_0 ),
        .AUTOCALIB_DONE             ( AUTOCALIB_DONE_net_0 ) 
        );


endmodule
