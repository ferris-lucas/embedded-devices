## Generated SDC file "digital_clock.sdc"

## Copyright (C) 2019  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

## DATE    "Sun Jul 12 14:30:38 2020"

##
## DEVICE  "EP4CE6E22C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clk}]
create_clock -name {sevensegment_driver:seg7|segclk[12]} -period 1.000 -waveform { 0.000 0.500 } [get_registers {sevensegment_driver:seg7|segclk[12]}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -rise_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -fall_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -rise_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -fall_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -rise_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -fall_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -rise_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {sevensegment_driver:seg7|segclk[12]}] -fall_to [get_clocks {sevensegment_driver:seg7|segclk[12]}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {btnC}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {btnC}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {btnR}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {btnR}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {btnU}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {btnU}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {clk}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {clk}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {an[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {an[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {an[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {an[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {an[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {an[2]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {an[3]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {an[3]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[2]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[3]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[3]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[4]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[4]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[5]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[5]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[6]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[6]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {led[7]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {led[7]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[2]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[3]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[3]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[4]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[4]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[5]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[5]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  2.000 [get_ports {seg[6]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  1.000 [get_ports {seg[6]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

