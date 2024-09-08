module binarytogray(A,B,C,D,E,F,G,H);
input A,B,C,D;
output E,F,G,H;
assign E=A;
xor x1(F,A,B);
xor x2(G,B,C);
xor x3(H,C,D);
endmodule
