module Segments_tb();
reg[3:0] BCD;
wire [6:0] SEG;
//BCD = 0;
BCD7Segments SEG1(BCD,SEG);
initial begin
$display("BCD\tSEG");
$monitor ("%b %b",BCD , SEG);
BCD = 0;
#10 BCD=1;
#10 BCD=2;
#10 BCD=3;
#10 BCD=4;
#10 BCD=5;
#10 BCD=6;
#10 BCD=7;
#10 BCD=8;
#10 BCD=9;
#10 BCD=10;
#10 BCD=11;
#10 BCD=12;
#10 BCD=13;
#10 BCD=14;
#10 BCD=15;
#20
$finish;
end
endmodule
