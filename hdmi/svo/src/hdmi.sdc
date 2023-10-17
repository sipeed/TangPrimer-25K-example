//Copyright (C)2014-2023 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.9 Beta-3
//Created Time: 2023-08-31 10:26:09
create_clock -name clk_50 -period 20 -waveform {0 10} [get_ports {clk}]
report_max_frequency -mod_ins {Gowin_PLL_inst}
