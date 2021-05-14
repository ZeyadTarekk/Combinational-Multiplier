module Integ_tb();
reg [3:0] A1,A2;
wire [6:0] seg1,seg2,seg3;

Integ Int1(A1,A2,seg1,seg2,seg3);
initial begin
$display("A1\tA2\tSeg1\tSeg2\tSeg3");
$monitor ("%b %b %b %b %b",A1,A2,seg1,seg2 , seg3);

A1 = 4'b0000;
A2 = 4'b0000; // 0 * 0 = 0 

#10
A1 = 4'b1111;
A2 = 4'b0001; // 15 * 1 = 15

#10
A1 = 4'b1111;
A2 = 4'b1111; // 15 * 15 = 225

#10
A1 = 4'b1001;
A2 = 4'b1000; // 9 * 8 = 72

#10
A1 = 4'b0110;
A2 = 4'b1001; // 6 * 9 = 54

#10
A1 = 4'b0100;
A2 = 4'b0111; // 4 * 7 = 28

#10
A1 = 4'b0111;
A2 = 4'b0111; // 7 * 7 = 49


#10
$finish;
end
endmodule


