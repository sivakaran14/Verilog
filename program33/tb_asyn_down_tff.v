module tb_asyn_down_tff;
reg clk,rst;
wire [2:0]count;
asyn_down_tff l1(.clk(clk),.rst(rst),.count(count));
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
	$dumpfile("tb_asyn_down_tff.vcd");
	$dumpvars(0,tb_asyn_down_tff);
end
endmodule


