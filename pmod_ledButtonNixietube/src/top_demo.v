/*顶部模块*/
module top_demo (
    input           i_clk           ,
    input           i_rst           ,
    input   [3:0]   i_button        ,
    input   [3:0]   i_switch        ,
    output  [7:0]   o_led           ,
    output  [6:0]   o_nixieTube     ,
    output          o_sel
);

wire        [3:0]   w_button        ;

driver_Button button0(
    .i_clk           (i_clk      ),
    .i_rst           (i_rst      ),
    .i_button        (i_button[0]),
    .o_pluse         (w_button[0])  //按键0模块
);
driver_Button button1(
    .i_clk           (i_clk      ),
    .i_rst           (i_rst      ),
    .i_button        (i_button[1]),
    .o_pluse         (w_button[1])  //按键1模块
);
driver_Button button2(
    .i_clk           (i_clk      ),
    .i_rst           (i_rst      ),
    .i_button        (i_button[2]),
    .o_pluse         (w_button[2])  //按键2模块
);
driver_Button button3(
    .i_clk           (i_clk      ),
    .i_rst           (i_rst      ),
    .i_button        (i_button[3]),
    .o_pluse         (w_button[3])  //按键3模块
);
driver_NixieTube nixietube(
    .i_clk           (i_clk      ),
    .i_rst           (i_rst      ),
    .i_add           (w_button   ),
    .o_nixieTube     (o_nixieTube),
    .o_sel           (o_sel      )  //数码管模块
);
driver_Led led(
    .i_clk           (i_clk      ),
    .i_rst           (i_rst      ),
    .i_switch        (i_switch   ),
    .o_led           (o_led      )  //Led模块
);
endmodule
