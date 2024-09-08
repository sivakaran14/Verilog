module bitarraymul(A,B,Y);
input[1:0]A;
input[1:0]B;
output [7:0]Y;
assign Y[0]=A[0]&B[0];
assign Y[1]=A[1]&B[0];
assign Y[2]=A[0]&B[1];
assign Y[3]=A[1]&B[1];
assign Y[4]=Y[1]&Y[2];
assign Y[5]=Y[1]^Y[2];
assign Y[6]=Y[5]&Y[3];
assign Y[7]=Y[5]^Y[3];
endmodule
