module mux2_1(i1,i2,s1,y);
input i1,i2,s1;
output y;
wire x1,x2,x3;
not n1(x1,s1);
and a1(x2,i1,x1);
and a2(x3,i2,s1);
or o1(y,x2,x3);
endmodule
