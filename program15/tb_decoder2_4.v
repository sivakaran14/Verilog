/*module tb_decoder2_4;
reg a,b,e;
wire y1,y2,y3,y4;
decoder2_4 d1(.A(a),.B(b),.E(e),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
initial
begin
    a=1'b0;b=1'b0;e=1'b1;
#10 a=1'b0;b=1'b1;e=1'b1;
#10 a=1'b1;b=1'b0;e=1'b1;
#10 a=1'b1;b=1'b1;e=1'b1;
#100;$finish;
end
initial
begin
$dumpfile("tb_decoder2_4.vcd");
$dumpvars(0,tb_decoder2_4);
end
endmodule*/
module tb_decoder2_4;
reg [1:0]d;
wire[3:0]y;
decoder2_4 d1(.d(d),.y(y));
initial
begin
	d=2'b00;
	#10 d=2'b01;
	#10 d=2'b10;
	#10 d=2'b11;
	#100;$finish;
end
initial
begin
$dumpfile("tb_decoder2_4.vcd");
$dumpvars(0,tb_decoder2_4);
end
endmodule
