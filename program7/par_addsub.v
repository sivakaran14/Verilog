module par_addsub(A,B,C,S,D);
input[3:0]A;
input[3:0]B;
input C;
output[3:0]S;
output D;
wire x1,x2,x3;
wire [4:1]y;
assign y=B^{4{C}};
fulladder f1(.A(A[0]),.B(y[1]),.C(C),.S(S[0]),.D(x1));
fulladder f2(.A(A[1]),.B(y[2]),.C(x1),.S(S[1]),.D(x2));
fulladder f3(.A(A[2]),.B(y[3]),.C(x2),.S(S[2]),.D(x3));
fulladder f4(.A(A[3]),.B(y[4]),.C(x3),.S(S[3]),.D(D));
endmodule

