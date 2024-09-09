module tb_syn;
reg clk_out,reset_out;
wire [3:0]count_out;
syn s1(.clk(clk_out),.rst(reset_out),.count(count_out));
initial
begin
	clk_out=0;
	forever #5 clk_out=~clk_out;
end
initial
begin
	 reset_out=1'b0;
	 #100;
	reset_out=1'b1;
	#100;
	reset_out=1'b0;
	#200;$finish;
end
initial
begin
	$dumpfile("tb_syn.vcd");
	$dumpvars(0,tb_syn);
end
endmodule
