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

module fulladder_us_mux(input A,B,Cin,
output S,C
);
mux4_1 g1(.i1(Cin),.i2(~Cin),.i3(~Cin),.i4(Cin),.y(S),.s1(A),.s2(B));
mux4_1 g2(.i1(1'b0),.i2(Cin),.i3(Cin),.i4(1'b1),.y(C),.s1(A),.s2(B));
endmodule


