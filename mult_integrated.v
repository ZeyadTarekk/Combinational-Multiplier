`include"bcd.v"
`include"ssd.v"
`include"mult4x4.v"

module Integ(A1,A2,Seg1,Seg2,Seg3);

input wire [3:0] A1,A2;
wire [7:0] A3; //A3 = A1 * A2
wire [11:0] BCD;
//reg [7:0] A4;
output wire [6:0] Seg1,Seg2,Seg3;
Multiplier M1(A1,A2,A3);
//assign A4=A3;
BcdEncoder B1(A3,BCD);

BCD7Segments Display1(BCD[11:8],Seg1);
BCD7Segments Display2(BCD[7:4],Seg2);
BCD7Segments Display3(BCD[3:0],Seg3);

endmodule

