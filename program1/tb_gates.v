module tb_gates;
reg a,b;
wire y1,y2,y3,y4,y5,y6,y7;
gate g1(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
initial
begin
    a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
#100$finish;
end
initial
begin
$dumpfile("tb_gates.vcd");
$dumpvars(0,tb_gates);
end
endmodule
