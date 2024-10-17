//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.03  Education (64-bit)
//Created Time: 2024-10-17 21:18:58
create_clock -name sys_clk -period 20 -waveform {0 10} [get_ports {clk}]
create_clock -name sample_clk -period 238.095 -waveform {0 119.047} [get_ports {sample_clk}]
set_clock_groups -asynchronous -group [get_clocks {sys_clk}] -group [get_clocks {sample_clk}]

//===========   Only required after enabling GAO ===========================================

create_clock -name tck_pad_i -period 50 -waveform {0 25} [get_ports {tck_pad_i}]
set_clock_groups -asynchronous -group [get_clocks {sys_clk}] -group [get_clocks {tck_pad_i}] -group [get_clocks {sample_clk}]

//==========================================================================================
