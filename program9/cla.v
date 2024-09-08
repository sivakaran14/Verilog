module cla(A,B,Cin,Cout,S);
input [3:0]A;
input [3:0]B;
input Cin;
output[3:0]S;
output Cout;
wire [3:0]P;
wire [3:0]G;
wire [4:0]C;
assign P[0]=A[0]^B[0];
assign P[1]=A[1]^B[1];
assign P[2]=A[2]^B[2];
assign P[3]=A[3]^B[3];
assign G[0]=A[0]&B[0];
assign G[1]=A[1]&B[1];
assign G[2]=A[2]&B[2];
assign G[3]=A[3]&B[3];
assign C[3]=G[3]|(P[3]&G[2])|(P[2]&P[3]&G[1])|(P[1]&P[2]&P[3]&G[0])|(P[1]&P[2]&P[0]&P[3]&Cin);
assign C[2]=G[2]|(P[2]&G[1])|(P[1]&P[2]&G[0])|(P[1]&P[2]&P[0]&Cin);
assign C[1]=G[1]|(P[1]&G[0])|(P[1]&P[0]&Cin);
assign C[0]=G[0]|P[0]|Cin;
assign S[0]=Cin^P[0];
assign S[1]=C[0]^P[1];
assign S[2]=C[1]^P[2];
assign S[3]=C[2]^P[3];
assign C[3]=Cin;
assign Cout=C[4];
endmodule

