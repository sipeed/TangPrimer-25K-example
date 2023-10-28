/*按键去抖模块
每次按键按下将输出一个脉冲波形，脉冲长度取决于按下时间*/
module driver_Button #(
    parameter   P_DEALY_PERIOD = 'd5_000_000
)(
    input                   i_clk           ,
    input                   i_rst           ,
    input                   i_button        ,
    output                  o_pluse
);
/***************reg*******************/
reg             ro_pluse        = 0         ;
reg    [23:0]   r_cnt           = 0         ;
reg             r_state         = 0         ;
/***************wire******************/
wire            w_c_full                    ;
/***************assign****************/
assign          w_c_full    = (r_cnt == P_DEALY_PERIOD-1);
assign          o_pluse     = r_state                    ;
/***************always****************/
//——————<r_cnt>—————————————//
always @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 0;
    else if(i_button)
        r_cnt <= 0;
    else if(!i_button)
        r_cnt <= r_cnt + 1;
    else
        r_cnt <= r_cnt;
end
//——————<r_state>—————————————//
always @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_state <= 0;
    else if(i_button)
        r_state <= 0;
    else if(w_c_full)
        r_state <= 1;
    else
        r_state <= r_state;
end
endmodule
