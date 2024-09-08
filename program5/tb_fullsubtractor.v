module tb_fullsubtractor;
reg a,b,c;
wire d,e;
fullsubtractor s1(.A(a),.B(b),.C(c),.D(d),.E(e));
initial
begin
a=1'b0; b=1'b0; c=1'b0;
#10 a=1'b0; b=1'b0; c=1'b1;
#10 a=1'b0; b=1'b1; c=1'b0;
#10 a=1'b0; b=1'b1; c=1'b1;
#10 a=1'b1; b=1'b0; c=1'b0;
#10 a=1'b1; b=1'b0; c=1'b1;
#10 a=1'b1; b=1'b1; c=1'b0;
#10 a=1'b1; b=1'b1; c=1'b1;
#100;$finish;
end
initial
begin
$dumpfile("tb_fullsubtractor.vcd");
$dumpvars(0,tb_fullsubtractor);
end
endmodule
