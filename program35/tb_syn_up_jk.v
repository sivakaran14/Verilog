module tb_syn_up_jk;
reg clk,rst;
wire [1:0]count;
syn_up_jk h1(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=1'b0;
	forever #10 clk=~clk;
end
initial
begin
	rst=1'b1;
	#10 rst=1'b0;
	#100;$finish;
	end
	initial
	begin
		$dumpfile("tb_syn_up_jk.vcd");
		$dumpvars(0,tb_syn_up_jk);
	end
	endmodule


