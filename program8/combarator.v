module combarator(A1,A0,B1,B0,X,Y,Z);
input A1,A0,B1,B0;
output X,Y,Z;
wire x1,x2,x3,x4;
assign x1=~A1;
assign x2=~B1;
assign x3=~A0;
assign x4=~B0;
assign x5=x1&B1;
assign x6=x2&A1;
assign x7=A0&x3;
assign x8=B0&x4;
assign x9=~(x5^x6);
assign x10=~(x7^x8);
assign x11=x9&x8;
assign x12=x9&x7;
assign X=x11|x6;
assign Y=x9&x10;
assign Z=x12|x5;
endmodule


