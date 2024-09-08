module tb_cla;
reg [3:0]a;
reg [3:0]b;
reg c;
wire[3:0]s;
wire d;
cla c1(.A(a),.B(b),.Cin(c),.S(s),.Cout(d));
initial
begin
 a=15;b=11;c=0;
#10 a=10;b=11;c=0;
#10 a=14;b=15;c=1;
#10 a=9;b=10;c=1;
#10 a=8;b=11;c=0;
#100;$finish;
end
initial
begin
$dumpfile("tb_cla.vcd");
$dumpvars(0,tb_cla);
end
endmodule

