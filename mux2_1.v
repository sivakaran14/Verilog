module mux2_1(s1,i1,i2,y1);
input s1,i1,i2;
output y1;
assign y1=(s1?i2:i1);
endmodule
