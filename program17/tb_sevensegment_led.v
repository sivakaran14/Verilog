module tb_sevensegment_led;
reg[3:0]a;
wire[6:0]y;
sevensegment_led s1(.a(a),.y(y));
initial
begin
	a=4'b0000;
	#10 a=4'b0001;
	#10 a=4'b0010;
	#10 a=4'b0011;
	#10 a=4'b0100;
	#10 a=4'b0101;
	#10 a=4'b0110;
	#10 a=4'b0111;
	#10 a=4'b1000;
	#10 a=4'b1001;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_sevensegment_led.vcd");
	$dumpvars(0,tb_sevensegment_led);
end
endmodule

