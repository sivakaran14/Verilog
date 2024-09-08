module demux1_4(A,S1,S2,Y1,Y2,Y3,Y4);
input A,S1,S2;
output Y1,Y2,Y3,Y4;
wire x1,x2;
not n1(x1,S1);
not n2(x2,S2);
and a1(Y1,x1,x2,A);
and a2(Y2,x1,S2,A);
and a3(Y3,S1,x2,A);
and a4(Y4,S1,S2,A);
endmodule

