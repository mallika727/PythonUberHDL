// File: ConcatDemo_TB_V_VHDL.v
// Generated by MyHDL 0.10
// Date: Wed Aug 29 14:28:04 2018


`timescale 1ns/10ps

module ConcatDemo_TB_V_VHDL (

);



wire [6:0] Res;
wire signed [6:0] ResS;
wire [5:0] ConcatDemo0_0_RefVal;

assign ConcatDemo0_0_RefVal = 6'd25;


always @(ResS, Res) begin: CONCATDEMO_TB_V_VHDL_PRINT_DATA
    $write("%h", Res);
    $write(" ");
    $write("%h", ResS);
    $write("\n");
end



assign Res = {1'b1, ConcatDemo0_0_RefVal};
assign ResS = $signed({1'b1, ConcatDemo0_0_RefVal});


initial begin: CONCATDEMO_TB_V_VHDL_STIMULES
    integer i;
    for (i=0; i<2; i=i+1) begin
        # 1;
    end
    $finish;
end

endmodule
