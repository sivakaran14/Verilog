module halfadder(A,B,C,D);
input A,B;
output C,D;
xor x1(C,A,B);
and a1(D,A,B);
endmodule
