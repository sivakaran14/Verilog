module mux4_1(s1,s2,i1,i2,i3,i4,y1);
input s1,i1,i2,i3,i4,s2;
output y1;
assign y1=s1?(s2?i4:i3):(s2?i2:i1);
endmodule

module mux2_1(s3,i5,i6,y2);
input s3,i5,i6;
output y2;
assign y2=(s3?i6:i5);
endmodule

module mux8_1us4_1(input[7:0]i,
input[2:0]s,
output y);
output wire x2,x3,x1;
mux4_1 l1(.i1(i[0]),.i2(i[1]),.i3(i[2]),.i4(i[3]),.s1(s[0]),.s2(s[1]),.y1(x2));
mux4_1 l2(.i1(i[4]),.i2(i[5]),.i3(i[6]),.i4(i[7]),.s1(s[0]),.s2(s[1]),.y1(x3));
mux2_1 h1(.i5(x2),.i6(x3),.s3(s[2]),.y2(y));
endmodule




