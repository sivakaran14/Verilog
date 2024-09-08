module tb_mux8_1us4_1;
reg [7:0]i;
reg[2:0]s;
wire y;
mux8_1us4_1 n1(.i(i),.s(s),.y(y));
initial
begin
	 i=8'b00000001;s=3'b000;
	#10 i=8'b00000010;s=3'b001;
	#10 i=8'b00000100;s=3'b010;
        #10 i=8'b00001000;s=3'b011;
        #10 i=8'b00010000;s=3'b100;
        #10 i=8'b00100000;s=3'b101;
	#10 i=8'b01000000;s=3'b110;
        #10 i=8'b10000000;s=3'b111;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_mux8_1us4_1.vcd");
	$dumpvars(0,tb_mux8_1us4_1);
end
endmodule






