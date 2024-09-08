/*module tb_priorityencoder;
reg d0,d1,d2,d3;
wire x,y,v;
priorityencoder p1(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.x(x),.y(y),.v(v));
initial
begin
	d3=1'b0; d2=1'b0; d1=1'b0; d0=1'b0;
	#10 d3=1'b0; d2=1'b0; d1=1'b0; d0=1'b1;
	#10 d3=1'b0; d2=1'b0; d1=1'b1; d0=1'bx;
	#10 d3=1'b0; d2=1'b1; d1=1'bx; d0=1'bx;
        #10 d3=1'b1; d2=1'bx; d1=1'bx; d0=1'bx;
        #100;$finish;
end
initial
begin
	$dumpfile("tb_priorityencoder.vcd");
	$dumpvars(0,tb_priorityencoder);
end
endmodule*/
module tb_priorityencoder;
reg[3:0]d;
wire[1:0]y;
priorityencoder p1(.d(d),.y(y));
initial
begin
	d=4'b000;
	#10 d=4'b0001;
	#10 d=4'b0010;
	#10 d=4'b0011;
	#10 d=4'b0100;
	#10 d=4'b0101;
	#10 d=4'b0110;
	#10 d=4'b0111;
	#10 d=4'b1000;
	#10 d=4'b1001;
	#10 d=4'b1010;
	#10 d=4'b1011;
	#10 d=4'b1100;
	#10 d=4'b1101;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_priorityencoder.vcd");
	$dumpvars(0,tb_priorityencoder);
end
endmodule





