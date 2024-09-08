module ripplecarryadd(A,B,C,S,D);
input [3:0]A;
input [3:0]B;
input C;
output [3:0]S;
output D;
wire x1,x2,x3;
fulladder fa1(.A(A[0]),.B(B[0]),.C(C),.S(S[0]),.D(x1));
fulladder fa2(.A(A[1]),.B(B[1]),.C(x1),.S(S[1]),.D(x2));
fulladder fa3(.A(A[2]),.B(B[2]),.C(x2),.S(S[2]),.D(x3));
fulladder fa4(.A(A[3]),.B(B[3]),.C(x3),.S(S[3]),.D(D));
endmodule


