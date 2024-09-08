module decoder1_2(A,S,Y1,Y2);
input A,S;
output Y1,Y2;
wire x1;
not n1(x1,A);
and a1(Y1,x1,S);
and a2(Y2,A,S);
endmodule
