module tb_mux4_1;
reg i1,i2,i3,i4,s1,s2;
wire Y;
mux4_1 m1(.i1(i1),.i2(i2),.i3(i3),.i4(i4),.s1(s1),.s2(s2),.y(Y));
initial 
begin
    s1=1'b0;s2=1'b0;i1=1'b1;i2=1'b0;i3=1'b0;i4=1'b0;
#10 s1=1'b0;s2=1'b1;i1=1'b0;i2=1'b1;i3=1'b0;i4=1'b0;
#10 s1=1'b1;s2=1'b0;i1=1'b0;i2=1'b0;i3=1'b1;i4=1'b0;
#10 s1=1'b1;s2=1'b1;i1=1'b0;i2=1'b0;i3=1'b0;i4=1'b1;
#100;$finish;
end 
initial
begin
$dumpfile("tb_mux4_1.vcd");
$dumpvars(0,tb_mux4_1);
end
endmodule

