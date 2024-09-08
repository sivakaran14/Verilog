module encoder4_2(A,B,C,D,X,Y);
input A,B,C,D;
output X,Y;
or o1(X,C,D);
or o2(Y,D,B);
endmodule
