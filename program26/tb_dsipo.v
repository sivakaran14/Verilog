module tb_dsipo;
reg clk,rst,s0;
wire s1,s2,s3,s4;
dsipo d1(.clk(clk),.reset(rst),.s1(s1),.s0(s0),.s2(s2),.s3(s3),.s4(s4));
initial
begin
	clk=1'b0;
	forever #5 clk=~clk;
end
initial
begin
	 s0=1'b0;rst=1'b1;
	#10 s0=1'b1;rst=1'b0;
	#10 s0=1'b0;rst=1'b0;
	#10 s0=1'b1;rst=1'b0;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_dsipo.vcd");
	$dumpvars(0,tb_dsipo);
end
endmodule
