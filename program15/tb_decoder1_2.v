module tb_decoder1_2;
reg a,s;
wire y1,y2;
decoder1_2 d1(.A(a),.S(s),.Y1(y1),.Y2(y2));
initial
begin
a=1'b0;s=1'b1;
#10 a=1'b1;s=1'b1;
#100;$finish;
end
initial
begin
$dumpfile("tb_decoder1_2.vcd");
$dumpvars(0,tb_decoder1_2);
end
endmodule
