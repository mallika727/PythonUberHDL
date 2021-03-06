// File: MUX4_1_B.v
// Generated by MyHDL 0.10
// Date: Sun Sep 23 18:21:21 2018


`timescale 1ns/10ps

module MUX4_1_B (
    x0,
    x1,
    x2,
    x3,
    s0,
    s1,
    y
);
// 4:1 Multiblexer written in if-elif-else Behavioral
// Input:
//     x0(bool): input channel 0
//     x1(bool): input channel 1
//     x2(bool): input channel 2
//     x3(bool): input channel 3
//     s1(bool): channel selection input bit 1
//     s0(bool): channel selection input bit 0 
// Output:
//     y(bool): ouput

input x0;
input x1;
input x2;
input x3;
input s0;
input s1;
output y;
reg y;




always @(x0, s0, x3, x2, x1, s1) begin: MUX4_1_B_LOGIC
    if (((s0 == 0) && (s1 == 0))) begin
        y = x0;
    end
    else if (((s0 == 1) && (s1 == 0))) begin
        y = x1;
    end
    else if (((s0 == 0) && (s1 == 1))) begin
        y = x2;
    end
    else begin
        y = x3;
    end
end

endmodule
