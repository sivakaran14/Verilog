module fullsubtractor(A,B,C,D,E);
input A,B,C;
output D,E;
wire x1,x2,x3,x4;
xor r1(D,A,B,C);
not n1(x1,A);
and a1(x2,x1,C);
and a2(x3,B,x1);
and a3(x4,B,C);
or o1(E,x2,x3,x4);
endmodule
