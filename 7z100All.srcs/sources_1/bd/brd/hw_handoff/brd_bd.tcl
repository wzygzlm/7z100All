
################################################################
# This is a generated script based on design: brd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source brd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# LEDShifter, SPI_Master_With_Single_CS, USBFifoToDVSSPI, testAERDVSSM, ulpi_wrapper, usb_cdc_core

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z100ffg900-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name brd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set ChipBiasAddrSelect_SBO_0 [ create_bd_port -dir O ChipBiasAddrSelect_SBO_0 ]
  set ChipBiasBitIn_DO_0 [ create_bd_port -dir O ChipBiasBitIn_DO_0 ]
  set ChipBiasClock_CBO_0 [ create_bd_port -dir O ChipBiasClock_CBO_0 ]
  set ChipBiasDiagSelect_SO_0 [ create_bd_port -dir O ChipBiasDiagSelect_SO_0 ]
  set ChipBiasEnable_SO_0 [ create_bd_port -dir O ChipBiasEnable_SO_0 ]
  set ChipBiasLatch_SBO_0 [ create_bd_port -dir O ChipBiasLatch_SBO_0 ]
  set DVSAERAck_SBO_0 [ create_bd_port -dir O DVSAERAck_SBO_0 ]
  set DVSAERData_AI_0 [ create_bd_port -dir I -from 10 -to 0 DVSAERData_AI_0 ]
  set DVSAERReq_ABI_0 [ create_bd_port -dir I DVSAERReq_ABI_0 ]
  set DVSAERReset_SBO_0 [ create_bd_port -dir O DVSAERReset_SBO_0 ]
  set IMUClock_CZO_0 [ create_bd_port -dir O IMUClock_CZO_0 ]
  set IMUData_DZIO_0 [ create_bd_port -dir IO IMUData_DZIO_0 ]
  set IMUFSync_SO_0 [ create_bd_port -dir O IMUFSync_SO_0 ]
  set IMUInterrupt_AI_0 [ create_bd_port -dir I IMUInterrupt_AI_0 ]
  set SyncInClock_AI_0 [ create_bd_port -dir I SyncInClock_AI_0 ]
  set SyncInSignal1_AI_0 [ create_bd_port -dir I SyncInSignal1_AI_0 ]
  set SyncInSignal2_AI_0 [ create_bd_port -dir I SyncInSignal2_AI_0 ]
  set SyncInSignal_AI_0 [ create_bd_port -dir I SyncInSignal_AI_0 ]
  set SyncOutClock_CO_0 [ create_bd_port -dir O SyncOutClock_CO_0 ]
  set SyncOutSignal_SO_0 [ create_bd_port -dir O SyncOutSignal_SO_0 ]
  set led_0 [ create_bd_port -dir O -from 5 -to 0 led_0 ]
  set ulpi_clk60_i_0 [ create_bd_port -dir I ulpi_clk60_i_0 ]
  set ulpi_data_io_0 [ create_bd_port -dir IO -from 7 -to 0 ulpi_data_io_0 ]
  set ulpi_dir_i_0 [ create_bd_port -dir I ulpi_dir_i_0 ]
  set ulpi_nxt_i_0 [ create_bd_port -dir I ulpi_nxt_i_0 ]
  set ulpi_stp_o_0 [ create_bd_port -dir O ulpi_stp_o_0 ]
  set vid_data [ create_bd_port -dir O -from 23 -to 0 vid_data ]
  set vid_hsync [ create_bd_port -dir O vid_hsync ]
  set vid_vsync [ create_bd_port -dir O vid_vsync ]

  # Create instance: EVFastCornerStream_0, and set properties
  set EVFastCornerStream_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:EVFastCornerStream:1.0 EVFastCornerStream_0 ]

  # Create instance: EVMUXDataToXYTSStream_0, and set properties
  set EVMUXDataToXYTSStream_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:EVMUXDataToXYTSStream:1.0 EVMUXDataToXYTSStream_0 ]

  # Create instance: LEDShifter_0, and set properties
  set block_name LEDShifter
  set block_cell_name LEDShifter_0
  if { [catch {set LEDShifter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $LEDShifter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SPI_Master_With_Sing_0, and set properties
  set block_name SPI_Master_With_Single_CS
  set block_cell_name SPI_Master_With_Sing_0
  if { [catch {set SPI_Master_With_Sing_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SPI_Master_With_Sing_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.CLKS_PER_HALF_BIT {10} \
   CONFIG.CS_INACTIVE_CLKS {1} \
   CONFIG.MAX_BYTES_PER_CS {6} \
 ] $SPI_Master_With_Sing_0

  # Create instance: USBFifoToDVSSPI_0, and set properties
  set block_name USBFifoToDVSSPI
  set block_cell_name USBFifoToDVSSPI_0
  if { [catch {set USBFifoToDVSSPI_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $USBFifoToDVSSPI_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {0} \
 ] $axi_gpio_0

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_SI {2} \
 ] $axi_smc

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
 ] $axi_vdma_0

  # Create instance: c_addsub_as_invert_and_delay, and set properties
  set c_addsub_as_invert_and_delay [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 c_addsub_as_invert_and_delay ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {1} \
   CONFIG.B_Constant {true} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {1} \
   CONFIG.B_Width {1} \
   CONFIG.CE {false} \
   CONFIG.Implementation {Fabric} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {1} \
 ] $c_addsub_as_invert_and_delay

  # Create instance: concat_swap_event_data, and set properties
  set concat_swap_event_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_swap_event_data ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {8} \
 ] $concat_swap_event_data

  # Create instance: cons_HIGH, and set properties
  set cons_HIGH [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 cons_HIGH ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $cons_HIGH

  # Create instance: const_HIGH, and set properties
  set const_HIGH [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_HIGH ]

  # Create instance: const_VCC, and set properties
  set const_VCC [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_VCC ]

  # Create instance: const_ZERO, and set properties
  set const_ZERO [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_ZERO ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $const_ZERO

  # Create instance: eventStreamToConstEn_0, and set properties
  set eventStreamToConstEn_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:eventStreamToConstEncntFrameStream:1.0 eventStreamToConstEn_0 ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Full_Flag {true} \
   CONFIG.Data_Count_Width {15} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {32765} \
   CONFIG.Full_Threshold_Negate_Value {32764} \
   CONFIG.Input_Data_Width {16} \
   CONFIG.Input_Depth {32768} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Output_Depth {65536} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {16} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Embedded_Registers {false} \
   CONFIG.Write_Data_Count {true} \
   CONFIG.Write_Data_Count_Width {15} \
 ] $fifo_generator_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.599976} \
   CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.157714} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {99.989998} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {39.995998} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {59.253330} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {123.064613} \
   CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {199.979996} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {99.989998} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {99.989998} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {123.064613} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {99.989998} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {99989998} \
   CONFIG.PCW_CLK1_FREQ {39995998} \
   CONFIG.PCW_CLK2_FREQ {59253330} \
   CONFIG.PCW_CLK3_FREQ {123064613} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CORE1_FIQ_INTR {0} \
   CONFIG.PCW_CORE1_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.200} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.33} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.560} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_CLK2_PORT {1} \
   CONFIG.PCW_EN_CLK3_PORT {1} \
   CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_I2C1 {1} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {1} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {0} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {0} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_I2C1 {1} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_PTP_ENET0 {0} \
   CONFIG.PCW_EN_PTP_ENET1 {0} \
   CONFIG.PCW_EN_QSPI {0} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SDIO1 {0} \
   CONFIG.PCW_EN_SMC {1} \
   CONFIG.PCW_EN_SPI0 {1} \
   CONFIG.PCW_EN_SPI1 {0} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_EN_UART1 {0} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_EN_USB1 {1} \
   CONFIG.PCW_EN_WDT {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {4} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {5} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {27} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {13} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK2_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK3_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {40} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {125} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {1} \
   CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
   CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
   CONFIG.PCW_I2C0_I2C0_IO {MIO 26 .. 27} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C1_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
   CONFIG.PCW_I2C1_I2C1_IO {EMIO} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.099998} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
   CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
   CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1599.840} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {out} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {inout} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {inout} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {inout} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {inout} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {inout} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {inout} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {out} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {inout} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {inout} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {out} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {out} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {in} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {out} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {in} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {in} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {inout} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {NAND Flash#unassigned#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#unassigned#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 0#UART 0#unassigned#unassigned#I2C 0#I2C 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#unassigned#unassigned} \
   CONFIG.PCW_MIO_TREE_SIGNALS {cs#unassigned#ale#we_b#data[2]#data[0]#data[1]#cle#re_b#data[4]#data[5]#data[6]#data[7]#data[3]#busy#unassigned#clk#cmd#data[0]#data[1]#data[2]#data[3]#rx#tx#unassigned#unassigned#scl#sda#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#unassigned#unassigned} \
   CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_NAND_CYCLES_T_AR {20} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {10} \
   CONFIG.PCW_NAND_CYCLES_T_RC {50} \
   CONFIG.PCW_NAND_CYCLES_T_REA {20} \
   CONFIG.PCW_NAND_CYCLES_T_RR {20} \
   CONFIG.PCW_NAND_CYCLES_T_WC {50} \
   CONFIG.PCW_NAND_CYCLES_T_WP {30} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_NAND_IO {MIO 0 2.. 14} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {11} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {11} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {11} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {11} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_P2F_CAN0_INTR {0} \
   CONFIG.PCW_P2F_CAN1_INTR {0} \
   CONFIG.PCW_P2F_CTI_INTR {0} \
   CONFIG.PCW_P2F_DMAC0_INTR {0} \
   CONFIG.PCW_P2F_DMAC1_INTR {0} \
   CONFIG.PCW_P2F_DMAC2_INTR {0} \
   CONFIG.PCW_P2F_DMAC3_INTR {0} \
   CONFIG.PCW_P2F_DMAC4_INTR {0} \
   CONFIG.PCW_P2F_DMAC5_INTR {0} \
   CONFIG.PCW_P2F_DMAC6_INTR {0} \
   CONFIG.PCW_P2F_DMAC7_INTR {0} \
   CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
   CONFIG.PCW_P2F_ENET0_INTR {0} \
   CONFIG.PCW_P2F_ENET1_INTR {0} \
   CONFIG.PCW_P2F_GPIO_INTR {0} \
   CONFIG.PCW_P2F_I2C0_INTR {0} \
   CONFIG.PCW_P2F_I2C1_INTR {0} \
   CONFIG.PCW_P2F_QSPI_INTR {0} \
   CONFIG.PCW_P2F_SDIO0_INTR {0} \
   CONFIG.PCW_P2F_SDIO1_INTR {0} \
   CONFIG.PCW_P2F_SMC_INTR {0} \
   CONFIG.PCW_P2F_SPI0_INTR {0} \
   CONFIG.PCW_P2F_SPI1_INTR {0} \
   CONFIG.PCW_P2F_UART0_INTR {0} \
   CONFIG.PCW_P2F_UART1_INTR {0} \
   CONFIG.PCW_P2F_USB0_INTR {0} \
   CONFIG.PCW_P2F_USB1_INTR {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.100} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.113} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.111} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.100} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.017} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.039} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.040} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.016} \
   CONFIG.PCW_PACKAGE_NAME {ffg900} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PERIPHERAL_BOARD_PRESET {None} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 16 .. 21} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
   CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
   CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
   CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SMC_CYCLE_T0 {NA} \
   CONFIG.PCW_SMC_CYCLE_T1 {NA} \
   CONFIG.PCW_SMC_CYCLE_T2 {NA} \
   CONFIG.PCW_SMC_CYCLE_T3 {NA} \
   CONFIG.PCW_SMC_CYCLE_T4 {NA} \
   CONFIG.PCW_SMC_CYCLE_T5 {NA} \
   CONFIG.PCW_SMC_CYCLE_T6 {NA} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS0_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS1_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS2_IO {EMIO} \
   CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
   CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {13} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {125} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {1} \
   CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
   CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
   CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 22 .. 23} \
   CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.280029} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {92.3275} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {92.3275} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {92.3275} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {92.3275} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {10} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {108.9255} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {131.286} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {131.83} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.5285} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {107.643} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {132.917} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {129.6135} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {108.6395} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {8 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {0} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {0} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {0} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {25} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {34} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
   CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
   CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
   CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
   CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB1_USB1_IO {MIO 40 .. 51} \
   CONFIG.PCW_USB_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CORESIGHT {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_CR_FABRIC {1} \
   CONFIG.PCW_USE_DDR_BYPASS {0} \
   CONFIG.PCW_USE_DEBUG {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
   CONFIG.PCW_USE_DMA0 {0} \
   CONFIG.PCW_USE_DMA1 {0} \
   CONFIG.PCW_USE_DMA2 {0} \
   CONFIG.PCW_USE_DMA3 {0} \
   CONFIG.PCW_USE_EXPANDED_IOP {0} \
   CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_HIGH_OCM {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
   CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_S_AXI_ACP {0} \
   CONFIG.PCW_USE_S_AXI_GP0 {0} \
   CONFIG.PCW_USE_S_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP2 {0} \
   CONFIG.PCW_USE_S_AXI_HP3 {0} \
   CONFIG.PCW_USE_TRACE {0} \
   CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
   CONFIG.PCW_VALUE_SILVERSION {3} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ps7_0_axi_periph

  # Create instance: slice_swap_event_data_0, and set properties
  set slice_swap_event_data_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_swap_event_data_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $slice_swap_event_data_0

  # Create instance: slice_swap_event_data_1, and set properties
  set slice_swap_event_data_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_swap_event_data_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_swap_event_data_1

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {5} \
   CONFIG.C_DATA_DEPTH {16384} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {11} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE8_TYPE {0} \
   CONFIG.C_PROBE9_TYPE {0} \
 ] $system_ila_0

  # Create instance: system_ila_2, and set properties
  set system_ila_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_2 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {56} \
   CONFIG.C_DATA_DEPTH {32768} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {63} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE10_TYPE {0} \
   CONFIG.C_PROBE11_TYPE {0} \
   CONFIG.C_PROBE12_TYPE {0} \
   CONFIG.C_PROBE13_TYPE {0} \
   CONFIG.C_PROBE14_TYPE {0} \
   CONFIG.C_PROBE15_TYPE {0} \
   CONFIG.C_PROBE16_TYPE {0} \
   CONFIG.C_PROBE17_TYPE {0} \
   CONFIG.C_PROBE18_TYPE {0} \
   CONFIG.C_PROBE19_TYPE {0} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE20_TYPE {0} \
   CONFIG.C_PROBE21_TYPE {0} \
   CONFIG.C_PROBE22_TYPE {0} \
   CONFIG.C_PROBE23_TYPE {0} \
   CONFIG.C_PROBE24_TYPE {0} \
   CONFIG.C_PROBE25_TYPE {0} \
   CONFIG.C_PROBE26_TYPE {0} \
   CONFIG.C_PROBE27_TYPE {0} \
   CONFIG.C_PROBE28_TYPE {0} \
   CONFIG.C_PROBE29_TYPE {0} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE30_TYPE {0} \
   CONFIG.C_PROBE31_TYPE {0} \
   CONFIG.C_PROBE32_TYPE {0} \
   CONFIG.C_PROBE33_TYPE {0} \
   CONFIG.C_PROBE34_TYPE {0} \
   CONFIG.C_PROBE35_TYPE {0} \
   CONFIG.C_PROBE36_TYPE {0} \
   CONFIG.C_PROBE37_TYPE {0} \
   CONFIG.C_PROBE38_TYPE {0} \
   CONFIG.C_PROBE39_TYPE {0} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE40_TYPE {0} \
   CONFIG.C_PROBE41_TYPE {0} \
   CONFIG.C_PROBE42_TYPE {0} \
   CONFIG.C_PROBE43_TYPE {0} \
   CONFIG.C_PROBE44_TYPE {0} \
   CONFIG.C_PROBE45_TYPE {0} \
   CONFIG.C_PROBE46_TYPE {0} \
   CONFIG.C_PROBE47_TYPE {0} \
   CONFIG.C_PROBE48_TYPE {0} \
   CONFIG.C_PROBE49_TYPE {0} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE50_TYPE {0} \
   CONFIG.C_PROBE51_TYPE {0} \
   CONFIG.C_PROBE52_TYPE {0} \
   CONFIG.C_PROBE53_TYPE {0} \
   CONFIG.C_PROBE54_TYPE {0} \
   CONFIG.C_PROBE55_TYPE {0} \
   CONFIG.C_PROBE56_TYPE {0} \
   CONFIG.C_PROBE57_TYPE {0} \
   CONFIG.C_PROBE58_TYPE {0} \
   CONFIG.C_PROBE59_TYPE {0} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE60_TYPE {0} \
   CONFIG.C_PROBE61_TYPE {0} \
   CONFIG.C_PROBE62_TYPE {0} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE8_TYPE {0} \
   CONFIG.C_PROBE9_TYPE {0} \
 ] $system_ila_2

  # Create instance: testAERDVSSM_0, and set properties
  set block_name testAERDVSSM
  set block_cell_name testAERDVSSM_0
  if { [catch {set testAERDVSSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $testAERDVSSM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /testAERDVSSM_0/Reset_RI]

  # Create instance: ulpi_wrapper_0, and set properties
  set block_name ulpi_wrapper
  set block_cell_name ulpi_wrapper_0
  if { [catch {set ulpi_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ulpi_wrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: usb_cdc_core_0, and set properties
  set block_name usb_cdc_core
  set block_cell_name usb_cdc_core_0
  if { [catch {set usb_cdc_core_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $usb_cdc_core_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {800} \
   CONFIG.GEN_F0_VBLANK_HSTART {800} \
   CONFIG.GEN_F0_VFRAME_SIZE {628} \
   CONFIG.GEN_F0_VSYNC_HEND {800} \
   CONFIG.GEN_F0_VSYNC_HSTART {800} \
   CONFIG.GEN_F0_VSYNC_VEND {604} \
   CONFIG.GEN_F0_VSYNC_VSTART {600} \
   CONFIG.GEN_F1_VBLANK_HEND {800} \
   CONFIG.GEN_F1_VBLANK_HSTART {800} \
   CONFIG.GEN_F1_VFRAME_SIZE {628} \
   CONFIG.GEN_F1_VSYNC_HEND {800} \
   CONFIG.GEN_F1_VSYNC_HSTART {800} \
   CONFIG.GEN_F1_VSYNC_VEND {604} \
   CONFIG.GEN_F1_VSYNC_VSTART {600} \
   CONFIG.GEN_HACTIVE_SIZE {800} \
   CONFIG.GEN_HFRAME_SIZE {1056} \
   CONFIG.GEN_HSYNC_END {968} \
   CONFIG.GEN_HSYNC_START {840} \
   CONFIG.GEN_VACTIVE_SIZE {600} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.VIDEO_MODE {800x600p} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_0

  # Create instance: xlconstant_ONE, and set properties
  set xlconstant_ONE [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_ONE ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_4

  # Create instance: xlslice_5, and set properties
  set xlslice_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {13} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_5

  # Create interface connections
  connect_bd_intf_net -intf_net EVABMOFStream_0_pixelDataStream_V_V [get_bd_intf_pins EVFastCornerStream_0/pixelDataStream_V_V] [get_bd_intf_pins eventStreamToConstEn_0/custDataStream_V_V]
  connect_bd_intf_net -intf_net EVABMOFStream_0_polStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/polStreamOut_V_V] [get_bd_intf_pins eventStreamToConstEn_0/polStream_V_V]
  connect_bd_intf_net -intf_net EVABMOFStream_0_tsStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/tsStreamOut_V_V] [get_bd_intf_pins eventStreamToConstEn_0/tsStream_V_V]
  connect_bd_intf_net -intf_net EVABMOFStream_0_xStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/xStreamOut_V_V] [get_bd_intf_pins eventStreamToConstEn_0/xStream_V_V]
  connect_bd_intf_net -intf_net EVABMOFStream_0_yStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/yStreamOut_V_V] [get_bd_intf_pins eventStreamToConstEn_0/yStream_V_V]
  connect_bd_intf_net -intf_net EVMUXDataToXYTSStream_0_polStreamOut_V_V1 [get_bd_intf_pins EVFastCornerStream_0/polStreamIn_V_V] [get_bd_intf_pins EVMUXDataToXYTSStream_0/polStreamOut_V_V]
  connect_bd_intf_net -intf_net EVMUXDataToXYTSStream_0_tsStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/tsStreamIn_V_V] [get_bd_intf_pins EVMUXDataToXYTSStream_0/tsStreamOut_V_V]
  connect_bd_intf_net -intf_net EVMUXDataToXYTSStream_0_xStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/xStreamIn_V_V] [get_bd_intf_pins EVMUXDataToXYTSStream_0/xStreamOut_V_V]
  connect_bd_intf_net -intf_net EVMUXDataToXYTSStream_0_yStreamOut_V_V [get_bd_intf_pins EVFastCornerStream_0/yStreamIn_V_V] [get_bd_intf_pins EVMUXDataToXYTSStream_0/yStreamOut_V_V]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net eventStreamToConstEn_0_frameStream [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins eventStreamToConstEn_0/frameStream]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins EVMUXDataToXYTSStream_0/s_axi_config] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins EVFastCornerStream_0/s_axi_config] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins eventStreamToConstEn_0/s_axi_config] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net DVSAERData_AI_0_1 [get_bd_ports DVSAERData_AI_0] [get_bd_pins system_ila_0/probe2] [get_bd_pins testAERDVSSM_0/DVSAERData_AI]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets DVSAERData_AI_0_1]
  connect_bd_net -net DVSAERReq_ABI_0_1 [get_bd_ports DVSAERReq_ABI_0] [get_bd_pins system_ila_0/probe3] [get_bd_pins testAERDVSSM_0/DVSAERReq_ABI]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets DVSAERReq_ABI_0_1]
  connect_bd_net -net IMUInterrupt_AI_0_1 [get_bd_ports IMUInterrupt_AI_0] [get_bd_pins testAERDVSSM_0/IMUInterrupt_AI]
  connect_bd_net -net LEDShifter_0_led [get_bd_ports led_0] [get_bd_pins LEDShifter_0/led]
  connect_bd_net -net Net [get_bd_ports IMUData_DZIO_0] [get_bd_pins testAERDVSSM_0/IMUData_DZIO]
  connect_bd_net -net Net1 [get_bd_pins const_ZERO/dout] [get_bd_pins v_axi4s_vid_out_0/fid] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset]
  connect_bd_net -net Net2 [get_bd_pins const_HIGH/dout] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce]
  connect_bd_net -net Net3 [get_bd_ports ulpi_data_io_0] [get_bd_pins ulpi_wrapper_0/ulpi_data_io]
  connect_bd_net -net SPI_Master_With_Sing_0_o_RX_Byte [get_bd_pins SPI_Master_With_Sing_0/o_RX_Byte] [get_bd_pins USBFifoToDVSSPI_0/dvsRXByte_i] [get_bd_pins system_ila_2/probe10]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets SPI_Master_With_Sing_0_o_RX_Byte]
  connect_bd_net -net SPI_Master_With_Sing_0_o_RX_DV [get_bd_pins SPI_Master_With_Sing_0/o_RX_DV] [get_bd_pins USBFifoToDVSSPI_0/dvsRXDataValid_i] [get_bd_pins system_ila_2/probe21]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets SPI_Master_With_Sing_0_o_RX_DV]
  connect_bd_net -net SPI_Master_With_Sing_0_o_SPI_CS_n [get_bd_pins SPI_Master_With_Sing_0/o_SPI_CS_n] [get_bd_pins testAERDVSSM_0/SPISlaveSelect_ABI]
  connect_bd_net -net SPI_Master_With_Sing_0_o_SPI_Clk [get_bd_pins SPI_Master_With_Sing_0/o_SPI_Clk] [get_bd_pins testAERDVSSM_0/SPIClock_AI]
  connect_bd_net -net SPI_Master_With_Sing_0_o_SPI_MOSI [get_bd_pins SPI_Master_With_Sing_0/o_SPI_MOSI] [get_bd_pins testAERDVSSM_0/SPIMOSI_AI]
  connect_bd_net -net SPI_Master_With_Sing_0_o_TX_Ready [get_bd_pins SPI_Master_With_Sing_0/o_TX_Ready] [get_bd_pins USBFifoToDVSSPI_0/spiReady_i] [get_bd_pins system_ila_2/probe5]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets SPI_Master_With_Sing_0_o_TX_Ready]
  connect_bd_net -net SyncInClock_AI_0_1 [get_bd_ports SyncInClock_AI_0] [get_bd_pins testAERDVSSM_0/SyncInClock_AI]
  connect_bd_net -net SyncInSignal1_AI_0_1 [get_bd_ports SyncInSignal1_AI_0] [get_bd_pins testAERDVSSM_0/SyncInSignal1_AI]
  connect_bd_net -net SyncInSignal2_AI_0_1 [get_bd_ports SyncInSignal2_AI_0] [get_bd_pins testAERDVSSM_0/SyncInSignal2_AI]
  connect_bd_net -net SyncInSignal_AI_0_1 [get_bd_ports SyncInSignal_AI_0] [get_bd_pins testAERDVSSM_0/SyncInSignal_AI]
  connect_bd_net -net USBFifoToDVSSPI_0_outputDataValid_o [get_bd_pins SPI_Master_With_Sing_0/i_TX_DV] [get_bd_pins USBFifoToDVSSPI_0/outputDataValid_o] [get_bd_pins system_ila_2/probe7]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets USBFifoToDVSSPI_0_outputDataValid_o]
  connect_bd_net -net USBFifoToDVSSPI_0_outputData_o [get_bd_pins SPI_Master_With_Sing_0/i_TX_Byte] [get_bd_pins USBFifoToDVSSPI_0/outputData_o] [get_bd_pins system_ila_2/probe6]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets USBFifoToDVSSPI_0_outputData_o]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din] [get_bd_pins xlslice_4/Din]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net bmRequestType_w_do [get_bd_pins system_ila_2/probe38] [get_bd_pins usb_cdc_core_0/bmRequestType_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets bmRequestType_w_do]
  connect_bd_net -net c_addsub_as_invert_and_delay_S [get_bd_pins c_addsub_as_invert_and_delay/S] [get_bd_pins system_ila_2/probe55] [get_bd_pins usb_cdc_core_0/inport_valid_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets c_addsub_as_invert_and_delay_S]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins USBFifoToDVSSPI_0/dvs_resp_addr_i] [get_bd_pins system_ila_2/probe11] [get_bd_pins usb_cdc_core_0/axi_bram_addr_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets c_counter_binary_0_Q]
  connect_bd_net -net const_VCC_dout [get_bd_pins EVFastCornerStream_0/ap_start] [get_bd_pins EVMUXDataToXYTSStream_0/ap_start] [get_bd_pins const_VCC/dout] [get_bd_pins eventStreamToConstEn_0/ap_start] [get_bd_pins processing_system7_0/SPI0_SS_I]
  connect_bd_net -net ctrl_ack_r_do [get_bd_pins system_ila_2/probe37] [get_bd_pins usb_cdc_core_0/ctrl_ack_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ctrl_ack_r_do]
  connect_bd_net -net ctrl_sending_r_do [get_bd_pins system_ila_2/probe26] [get_bd_pins usb_cdc_core_0/ctrl_sending_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ctrl_sending_r_do]
  connect_bd_net -net ctrl_stall_r_do [get_bd_pins system_ila_2/probe36] [get_bd_pins usb_cdc_core_0/ctrl_stall_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ctrl_stall_r_do]
  connect_bd_net -net ctrl_txdata_q_do [get_bd_pins system_ila_2/probe31] [get_bd_pins usb_cdc_core_0/ctrl_txdata_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ctrl_txdata_q_do]
  connect_bd_net -net ctrl_txstall_q_do [get_bd_pins system_ila_2/probe35] [get_bd_pins usb_cdc_core_0/ctrl_txstall_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ctrl_txstall_q_do]
  connect_bd_net -net ctrl_txvalid_q_do [get_bd_pins system_ila_2/probe32] [get_bd_pins usb_cdc_core_0/ctrl_txvalid_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ctrl_txvalid_q_do]
  connect_bd_net -net dataSPIToSendPrepared_w_do [get_bd_pins USBFifoToDVSSPI_0/dataSPIToSendPrepared_w_do] [get_bd_pins system_ila_2/probe2]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dataSPIToSendPrepared_w_do]
  connect_bd_net -net dvs_resp_data_o [get_bd_pins USBFifoToDVSSPI_0/dvs_resp_data_o] [get_bd_pins system_ila_2/probe4] [get_bd_pins usb_cdc_core_0/axi_bram_r_data_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dvs_resp_data_o]
  connect_bd_net -net ep2_tx_data_valid_w_do [get_bd_pins system_ila_2/probe56] [get_bd_pins usb_cdc_core_0/ep2_tx_data_valid_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ep2_tx_data_valid_w_do]
  connect_bd_net -net ep2_tx_data_w_do [get_bd_pins system_ila_2/probe57] [get_bd_pins usb_cdc_core_0/ep2_tx_data_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ep2_tx_data_w_do]
  connect_bd_net -net fifo_generator_0_almost_full [get_bd_pins fifo_generator_0/almost_full] [get_bd_pins system_ila_0/probe5] [get_bd_pins testAERDVSSM_0/AERSMFifoAlmostFull_AI]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets fifo_generator_0_almost_full]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins system_ila_0/probe10] [get_bd_pins system_ila_2/probe8] [get_bd_pins usb_cdc_core_0/inport_data_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets fifo_generator_0_dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins c_addsub_as_invert_and_delay/A] [get_bd_pins fifo_generator_0/empty] [get_bd_pins system_ila_2/probe9]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets fifo_generator_0_empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins fifo_generator_0/full] [get_bd_pins system_ila_0/probe6] [get_bd_pins testAERDVSSM_0/AERSMFifoFull_AI]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets fifo_generator_0_full]
  connect_bd_net -net o_RX_Count [get_bd_pins SPI_Master_With_Sing_0/o_RX_Count] [get_bd_pins system_ila_2/probe0]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets o_RX_Count]
  connect_bd_net -net outPktReceived_q_do [get_bd_pins USBFifoToDVSSPI_0/outPktReceived_q_do] [get_bd_pins system_ila_2/probe25]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets outPktReceived_q_do]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins EVFastCornerStream_0/ap_rst_n] [get_bd_pins EVMUXDataToXYTSStream_0/ap_rst_n] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_smc/aresetn] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins eventStreamToConstEn_0/ap_rst_n] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins proc_sys_reset_1/peripheral_aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins EVFastCornerStream_0/ap_clk] [get_bd_pins EVMUXDataToXYTSStream_0/ap_clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins eventStreamToConstEn_0/ap_clk] [get_bd_pins fifo_generator_0/wr_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins system_ila_0/clk] [get_bd_pins testAERDVSSM_0/ADCClk_CI] [get_bd_pins testAERDVSSM_0/LogicClk_CI] [get_bd_pins testAERDVSSM_0/USBClock_CI] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins LEDShifter_0/clk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net r_RX_Bit_Count_do [get_bd_pins SPI_Master_With_Sing_0/r_RX_Bit_Count_do] [get_bd_pins system_ila_2/probe22]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets r_RX_Bit_Count_do]
  connect_bd_net -net r_TX_Bit_Count_do [get_bd_pins SPI_Master_With_Sing_0/r_TX_Bit_Count_do] [get_bd_pins system_ila_2/probe24]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets r_TX_Bit_Count_do]
  connect_bd_net -net rd_data_count [get_bd_pins fifo_generator_0/rd_data_count] [get_bd_pins system_ila_2/probe50]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets rd_data_count]
  connect_bd_net -net readAXIBRAM_r_do [get_bd_pins system_ila_2/probe39] [get_bd_pins usb_cdc_core_0/readAXIBRAM_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets readAXIBRAM_r_do]
  connect_bd_net -net rxDataComplete_o [get_bd_pins USBFifoToDVSSPI_0/rxDataComplete_o] [get_bd_pins system_ila_2/probe3] [get_bd_pins usb_cdc_core_0/ctrl_host_ack_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets rxDataComplete_o]
  connect_bd_net -net setupPktReceived_q_do [get_bd_pins USBFifoToDVSSPI_0/setupPktReceived_q_do] [get_bd_pins system_ila_2/probe1]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets setupPktReceived_q_do]
  connect_bd_net -net setup_resp_valid_delay_q_do [get_bd_pins system_ila_2/probe29] [get_bd_pins usb_cdc_core_0/setup_resp_valid_delay_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets setup_resp_valid_delay_q_do]
  connect_bd_net -net setup_valid_q_do [get_bd_pins system_ila_2/probe30] [get_bd_pins usb_cdc_core_0/setup_valid_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets setup_valid_q_do]
  connect_bd_net -net sie_tx_state_q_o [get_bd_pins system_ila_2/probe53] [get_bd_pins usb_cdc_core_0/sie_tx_state_q_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets sie_tx_state_q_o]
  connect_bd_net -net slice_swap_event_data_0_Dout [get_bd_pins concat_swap_event_data/In1] [get_bd_pins slice_swap_event_data_0/Dout]
  connect_bd_net -net slice_swap_event_data_1_Dout [get_bd_pins concat_swap_event_data/In0] [get_bd_pins slice_swap_event_data_1/Dout]
  connect_bd_net -net state_o [get_bd_pins system_ila_2/probe48] [get_bd_pins ulpi_wrapper_0/state_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets state_o]
  connect_bd_net -net state_r_do [get_bd_pins system_ila_2/probe58] [get_bd_pins usb_cdc_core_0/state_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets state_r_do]
  connect_bd_net -net status_stage_w_do [get_bd_pins system_ila_2/probe40] [get_bd_pins usb_cdc_core_0/status_stage_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets status_stage_w_do]
  connect_bd_net -net testAERDVSSM_0_AERSMOutFifoData_DO [get_bd_pins EVMUXDataToXYTSStream_0/eventFIFOIn_V] [get_bd_pins system_ila_0/probe0] [get_bd_pins xlslice_4/Dout]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets testAERDVSSM_0_AERSMOutFifoData_DO]
  connect_bd_net -net testAERDVSSM_0_AERSMOutFifoData_DO1 [get_bd_pins concat_swap_event_data/dout] [get_bd_pins fifo_generator_0/din] [get_bd_pins system_ila_0/probe7]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets testAERDVSSM_0_AERSMOutFifoData_DO1]
  connect_bd_net -net testAERDVSSM_0_AERSMOutFifoData_DO2 [get_bd_pins slice_swap_event_data_0/Din] [get_bd_pins slice_swap_event_data_1/Din] [get_bd_pins testAERDVSSM_0/AERSMOutFifoData_DO]
  connect_bd_net -net testAERDVSSM_0_AERSMOutFifoWrite_SO1 [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins system_ila_0/probe9] [get_bd_pins system_ila_2/probe51] [get_bd_pins testAERDVSSM_0/AERSMOutFifoWrite_SO]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets testAERDVSSM_0_AERSMOutFifoWrite_SO1]
  connect_bd_net -net testAERDVSSM_0_ChipBiasAddrSelect_SBO [get_bd_ports ChipBiasAddrSelect_SBO_0] [get_bd_pins testAERDVSSM_0/ChipBiasAddrSelect_SBO]
  connect_bd_net -net testAERDVSSM_0_ChipBiasBitIn_DO [get_bd_ports ChipBiasBitIn_DO_0] [get_bd_pins testAERDVSSM_0/ChipBiasBitIn_DO]
  connect_bd_net -net testAERDVSSM_0_ChipBiasClock_CBO [get_bd_ports ChipBiasClock_CBO_0] [get_bd_pins testAERDVSSM_0/ChipBiasClock_CBO]
  connect_bd_net -net testAERDVSSM_0_ChipBiasDiagSelect_SO [get_bd_ports ChipBiasDiagSelect_SO_0] [get_bd_pins testAERDVSSM_0/ChipBiasDiagSelect_SO]
  connect_bd_net -net testAERDVSSM_0_ChipBiasEnable_SO [get_bd_ports ChipBiasEnable_SO_0] [get_bd_pins testAERDVSSM_0/ChipBiasEnable_SO]
  connect_bd_net -net testAERDVSSM_0_ChipBiasLatch_SBO [get_bd_ports ChipBiasLatch_SBO_0] [get_bd_pins testAERDVSSM_0/ChipBiasLatch_SBO]
  connect_bd_net -net testAERDVSSM_0_DVSAERAck_SBO [get_bd_ports DVSAERAck_SBO_0] [get_bd_pins system_ila_0/probe4] [get_bd_pins testAERDVSSM_0/DVSAERAck_SBO]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets testAERDVSSM_0_DVSAERAck_SBO]
  connect_bd_net -net testAERDVSSM_0_DVSAERReset_SBO [get_bd_ports DVSAERReset_SBO_0] [get_bd_pins testAERDVSSM_0/DVSAERReset_SBO]
  connect_bd_net -net testAERDVSSM_0_IMUClock_CZO [get_bd_ports IMUClock_CZO_0] [get_bd_pins testAERDVSSM_0/IMUClock_CZO]
  connect_bd_net -net testAERDVSSM_0_IMUFSync_SO [get_bd_ports IMUFSync_SO_0] [get_bd_pins testAERDVSSM_0/IMUFSync_SO]
  connect_bd_net -net testAERDVSSM_0_SPIMISO_DZO [get_bd_pins SPI_Master_With_Sing_0/i_SPI_MISO] [get_bd_pins testAERDVSSM_0/SPIMISO_DZO]
  connect_bd_net -net testAERDVSSM_0_SyncOutClock_CO [get_bd_ports SyncOutClock_CO_0] [get_bd_pins testAERDVSSM_0/SyncOutClock_CO]
  connect_bd_net -net testAERDVSSM_0_SyncOutSignal_SO [get_bd_ports SyncOutSignal_SO_0] [get_bd_pins testAERDVSSM_0/SyncOutSignal_SO]
  connect_bd_net -net token_valid_w_do [get_bd_pins system_ila_2/probe19] [get_bd_pins usb_cdc_core_0/token_valid_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets token_valid_w_do]
  connect_bd_net -net tx_sent_data_counter_o [get_bd_pins system_ila_2/probe61] [get_bd_pins usb_cdc_core_0/tx_sent_data_counter_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets tx_sent_data_counter_o]
  connect_bd_net -net ulpi_clk60_i_0_1 [get_bd_ports ulpi_clk60_i_0] [get_bd_pins SPI_Master_With_Sing_0/i_Clk] [get_bd_pins USBFifoToDVSSPI_0/clk_i] [get_bd_pins c_addsub_as_invert_and_delay/CLK] [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins system_ila_2/clk] [get_bd_pins ulpi_wrapper_0/ulpi_clk60_i] [get_bd_pins usb_cdc_core_0/clk_i]
  connect_bd_net -net ulpi_data_in_o_d [get_bd_pins system_ila_2/probe34] [get_bd_pins ulpi_wrapper_0/ulpi_data_in_o_d]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_data_in_o_d]
  connect_bd_net -net ulpi_data_out_i_d [get_bd_pins system_ila_2/probe33] [get_bd_pins ulpi_wrapper_0/ulpi_data_out_i_d]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_data_out_i_d]
  connect_bd_net -net ulpi_dir_i_0_1 [get_bd_ports ulpi_dir_i_0] [get_bd_pins system_ila_2/probe16] [get_bd_pins ulpi_wrapper_0/ulpi_dir_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_dir_i_0_1]
  connect_bd_net -net ulpi_nxt_i_0_1 [get_bd_ports ulpi_nxt_i_0] [get_bd_pins system_ila_2/probe17] [get_bd_pins ulpi_wrapper_0/ulpi_nxt_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_nxt_i_0_1]
  connect_bd_net -net ulpi_wrapper_0_ulpi_stp_o [get_bd_ports ulpi_stp_o_0] [get_bd_pins system_ila_2/probe18] [get_bd_pins ulpi_wrapper_0/ulpi_stp_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_wrapper_0_ulpi_stp_o]
  connect_bd_net -net ulpi_wrapper_0_utmi_data_in_o [get_bd_pins system_ila_2/probe62] [get_bd_pins ulpi_wrapper_0/utmi_data_in_o] [get_bd_pins usb_cdc_core_0/utmi_data_in_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_wrapper_0_utmi_data_in_o]
  connect_bd_net -net ulpi_wrapper_0_utmi_linestate_o [get_bd_pins ulpi_wrapper_0/utmi_linestate_o] [get_bd_pins usb_cdc_core_0/utmi_linestate_i]
  connect_bd_net -net ulpi_wrapper_0_utmi_rxactive_o [get_bd_pins system_ila_2/probe47] [get_bd_pins ulpi_wrapper_0/utmi_rxactive_o] [get_bd_pins usb_cdc_core_0/utmi_rxactive_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_wrapper_0_utmi_rxactive_o]
  connect_bd_net -net ulpi_wrapper_0_utmi_rxerror_o [get_bd_pins ulpi_wrapper_0/utmi_rxerror_o] [get_bd_pins usb_cdc_core_0/utmi_rxerror_i]
  connect_bd_net -net ulpi_wrapper_0_utmi_rxvalid_o [get_bd_pins system_ila_2/probe46] [get_bd_pins ulpi_wrapper_0/utmi_rxvalid_o] [get_bd_pins usb_cdc_core_0/utmi_rxvalid_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_wrapper_0_utmi_rxvalid_o]
  connect_bd_net -net ulpi_wrapper_0_utmi_txready_o [get_bd_pins system_ila_2/probe54] [get_bd_pins ulpi_wrapper_0/utmi_txready_o] [get_bd_pins usb_cdc_core_0/utmi_txready_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets ulpi_wrapper_0_utmi_txready_o]
  connect_bd_net -net usb_cdc_core_0_data_complete_o_do [get_bd_pins USBFifoToDVSSPI_0/dataRecEnd_i] [get_bd_pins system_ila_2/probe14] [get_bd_pins usb_cdc_core_0/data_complete_o_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_cdc_core_0_data_complete_o_do]
  connect_bd_net -net usb_cdc_core_0_ep0_rx_setup_w_do [get_bd_pins USBFifoToDVSSPI_0/setupDataRecStart_i] [get_bd_pins system_ila_2/probe20] [get_bd_pins usb_cdc_core_0/ep0_rx_setup_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_cdc_core_0_ep0_rx_setup_w_do]
  connect_bd_net -net usb_cdc_core_0_inport_accept_o1 [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins system_ila_2/probe52] [get_bd_pins usb_cdc_core_0/inport_accept_o] [get_bd_pins util_vector_logic_3/Op2]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_cdc_core_0_inport_accept_o1]
  connect_bd_net -net usb_cdc_core_0_outport_data_o [get_bd_pins USBFifoToDVSSPI_0/inputData_i] [get_bd_pins system_ila_2/probe12] [get_bd_pins usb_cdc_core_0/outport_data_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_cdc_core_0_outport_data_o]
  connect_bd_net -net usb_cdc_core_0_outport_valid_o [get_bd_pins USBFifoToDVSSPI_0/inputDataValid_i] [get_bd_pins system_ila_2/probe13] [get_bd_pins usb_cdc_core_0/outport_valid_o]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_cdc_core_0_outport_valid_o]
  connect_bd_net -net usb_cdc_core_0_rx_out_do [get_bd_pins USBFifoToDVSSPI_0/outDataRecStart_i] [get_bd_pins system_ila_2/probe15] [get_bd_pins usb_cdc_core_0/rx_out_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_cdc_core_0_rx_out_do]
  connect_bd_net -net usb_cdc_core_0_utmi_data_out_o [get_bd_pins ulpi_wrapper_0/utmi_data_out_i] [get_bd_pins usb_cdc_core_0/utmi_data_out_o]
  connect_bd_net -net usb_cdc_core_0_utmi_dmpulldown_o [get_bd_pins ulpi_wrapper_0/utmi_dmpulldown_i] [get_bd_pins usb_cdc_core_0/utmi_dmpulldown_o]
  connect_bd_net -net usb_cdc_core_0_utmi_dppulldown_o [get_bd_pins ulpi_wrapper_0/utmi_dppulldown_i] [get_bd_pins usb_cdc_core_0/utmi_dppulldown_o]
  connect_bd_net -net usb_cdc_core_0_utmi_op_mode_o [get_bd_pins ulpi_wrapper_0/utmi_op_mode_i] [get_bd_pins usb_cdc_core_0/utmi_op_mode_o]
  connect_bd_net -net usb_cdc_core_0_utmi_termselect_o [get_bd_pins ulpi_wrapper_0/utmi_termselect_i] [get_bd_pins usb_cdc_core_0/utmi_termselect_o]
  connect_bd_net -net usb_cdc_core_0_utmi_txvalid_o [get_bd_pins ulpi_wrapper_0/utmi_txvalid_i] [get_bd_pins usb_cdc_core_0/utmi_txvalid_o]
  connect_bd_net -net usb_cdc_core_0_utmi_xcvrselect_o [get_bd_pins ulpi_wrapper_0/utmi_xcvrselect_i] [get_bd_pins usb_cdc_core_0/utmi_xcvrselect_o]
  connect_bd_net -net usb_reset_counter_q_do [get_bd_pins system_ila_2/probe60] [get_bd_pins usb_cdc_core_0/usb_reset_counter_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_reset_counter_q_do]
  connect_bd_net -net usb_reset_w_do [get_bd_pins system_ila_2/probe49] [get_bd_pins usb_cdc_core_0/usb_reset_w_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_reset_w_do]
  connect_bd_net -net usb_rst_time_do [get_bd_pins system_ila_2/probe59] [get_bd_pins usb_cdc_core_0/usb_rst_time_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usb_rst_time_do]
  connect_bd_net -net usbf_ep_data_bit_r_do [get_bd_pins system_ila_2/probe42] [get_bd_pins usb_cdc_core_0/usbf_ep_data_bit_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usbf_ep_data_bit_r_do]
  connect_bd_net -net usbf_new_data_bit_r_do [get_bd_pins system_ila_2/probe45] [get_bd_pins usb_cdc_core_0/usbf_new_data_bit_r_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usbf_new_data_bit_r_do]
  connect_bd_net -net usbf_state_q_do [get_bd_pins system_ila_2/probe44] [get_bd_pins usb_cdc_core_0/usbf_state_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usbf_state_q_do]
  connect_bd_net -net usbf_tx_pid_q_do [get_bd_pins system_ila_2/probe41] [get_bd_pins usb_cdc_core_0/usbf_tx_pid_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usbf_tx_pid_q_do]
  connect_bd_net -net usbf_tx_valid_q_do [get_bd_pins system_ila_2/probe43] [get_bd_pins usb_cdc_core_0/usbf_tx_valid_q_do]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets usbf_tx_valid_q_do]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins USBFifoToDVSSPI_0/rst_i] [get_bd_pins testAERDVSSM_0/Reset_RI] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_ports vid_data] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_ports vid_hsync] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_ports vid_vsync] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net w_Master_Ready_do [get_bd_pins SPI_Master_With_Sing_0/w_Master_Ready_do] [get_bd_pins system_ila_2/probe23]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets w_Master_Ready_do]
  connect_bd_net -net wrOUTIndex_q_do [get_bd_pins USBFifoToDVSSPI_0/wrOUTIndex_q_do] [get_bd_pins system_ila_2/probe28]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets wrOUTIndex_q_do]
  connect_bd_net -net wrSetupIndex_q_do [get_bd_pins USBFifoToDVSSPI_0/wrSetupIndex_q_do] [get_bd_pins system_ila_2/probe27]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets wrSetupIndex_q_do]
  connect_bd_net -net wr_data_count [get_bd_pins fifo_generator_0/wr_data_count] [get_bd_pins system_ila_0/probe8] [get_bd_pins xlslice_5/Din]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets wr_data_count]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins SPI_Master_With_Sing_0/i_TX_Count] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins EVMUXDataToXYTSStream_0/eventFIFODataValid_V] [get_bd_pins LEDShifter_0/rstn] [get_bd_pins SPI_Master_With_Sing_0/i_Rst_L] [get_bd_pins cons_HIGH/dout] [get_bd_pins system_ila_0/probe1] [get_bd_pins usb_cdc_core_0/enable_i] [get_bd_pins usb_cdc_core_0/outport_accept_i] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net xlconstant_ONE_dout [get_bd_pins util_vector_logic_2/Op2] [get_bd_pins xlconstant_ONE/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins usb_cdc_core_0/rst_i] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins ulpi_wrapper_0/ulpi_rst_i] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_5_Dout [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins xlslice_5/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs EVFastCornerStream_0/s_axi_config/Reg] SEG_EVFastCornerStream_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs EVMUXDataToXYTSStream_0/s_axi_config/Reg] SEG_EVMUXDataToXYTSStream_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs eventStreamToConstEn_0/s_axi_config/Reg] SEG_eventStreamToConstEn_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


