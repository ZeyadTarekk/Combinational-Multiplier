
module BcdEncoderTB();
reg [7:0]binary;
wire [11:0]Bcd;
reg [8:0]i;
BcdEncoder bd1(binary,Bcd);
initial begin
	$display("Binary   BCD");
	binary = 0;
	for(i=0;i<255;i=i+1)
	begin
		binary = binary+1;
		#1 $display("%d   %4b %4b %4b %d%d%d",binary,Bcd[11:8],Bcd[7:4],Bcd[3:0],Bcd[11:8],Bcd[7:4],Bcd[3:0]);

	end
	$finish;
end

endmodule
