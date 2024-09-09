module tb_asyn_up_jk;
reg clk,rst;
wire [2:0]count;
asyn_up_jk f1(.clk(clk),.rst(rst),.count(count));
initial
begin
	clk=1'b0;
	forever #10 clk=~clk;
	end
initial
begin
	rst=1'b1;
	#100 rst=1'b0;
	#100 rst=1'b1;
	#200 rst=1'b0;
	#500;$finish;
end
initial
begin
	$dumpfile("tb_asyn_up_jk.vcd");
	$dumpvars(0,tb_asyn_up_jk);
end
endmodule

