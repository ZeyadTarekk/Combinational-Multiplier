module MultiplierTB();
reg [3:0]A,B;
wire [7:0] C;
reg [8:0]i,j;
Multiplier m1(A,B,C);
initial begin
A=0;
B=0;
for(i=0;i<=15;i=i+1)
begin
	for(j=0;j<=15;j=j+1)
	begin 
		A = i;
		B = j;
		#1 $display("%d*%d = %d",A,B,C);
	end
end
$finish;
end
endmodule

