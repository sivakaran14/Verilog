module tb_combarator;
reg a,b,c,d;
wire e,f,g;
combarator g1(.A1(a),.A0(b),.B1(c),.B0(d),.X(e),.Y(f),.Z(g));
initial
begin
	 a=1'b0;b=1'b0;c=1'b0;d=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b1;
	#10 a=1'b0;b=1'b0;c=1'b1;d=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b1;d=1'b1;
	#10 a=1'b0;b=1'b1;c=1'b0;d=1'b0;
	#10 a=1'b0;b=1'b1;c=1'b0;d=1'b1;
	#10 a=1'b0;b=1'b1;c=1'b1;d=1'b0;
	#10 a=1'b0;b=1'b1;c=1'b1;d=1'b1;
	#10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;
	#10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;
	#10 a=1'b1;b=1'b0;c=1'b1;d=1'b0;
	#10 a=1'b1;b=1'b0;c=1'b1;d=1'b1;
	#10 a=1'b1;b=1'b1;c=1'b0;d=1'b0;
	#10 a=1'b1;b=1'b1;c=1'b0;d=1'b1;
	#10 a=1'b1;b=1'b1;c=1'b1;d=1'b0;
	#10 a=1'b1;b=1'b1;c=1'b1;d=1'b1;
	#100;$finish;
end
initial
begin
$dumpfile("tb_combarator.vcd");
$dumpvars(0,tb_combarator);
end
endmodule
