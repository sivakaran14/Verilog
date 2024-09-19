module tb_traffic_lightcontrol;
reg clk,rst;
wire [2:0]m1;
wire [2:0]m2;
wire [2:0]mt;
wire [2:0]s;
traffic_lightcontrol b1(.m1(m1),.m2(m2),.mt(mt),.s(s),.clk(clk),.rst(rst));
initial
begin
	clk=1'b0;
	forever #10 clk=~clk;
end
initial
begin
	rst=1'b0;
	#100;rst=1'b1;
	#100;rst=1'b0;
	#1000;$finish;
end
initial
begin
	$dumpfile("tb_traffic_lightcontrol.vcd");
	$dumpvars(0,tb_traffic_lightcontrol);
end
endmodule
