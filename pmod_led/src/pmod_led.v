// Press S1 to see some LED's blinking

// If you get the ERROR PR2017 'x' cannot be placed according to constraint, you need to change some dual used pins to IO
// Process > Place & Route > Configuration > Dual-Purpose Pins
// Enable Use READY/DONE/CPU as regular IO


module top#(
    parameter pmod_num = 3, 
    parameter pmod_io_num = 3 * 8 - 1,
    parameter frequency = 50_000_000,
    parameter count_ms  = frequency / 1000 ,
    parameter count_us  = count_ms  / 1000 
)
(
    input clk,
    input key,
    output led,
    output led_done,
    output led_ready,
    output [pmod_io_num:0] pmod_io
);


reg led_output = 'd0 ;
reg [7:0] led_8_state_reg = 'b1 ;
reg [31:0] count='d0 ;

always @(posedge clk) begin
    if (!key) begin
        count <= 'b0;
        led_output <= 'b0;
        led_8_state_reg <= 'b1;
    end
    else if(count <= frequency/5 -1) 
        count <= count + 'b1;
    else begin
        count <= 'b0;
        led_output <= !led_output ;
        led_8_state_reg <= {led_8_state_reg[6:0], led_8_state_reg[7]} ;
    end
end

genvar pmod_sel;
generate for ( pmod_sel = 0 ; pmod_sel < pmod_num ; pmod_sel = pmod_sel + 1)
    assign pmod_io[ pmod_sel * 8 + 7 : pmod_sel * 8 ] = ~ led_8_state_reg ;
endgenerate

assign led = led_output ;
assign led_done = led_output ;
assign led_ready = led_output ;

endmodule