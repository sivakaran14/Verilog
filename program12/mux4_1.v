module mux4_1(i1,i2,i3,i4,s1,s2,y);
input i1,i2,i3,i4,s1,s2;
output y;
wire x1,x2,x3,x4,x5,x6;
not n1(x1,s1);
not n2(x2,s2);
and a1(x3,i1,x1,x2);
and a2(x4,i2,x1,s2);
and a3(x5,i3,s1,x2);
and a4(x6,i4,s1,s2);
or o1(y,x3,x4,x5,x6);
endmodule
