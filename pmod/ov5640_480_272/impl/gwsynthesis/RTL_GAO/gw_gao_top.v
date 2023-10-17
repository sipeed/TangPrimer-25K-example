module gw_gao(
    \cmos_db[7] ,
    \cmos_db[6] ,
    \cmos_db[5] ,
    \cmos_db[4] ,
    \cmos_db[3] ,
    \cmos_db[2] ,
    \cmos_db[1] ,
    \cmos_db[0] ,
    \lcd_r[4] ,
    \lcd_r[3] ,
    \lcd_r[2] ,
    \lcd_r[1] ,
    \lcd_r[0] ,
    \lcd_g[5] ,
    \lcd_g[4] ,
    \lcd_g[3] ,
    \lcd_g[2] ,
    \lcd_g[1] ,
    \lcd_g[0] ,
    \lcd_b[4] ,
    \lcd_b[3] ,
    \lcd_b[2] ,
    \lcd_b[1] ,
    \lcd_b[0] ,
    cmos_scl,
    cmos_sda,
    sys_run,
    cam_run,
    rst_led,
    sys_led,
    lcd_dclk,
    lcd_hs,
    lcd_vs,
    lcd_de,
    video_clk,
    \vout_data[15] ,
    \vout_data[14] ,
    \vout_data[13] ,
    \vout_data[12] ,
    \vout_data[11] ,
    \vout_data[10] ,
    \vout_data[9] ,
    \vout_data[8] ,
    \vout_data[7] ,
    \vout_data[6] ,
    \vout_data[5] ,
    \vout_data[4] ,
    \vout_data[3] ,
    \vout_data[2] ,
    \vout_data[1] ,
    \vout_data[0] ,
    \cmos_16bit_data[15] ,
    \cmos_16bit_data[14] ,
    \cmos_16bit_data[13] ,
    \cmos_16bit_data[12] ,
    \cmos_16bit_data[11] ,
    \cmos_16bit_data[10] ,
    \cmos_16bit_data[9] ,
    \cmos_16bit_data[8] ,
    \cmos_16bit_data[7] ,
    \cmos_16bit_data[6] ,
    \cmos_16bit_data[5] ,
    \cmos_16bit_data[4] ,
    \cmos_16bit_data[3] ,
    \cmos_16bit_data[2] ,
    \cmos_16bit_data[1] ,
    \cmos_16bit_data[0] ,
    \write_data[15] ,
    \write_data[14] ,
    \write_data[13] ,
    \write_data[12] ,
    \write_data[11] ,
    \write_data[10] ,
    \write_data[9] ,
    \write_data[8] ,
    \write_data[7] ,
    \write_data[6] ,
    \write_data[5] ,
    \write_data[4] ,
    \write_data[3] ,
    \write_data[2] ,
    \write_data[1] ,
    \write_data[0] ,
    \lut_index[9] ,
    \lut_index[8] ,
    \lut_index[7] ,
    \lut_index[6] ,
    \lut_index[5] ,
    \lut_index[4] ,
    \lut_index[3] ,
    \lut_index[2] ,
    \lut_index[1] ,
    \lut_index[0] ,
    clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \cmos_db[7] ;
input \cmos_db[6] ;
input \cmos_db[5] ;
input \cmos_db[4] ;
input \cmos_db[3] ;
input \cmos_db[2] ;
input \cmos_db[1] ;
input \cmos_db[0] ;
input \lcd_r[4] ;
input \lcd_r[3] ;
input \lcd_r[2] ;
input \lcd_r[1] ;
input \lcd_r[0] ;
input \lcd_g[5] ;
input \lcd_g[4] ;
input \lcd_g[3] ;
input \lcd_g[2] ;
input \lcd_g[1] ;
input \lcd_g[0] ;
input \lcd_b[4] ;
input \lcd_b[3] ;
input \lcd_b[2] ;
input \lcd_b[1] ;
input \lcd_b[0] ;
input cmos_scl;
input cmos_sda;
input sys_run;
input cam_run;
input rst_led;
input sys_led;
input lcd_dclk;
input lcd_hs;
input lcd_vs;
input lcd_de;
input video_clk;
input \vout_data[15] ;
input \vout_data[14] ;
input \vout_data[13] ;
input \vout_data[12] ;
input \vout_data[11] ;
input \vout_data[10] ;
input \vout_data[9] ;
input \vout_data[8] ;
input \vout_data[7] ;
input \vout_data[6] ;
input \vout_data[5] ;
input \vout_data[4] ;
input \vout_data[3] ;
input \vout_data[2] ;
input \vout_data[1] ;
input \vout_data[0] ;
input \cmos_16bit_data[15] ;
input \cmos_16bit_data[14] ;
input \cmos_16bit_data[13] ;
input \cmos_16bit_data[12] ;
input \cmos_16bit_data[11] ;
input \cmos_16bit_data[10] ;
input \cmos_16bit_data[9] ;
input \cmos_16bit_data[8] ;
input \cmos_16bit_data[7] ;
input \cmos_16bit_data[6] ;
input \cmos_16bit_data[5] ;
input \cmos_16bit_data[4] ;
input \cmos_16bit_data[3] ;
input \cmos_16bit_data[2] ;
input \cmos_16bit_data[1] ;
input \cmos_16bit_data[0] ;
input \write_data[15] ;
input \write_data[14] ;
input \write_data[13] ;
input \write_data[12] ;
input \write_data[11] ;
input \write_data[10] ;
input \write_data[9] ;
input \write_data[8] ;
input \write_data[7] ;
input \write_data[6] ;
input \write_data[5] ;
input \write_data[4] ;
input \write_data[3] ;
input \write_data[2] ;
input \write_data[1] ;
input \write_data[0] ;
input \lut_index[9] ;
input \lut_index[8] ;
input \lut_index[7] ;
input \lut_index[6] ;
input \lut_index[5] ;
input \lut_index[4] ;
input \lut_index[3] ;
input \lut_index[2] ;
input \lut_index[1] ;
input \lut_index[0] ;
input clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \cmos_db[7] ;
wire \cmos_db[6] ;
wire \cmos_db[5] ;
wire \cmos_db[4] ;
wire \cmos_db[3] ;
wire \cmos_db[2] ;
wire \cmos_db[1] ;
wire \cmos_db[0] ;
wire \lcd_r[4] ;
wire \lcd_r[3] ;
wire \lcd_r[2] ;
wire \lcd_r[1] ;
wire \lcd_r[0] ;
wire \lcd_g[5] ;
wire \lcd_g[4] ;
wire \lcd_g[3] ;
wire \lcd_g[2] ;
wire \lcd_g[1] ;
wire \lcd_g[0] ;
wire \lcd_b[4] ;
wire \lcd_b[3] ;
wire \lcd_b[2] ;
wire \lcd_b[1] ;
wire \lcd_b[0] ;
wire cmos_scl;
wire cmos_sda;
wire sys_run;
wire cam_run;
wire rst_led;
wire sys_led;
wire lcd_dclk;
wire lcd_hs;
wire lcd_vs;
wire lcd_de;
wire video_clk;
wire \vout_data[15] ;
wire \vout_data[14] ;
wire \vout_data[13] ;
wire \vout_data[12] ;
wire \vout_data[11] ;
wire \vout_data[10] ;
wire \vout_data[9] ;
wire \vout_data[8] ;
wire \vout_data[7] ;
wire \vout_data[6] ;
wire \vout_data[5] ;
wire \vout_data[4] ;
wire \vout_data[3] ;
wire \vout_data[2] ;
wire \vout_data[1] ;
wire \vout_data[0] ;
wire \cmos_16bit_data[15] ;
wire \cmos_16bit_data[14] ;
wire \cmos_16bit_data[13] ;
wire \cmos_16bit_data[12] ;
wire \cmos_16bit_data[11] ;
wire \cmos_16bit_data[10] ;
wire \cmos_16bit_data[9] ;
wire \cmos_16bit_data[8] ;
wire \cmos_16bit_data[7] ;
wire \cmos_16bit_data[6] ;
wire \cmos_16bit_data[5] ;
wire \cmos_16bit_data[4] ;
wire \cmos_16bit_data[3] ;
wire \cmos_16bit_data[2] ;
wire \cmos_16bit_data[1] ;
wire \cmos_16bit_data[0] ;
wire \write_data[15] ;
wire \write_data[14] ;
wire \write_data[13] ;
wire \write_data[12] ;
wire \write_data[11] ;
wire \write_data[10] ;
wire \write_data[9] ;
wire \write_data[8] ;
wire \write_data[7] ;
wire \write_data[6] ;
wire \write_data[5] ;
wire \write_data[4] ;
wire \write_data[3] ;
wire \write_data[2] ;
wire \write_data[1] ;
wire \write_data[0] ;
wire \lut_index[9] ;
wire \lut_index[8] ;
wire \lut_index[7] ;
wire \lut_index[6] ;
wire \lut_index[5] ;
wire \lut_index[4] ;
wire \lut_index[3] ;
wire \lut_index[2] ;
wire \lut_index[1] ;
wire \lut_index[0] ;
wire clk;
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
    .trig0_i(clk),
    .data_i({\cmos_db[7] ,\cmos_db[6] ,\cmos_db[5] ,\cmos_db[4] ,\cmos_db[3] ,\cmos_db[2] ,\cmos_db[1] ,\cmos_db[0] ,\lcd_r[4] ,\lcd_r[3] ,\lcd_r[2] ,\lcd_r[1] ,\lcd_r[0] ,\lcd_g[5] ,\lcd_g[4] ,\lcd_g[3] ,\lcd_g[2] ,\lcd_g[1] ,\lcd_g[0] ,\lcd_b[4] ,\lcd_b[3] ,\lcd_b[2] ,\lcd_b[1] ,\lcd_b[0] ,cmos_scl,cmos_sda,sys_run,cam_run,rst_led,sys_led,lcd_dclk,lcd_hs,lcd_vs,lcd_de,video_clk,\vout_data[15] ,\vout_data[14] ,\vout_data[13] ,\vout_data[12] ,\vout_data[11] ,\vout_data[10] ,\vout_data[9] ,\vout_data[8] ,\vout_data[7] ,\vout_data[6] ,\vout_data[5] ,\vout_data[4] ,\vout_data[3] ,\vout_data[2] ,\vout_data[1] ,\vout_data[0] ,\cmos_16bit_data[15] ,\cmos_16bit_data[14] ,\cmos_16bit_data[13] ,\cmos_16bit_data[12] ,\cmos_16bit_data[11] ,\cmos_16bit_data[10] ,\cmos_16bit_data[9] ,\cmos_16bit_data[8] ,\cmos_16bit_data[7] ,\cmos_16bit_data[6] ,\cmos_16bit_data[5] ,\cmos_16bit_data[4] ,\cmos_16bit_data[3] ,\cmos_16bit_data[2] ,\cmos_16bit_data[1] ,\cmos_16bit_data[0] ,\write_data[15] ,\write_data[14] ,\write_data[13] ,\write_data[12] ,\write_data[11] ,\write_data[10] ,\write_data[9] ,\write_data[8] ,\write_data[7] ,\write_data[6] ,\write_data[5] ,\write_data[4] ,\write_data[3] ,\write_data[2] ,\write_data[1] ,\write_data[0] ,\lut_index[9] ,\lut_index[8] ,\lut_index[7] ,\lut_index[6] ,\lut_index[5] ,\lut_index[4] ,\lut_index[3] ,\lut_index[2] ,\lut_index[1] ,\lut_index[0] ,clk}),
    .clk_i(clk)
);

endmodule
