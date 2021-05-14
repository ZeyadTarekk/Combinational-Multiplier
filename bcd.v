module BcdEncoder(input [7:0]binary,output reg[11:0]Bcd);
reg [4:0]i;
reg [3:0]hunderds;
reg [3:0]tens; 
reg [3:0]units;
always @(*)
begin
	Bcd = 8'b0;
	tens = 4'b0;
	units = 4'b0;
	hunderds = 4'b0;
	for(i=0;i<8;i=i+1)
	begin
		Bcd = Bcd<<1;
		Bcd = Bcd+binary[7-i];
		{hunderds,tens,units} = Bcd;
		if(units>=4'b0101&& binary>9 && i!=7)
		begin
			units = units+4'b0011;
		end
		if(tens>=4'b0101&& binary>99 && i!=7)
		begin
			tens = tens+4'b0011;
		end
		if(hunderds>=4'b0101 )
		begin
			hunderds = hunderds+4'b0011;
		end
		Bcd = {hunderds,tens,units};
	end
end

endmodule
