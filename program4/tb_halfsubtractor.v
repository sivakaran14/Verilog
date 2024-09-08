module tb_halfsubtractor;
reg a,b;
wire c,d;
halfsubtractor h1(.A(a),.B(b),.C(c),.D(d));
initial
begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
#100; $finish;
end
initial
begin
$dumpfile("tb_halfsubtractor.vcd");
$dumpvars(0,tb_halfsubtractor);
end
endmodule




