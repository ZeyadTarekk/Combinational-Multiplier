module Multiplier(input[3:0]A,B,output wire[7:0]C);
wire cout0;
wire cout1;
wire cout2;
wire [3:0]sum0;
wire [3:0]sum1;
wire [3:0]sum2;

assign C[0] = A[0]&B[0];
assign {cout0,sum0} = {1'b0,A[3:1]&{3{B[0]}}} + {A&{4{B[1]}}};
assign C[1] = sum0[0];
assign {cout1,sum1}= {A&{4{B[2]}}} + {cout0,sum0[3:1]};
assign C[2] = sum1[0];
assign {cout2,sum2} = {A&{4{B[3]}}}+{cout1,sum1[3:1]};
assign C[7:3] = {cout2,sum2};

endmodule
