module tb_clock_divider;
reg clk,rst;
wire div_out;
clock_divider g1(.clk(clk),.rst(rst),.div_out(div_out));
initial
begin
	clk=1'b1;
	forever #10 clk<=~clk;
end
initial
begin
	clk=1'b1;
	forever #10 clk<=~clk;
end
initial
begin
	rst=1'b1;
	#10 rst=1'b0;
	#200;$finish;
end
initial
begin
	$dumpfile("tb_clock_divider.vcd");
	$dumpvars(0,tb_clock_divider);
end
endmodule
