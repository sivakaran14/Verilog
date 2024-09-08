module tb_fulladder_us_mux;
reg a,b,cin;
wire s,c;
fulladder_us_mux m1(.A(a),.B(b),.Cin(cin),.S(s),.C(c));
initial
begin
	 a=1'b0; b=1'b0; cin=1'b0;
	#10 a=1'b0; b=1'b0; cin=1'b1;
        #10 a=1'b0; b=1'b1; cin=1'b0;
	#10 a=1'b0; b=1'b1; cin=1'b1;
        #10 a=1'b1; b=1'b0; cin=1'b0;
        #10 a=1'b1; b=1'b0; cin=1'b1;
        #10 a=1'b1; b=1'b1; cin=1'b0;
        #10 a=1'b1; b=1'b1; cin=1'b1;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_fulladder_us_mux.vcd");
	$dumpvars(0,tb_fulladder_us_mux);
end
endmodule



