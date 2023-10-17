//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//GOWIN Version: V1.9.9 Beta-3
//Part Number: GW5A-LV25MG121NES
//Device: GW5A-25
//Device Version: A
//Created Time: Wed Aug 30 16:44:51 2023

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    gowin_clkdiv your_instance_name(
        .clkout0(clkout0_o), //output clkout0
        .clkout1(clkout1_o), //output clkout1
        .clkin(clkin_i), //input clkin
        .reset_i(reset_i_i) //input reset_i
    );

//--------Copy end-------------------
