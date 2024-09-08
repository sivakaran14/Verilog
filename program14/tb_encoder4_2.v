module tb_encoder4_2;
reg a,b,c,d;
wire x,y;
encoder4_2 e1(.A(a),.B(b),.C(c),.D(d),.X(x),.Y(y));
initial
begin
 a=1'b1; b=1'b0; c=1'b0;d=1'b0;
#10 a=1'b0; b=1'b1; c=1'b0;d=1'b0;
#10 a=1'b0; b=1'b0; c=1'b1;d=1'b0;
#10 a=1'b0; b=1'b0; c=1'b0;d=1'b1;
#100;$finish;
end 
initial
begin
	$dumpfile("tb_encoder4_2.vcd");
	$dumpvars(0,tb_encoder4_2);
end
endmodule

