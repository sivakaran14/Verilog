module tb_srflipflop;
reg s_in,r_in,clk_in,rst;
wire q_out,qbar_out;
srflipflop g1(.s(s_in),.r(r_in),.rst(rst),.clk(clk_in),.q(q_out),.qbar(qbar_out));
initial
begin
    clk_in=1'b0;
   forever #5 clk_in=~clk_in;
end
initial
begin
	rst=1'b0;
	#10 rst=1'b1;
	
end
initial 
begin
         s_in=1'b0; r_in=1'b0;
     #10 s_in=1'b0; r_in=1'b1;
     #10 s_in=1'b1; r_in=1'b0;
     #10 s_in=1'b1; r_in=1'b1;
     #100;$finish;
end
initial
begin
$dumpfile("tb_srflipflop.vcd");
$dumpvars(0,tb_srflipflop);
end
endmodule
