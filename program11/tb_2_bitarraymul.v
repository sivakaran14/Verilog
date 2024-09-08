module tb_bitarraymul;
reg [1:0]a;
reg [1:0]b;
wire [7:0]y;
bitarraymul c1(.A(a),.B(b),.Y(y));
initial
begin
    a=4'b0001;b=4'b0001;
#10 a=4'b0011;b=4'b1001;
#10 a=4'b1111;b=4'b0011;
#10 a=4'b0101;b=4'b1010;
#100;$finish;
end
initial
begin
	$dumpfile("tb_bitarraymul.vcd");
	$dumpvars(0,tb_bitarraymul);
end
endmodule
