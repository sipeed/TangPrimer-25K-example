//Copyright (C)2014-2023 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: V1.9.9 Beta-5
//Created Time: 2023-10-28 13:51:29
create_clock -name sys_clk -period 20 -waveform {0 10} [all_inputs]
create_clock -name clk_sdram -period 40 -waveform {0 20} [all_outputs]
