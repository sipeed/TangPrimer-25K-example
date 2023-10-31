module gw_gao(
    \IO_sdram_dq[15] ,
    \IO_sdram_dq[14] ,
    \IO_sdram_dq[13] ,
    \IO_sdram_dq[12] ,
    \IO_sdram_dq[11] ,
    \IO_sdram_dq[10] ,
    \IO_sdram_dq[9] ,
    \IO_sdram_dq[8] ,
    \IO_sdram_dq[7] ,
    \IO_sdram_dq[6] ,
    \IO_sdram_dq[5] ,
    \IO_sdram_dq[4] ,
    \IO_sdram_dq[3] ,
    \IO_sdram_dq[2] ,
    \IO_sdram_dq[1] ,
    \IO_sdram_dq[0] ,
    \O_sdram_ba[1] ,
    \O_sdram_ba[0] ,
    \O_sdram_dqm[1] ,
    \O_sdram_dqm[0] ,
    \O_sdram_addr[12] ,
    \O_sdram_addr[11] ,
    \O_sdram_addr[10] ,
    \O_sdram_addr[9] ,
    \O_sdram_addr[8] ,
    \O_sdram_addr[7] ,
    \O_sdram_addr[6] ,
    \O_sdram_addr[5] ,
    \O_sdram_addr[4] ,
    \O_sdram_addr[3] ,
    \O_sdram_addr[2] ,
    \O_sdram_addr[1] ,
    \O_sdram_addr[0] ,
    sys_clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \IO_sdram_dq[15] ;
input \IO_sdram_dq[14] ;
input \IO_sdram_dq[13] ;
input \IO_sdram_dq[12] ;
input \IO_sdram_dq[11] ;
input \IO_sdram_dq[10] ;
input \IO_sdram_dq[9] ;
input \IO_sdram_dq[8] ;
input \IO_sdram_dq[7] ;
input \IO_sdram_dq[6] ;
input \IO_sdram_dq[5] ;
input \IO_sdram_dq[4] ;
input \IO_sdram_dq[3] ;
input \IO_sdram_dq[2] ;
input \IO_sdram_dq[1] ;
input \IO_sdram_dq[0] ;
input \O_sdram_ba[1] ;
input \O_sdram_ba[0] ;
input \O_sdram_dqm[1] ;
input \O_sdram_dqm[0] ;
input \O_sdram_addr[12] ;
input \O_sdram_addr[11] ;
input \O_sdram_addr[10] ;
input \O_sdram_addr[9] ;
input \O_sdram_addr[8] ;
input \O_sdram_addr[7] ;
input \O_sdram_addr[6] ;
input \O_sdram_addr[5] ;
input \O_sdram_addr[4] ;
input \O_sdram_addr[3] ;
input \O_sdram_addr[2] ;
input \O_sdram_addr[1] ;
input \O_sdram_addr[0] ;
input sys_clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \IO_sdram_dq[15] ;
wire \IO_sdram_dq[14] ;
wire \IO_sdram_dq[13] ;
wire \IO_sdram_dq[12] ;
wire \IO_sdram_dq[11] ;
wire \IO_sdram_dq[10] ;
wire \IO_sdram_dq[9] ;
wire \IO_sdram_dq[8] ;
wire \IO_sdram_dq[7] ;
wire \IO_sdram_dq[6] ;
wire \IO_sdram_dq[5] ;
wire \IO_sdram_dq[4] ;
wire \IO_sdram_dq[3] ;
wire \IO_sdram_dq[2] ;
wire \IO_sdram_dq[1] ;
wire \IO_sdram_dq[0] ;
wire \O_sdram_ba[1] ;
wire \O_sdram_ba[0] ;
wire \O_sdram_dqm[1] ;
wire \O_sdram_dqm[0] ;
wire \O_sdram_addr[12] ;
wire \O_sdram_addr[11] ;
wire \O_sdram_addr[10] ;
wire \O_sdram_addr[9] ;
wire \O_sdram_addr[8] ;
wire \O_sdram_addr[7] ;
wire \O_sdram_addr[6] ;
wire \O_sdram_addr[5] ;
wire \O_sdram_addr[4] ;
wire \O_sdram_addr[3] ;
wire \O_sdram_addr[2] ;
wire \O_sdram_addr[1] ;
wire \O_sdram_addr[0] ;
wire sys_clk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i({\IO_sdram_dq[15] ,\IO_sdram_dq[14] ,\IO_sdram_dq[13] ,\IO_sdram_dq[12] ,\IO_sdram_dq[11] ,\IO_sdram_dq[10] ,\IO_sdram_dq[9] ,\IO_sdram_dq[8] ,\IO_sdram_dq[7] ,\IO_sdram_dq[6] ,\IO_sdram_dq[5] ,\IO_sdram_dq[4] ,\IO_sdram_dq[3] ,\IO_sdram_dq[2] ,\IO_sdram_dq[1] ,\IO_sdram_dq[0] ,\O_sdram_ba[1] ,\O_sdram_ba[0] ,\O_sdram_dqm[1] ,\O_sdram_dqm[0] ,\O_sdram_addr[12] ,\O_sdram_addr[11] ,\O_sdram_addr[10] ,\O_sdram_addr[9] ,\O_sdram_addr[8] ,\O_sdram_addr[7] ,\O_sdram_addr[6] ,\O_sdram_addr[5] ,\O_sdram_addr[4] ,\O_sdram_addr[3] ,\O_sdram_addr[2] ,\O_sdram_addr[1] ,\O_sdram_addr[0] }),
    .data_i({\IO_sdram_dq[15] ,\IO_sdram_dq[14] ,\IO_sdram_dq[13] ,\IO_sdram_dq[12] ,\IO_sdram_dq[11] ,\IO_sdram_dq[10] ,\IO_sdram_dq[9] ,\IO_sdram_dq[8] ,\IO_sdram_dq[7] ,\IO_sdram_dq[6] ,\IO_sdram_dq[5] ,\IO_sdram_dq[4] ,\IO_sdram_dq[3] ,\IO_sdram_dq[2] ,\IO_sdram_dq[1] ,\IO_sdram_dq[0] ,\O_sdram_ba[1] ,\O_sdram_ba[0] ,\O_sdram_dqm[1] ,\O_sdram_dqm[0] ,\O_sdram_addr[12] ,\O_sdram_addr[11] ,\O_sdram_addr[10] ,\O_sdram_addr[9] ,\O_sdram_addr[8] ,\O_sdram_addr[7] ,\O_sdram_addr[6] ,\O_sdram_addr[5] ,\O_sdram_addr[4] ,\O_sdram_addr[3] ,\O_sdram_addr[2] ,\O_sdram_addr[1] ,\O_sdram_addr[0] }),
    .clk_i(sys_clk)
);

endmodule
