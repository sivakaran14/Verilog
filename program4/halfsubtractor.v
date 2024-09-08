module halfsubtractor(A,B,C,D);
input A,B;
output C,D;
wire X;
xor x1(C,A,B);
not n1(X,A);
and a1(D,B,X);
endmodule
