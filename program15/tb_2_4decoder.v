module tb_2_4decoder;
reg en_in;
reg[1:0]a;
wire[3:0]y;
2_4decoder a1(.en(en),.a(a),.y(y));
initial
begin
	$monitor($time,"y=%b,a=%b,en=%b",y,a,en);
	a=0;
	en=0;
end
initial
begin
always#5 a=a+1;
always #20 en=en+1;
end
initial
begin
	$dumpfile("tb_2_4decoder.vcd");
	$dumpvars(0,tb_2_4decoder);
end
endmodule


