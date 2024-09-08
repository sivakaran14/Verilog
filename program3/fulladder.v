module fulladder(A,B,C,S,D);
input A,B,C;
output S,D;
wire x1,x2,x3;
xor r1(S,A,B,C);
and a1(x1,A,B);
and a2(x2,B,C);
and a3(x3,A,C);
or o1(D,x1,x2,x3);
endmodule
