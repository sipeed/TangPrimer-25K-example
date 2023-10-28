/*Dynamic Drive for Two-Digit Seven-Segment Display Module*/
module driver_NixieTube #(
    parameter       P_CNT       = 'd300_000 //Scanning Period for Dynamic Drive of the Seven-Segment Display
)(
    input           i_clk               ,
    input           i_rst               ,
    input   [3:0]   i_add               ,
    output  [6:0]   o_nixieTube         ,//ABCDEFG
    output          o_sel
);
/***************parameter*************/
localparam          P_0 = 7'b0000001    ;
localparam          P_1 = 7'b1111001    ;
localparam          P_2 = 7'b0010010    ;
localparam          P_3 = 7'b0110000    ;
localparam          P_4 = 7'b1101000    ;
localparam          P_5 = 7'b0100100    ;
localparam          P_6 = 7'b0000100    ;
localparam          P_7 = 7'b1110001    ;
localparam          P_8 = 7'b0000000    ;
localparam          P_9 = 7'b0100000    ;
localparam          P_X = 7'b1111111    ;  //Truth Table for Displaying 0-9 on the Seven-Segment Display and for Blank Display
/***************reg*******************/
reg        [23:0]   r_cnt               = 0;
reg         [3:0]   r_add               = 0;
reg         [3:0]   r_add1d             = 0;
reg         [3:0]   r_addBuffer         = 0;
reg         [4:0]   r_cntOnes           = 0;
reg         [4:0]   r_cntTens           = 0;
reg         [6:0]   r_nixieTubeOnes     = 0;
reg         [6:0]   r_nixieTubeTens     = 0;
reg                 ro_sel              = 0;
/***************assign****************/
assign      o_sel       = ro_sel                ;
assign      w_posedge0  = r_add[0] & !r_add1d[0];
assign      w_posedge1  = r_add[1] & !r_add1d[1];
assign      w_posedge2  = r_add[2] & !r_add1d[2];
assign      w_posedge3  = r_add[3] & !r_add1d[3];   //Detecting Rising Edges from 4 Button Modules
assign      o_nixieTube = ro_sel ? r_nixieTubeTens : r_nixieTubeOnes;
/*When o_sel is high, it indicates the tens digit of the seven-segment display is active;
conversely, it indicates the ones digit of the seven-segment display is active*/
/***************always****************/
//——————<r_cnt>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 0;
    else if(r_cnt == P_CNT)
        r_cnt <= 0;
    else
        r_cnt <= r_cnt+1;
end
//——————ro_sel—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        ro_sel <= 0 ;
    else if(r_cnt == P_CNT)
        ro_sel <= ~ro_sel ;
    else
        ro_sel <= ro_sel ;
end
//——————<r_add>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_add <= 0;
    else
        r_add <= i_add;
end
//——————<r_add1d>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_add1d <= 0;
    else
        r_add1d <= r_add;
end
//——————<r_addBuffer[0]>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_addBuffer[0] <= 0 ;

    else if(r_cnt == P_CNT)
        r_addBuffer[0] <= 0 ;
    else if(w_posedge0)
        r_addBuffer[0] <= 1 ;
    else
        r_addBuffer[0] <= r_addBuffer[0];
end
//——————<r_addBuffer[1]>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_addBuffer[1] <= 0 ;
    else if(r_cnt == P_CNT)
        r_addBuffer[1] <= 0 ;
    else if(w_posedge1)
        r_addBuffer[1] <= 1 ;
    else
        r_addBuffer[1] <= r_addBuffer[1];
end
//——————<r_addBuffer[2]>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_addBuffer[2] <= 0 ;
    else if(r_cnt == P_CNT)
        r_addBuffer[2] <= 0 ;
    else if(w_posedge2)
        r_addBuffer[2] <= 1 ;
    else
        r_addBuffer[2] <= r_addBuffer[2];
end
//——————<r_addBuffer[3]>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_addBuffer[3] <= 0 ;
    else if(r_cnt == P_CNT)
        r_addBuffer[3] <= 0 ;
    else if(w_posedge3)
        r_addBuffer[3] <= 1 ;
    else
        r_addBuffer[3] <= r_addBuffer[3];
end
//——————<r_cntOnes>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_cntOnes <= 0;
    else if((r_cnt == P_CNT) & ((r_cntOnes + r_addBuffer) > 5'd9))
        r_cntOnes <= r_cntOnes + r_addBuffer - 5'd10;
    else if(r_cnt == P_CNT)
        r_cntOnes <= r_cntOnes + r_addBuffer;
    else
        r_cntOnes <= r_cntOnes;
end
//——————<r_cntTens>—————————————//
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_cntTens <= 0;
    else if((r_cnt == P_CNT) & ((r_cntOnes + r_addBuffer) > 5'd9) & (r_cntTens == 5'd9))
        r_cntTens <= 0 ;
    else if((r_cnt == P_CNT) & ((r_cntOnes + r_addBuffer) > 5'd9))
        r_cntTens <= r_cntTens + 1;
    else
        r_cntTens <= r_cntTens;
end
//——————<r_nixieTubeOnes>—————————————/
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_nixieTubeOnes <= 7'b0;
    else if(r_cnt == P_CNT)
        case(r_cntOnes[3:0])
            4'd0    :   r_nixieTubeOnes <= P_0              ;
            4'd1    :   r_nixieTubeOnes <= P_1              ;
            4'd2    :   r_nixieTubeOnes <= P_2              ;
            4'd3    :   r_nixieTubeOnes <= P_3              ;
            4'd4    :   r_nixieTubeOnes <= P_4              ;
            4'd5    :   r_nixieTubeOnes <= P_5              ;
            4'd6    :   r_nixieTubeOnes <= P_6              ;
            4'd7    :   r_nixieTubeOnes <= P_7              ;
            4'd8    :   r_nixieTubeOnes <= P_8              ;
            4'd9    :   r_nixieTubeOnes <= P_9              ;
            default :   r_nixieTubeOnes <= r_nixieTubeOnes  ;
        endcase
    else
        r_nixieTubeOnes <= r_nixieTubeOnes;
end
//——————<r_nixieTubeTens>—————————————/
always  @(posedge i_clk or posedge i_rst)
begin
    if(i_rst)
        r_nixieTubeTens <= 7'b0;
    else if(r_cnt == P_CNT)
        case(r_cntTens[3:0])
            4'd0    :   r_nixieTubeTens <= P_X              ;
            4'd1    :   r_nixieTubeTens <= P_1              ;
            4'd2    :   r_nixieTubeTens <= P_2              ;
            4'd3    :   r_nixieTubeTens <= P_3              ;
            4'd4    :   r_nixieTubeTens <= P_4              ;
            4'd5    :   r_nixieTubeTens <= P_5              ;
            4'd6    :   r_nixieTubeTens <= P_6              ;
            4'd7    :   r_nixieTubeTens <= P_7              ;
            4'd8    :   r_nixieTubeTens <= P_8              ;
            4'd9    :   r_nixieTubeTens <= P_9              ;
            default :   r_nixieTubeTens <= r_nixieTubeTens  ;
        endcase
    else
        r_nixieTubeTens <= r_nixieTubeTens;
end
endmodule
