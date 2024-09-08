module tb_mux8_1;
reg d1,d2,d3,d4,d5,d6,d7,d8,a,b,c;
wire E;
mux8_1 m1(.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.d8(d8),.a(a),.b(b),.c(c),.e(E));
initial
begin
    d1=1'b1; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0; d8=1'b0;a=1'b0; b=1'b0; c=1'b0;
#10 d1=1'b0; d2=1'b1; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0; d8=1'b0;a=1'b0; b=1'b0; c=1'b1;
#10 d1=1'b0; d2=1'b0; d3=1'b1; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0; d8=1'b0;a=1'b0; b=1'b1; c=1'b0;
#10 d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b1; d5=1'b0; d6=1'b0; d7=1'b0; d8=1'b0;a=1'b0; b=1'b1; c=1'b1;
#10 d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b1; d6=1'b0; d7=1'b0; d8=1'b0;a=1'b1; b=1'b0; c=1'b0;
#10 d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b1; d7=1'b0; d8=1'b0;a=1'b1; b=1'b0; c=1'b1;
#10 d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b1; d8=1'b0;a=1'b1; b=1'b1; c=1'b0; 
#10 d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0; d8=1'b1;a=1'b1; b=1'b1; c=1'b1;
#100;$finish;
end
initial
begin
$dumpfile("tb_mux8_1.vcd");
$dumpvars(0,tb_mux8_1);
end
endmodule
