/*LED Shift Register and DIP Switch Truth Table Display Module*/
module driver_Led(
    input           i_clk               ,
    input           i_rst               ,
    input   [3:0]   i_switch            ,
    output  [7:0]   o_led
);
/***************reg*******************/
reg         [27:0]  r_cnt       = 0             ;
reg         [7:0]   r_streamLed = 8'b11111110   ;//Output shift register for LED shift pattern
reg         [7:0]   w_tabelLed  = 8'b11111111   ;//Output DIP switch truth table register
/***************assign****************/
/*When the most significant bit (leftmost) of the DIP switch is set high,
display the shift register; otherwise,
display the truth table of the three least significant bits (rightmost) of the DIP switch.*/
assign      o_led = i_switch[3] ? w_tabelLed : r_streamLed;
/***************always****************/
//——————<w_tabelLed>—————————————//
always @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        w_tabelLed  <= 8'b11111111;
    else
        case(i_switch[2:0])
            3'b111  : w_tabelLed <= 8'b11111111;
            3'b110  : w_tabelLed <= 8'b11111110;
            3'b101  : w_tabelLed <= 8'b11111101;
            3'b100  : w_tabelLed <= 8'b11111011;
            3'b011  : w_tabelLed <= 8'b11110111;
            3'b010  : w_tabelLed <= 8'b11101111;
            3'b001  : w_tabelLed <= 8'b11011111;
            3'b000  : w_tabelLed <= 8'b10111111;
            default : w_tabelLed <= 8'b11111111;
        endcase
end
//——————<r_cnt>—————————————//
always @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 0;
    else if(r_cnt == 'd50_000_000)
        r_cnt <= 0;
    else
        r_cnt <= r_cnt + 1;
end
//——————<r_streamLed>—————————————//
always @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_streamLed <= 8'b11111110;
    else if(r_cnt == 'd50_000_000)
        r_streamLed <= {r_streamLed[6:0],r_streamLed[7]};
    else
        r_streamLed <= r_streamLed;
end
endmodule
