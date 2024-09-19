module tb_alu;
reg[3:0]a,b;
reg [3:0]d;
wire [3:0]alu_out;
wire carry_out;
alu a1(.A(a),.B(b),.alu_sel(d),.alu_out(alu_out),.carry_out(carry_out));
initial
begin
            a=4'b0100;b=4'b1011;
	#10 d=4'b0000;
	#10 d=4'b0001;
	#10 d=4'b0010;
	#10 d=4'b0011;
        #10 d=4'b0100;
        #10 d=4'b0101;
	#10 a=4'b0110;
	#10 a=4'b0111;
	#10 d=4'b1000;
        #10 d=4'b1001;
        #10 d=4'b1010;
	#10 d=4'b1011;
	#10 d=4'b1100;
	#10 d=4'b1101;
        #10 d=4'b1110;
        #10 d=4'b1111;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_alu.vcd");
	$dumpvars(0,tb_alu);
end
endmodule
