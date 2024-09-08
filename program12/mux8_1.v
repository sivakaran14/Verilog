module mux8_1(d1,d2,d3,d4,d5,d6,d7,d8,a,b,c,e);
input d1,d2,d3,d4,d5,d6,d7,d8,a,b,c;
output e;
wire x1,x2,x3,x4,x5,x6,x7,x8,x10,x11;
not n1(x1,a);
not n2(x2,b);
not n3(x3,c);
and a1(x4,d1,x1,x2,x3);
and a2(x5,d2,x1,x2,c);
and a3(x6,d3,x1,b,x3);
and a4(x7,d4,x1,b,c);
and a5(x8,d5,a,x2,x3);
and a6(x9,d6,a,x2,c);
and a7(x10,d7,a,b,x3);
and a8(x11,d8,a,b,c);
or o1(e,x4,x5,x6,x7,x8,x9,x10,x11);
endmodule
