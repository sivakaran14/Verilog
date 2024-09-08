module tb_t_ff;
reg t_in,clk_in,rst_in;
wire q_out;
t_ff g1(.t(t_in),.clk(clk_in),.q(q_out),.rst(rst_in));
initial
begin
        clk_in=1'b1;
        forever #5 clk_in=~clk_in;
end
initial 
begin
      	 t_in=1'b0;rst_in=1'b0;
     #10 t_in=1'b1;rst_in=1'b0;
#10 t_in=1'b0;rst_in=1'b1;
#10 t_in=1'b1;rst_in=1'b1;
     #100;$finish;
end
initial
begin
$dumpfile("tb_t_ff.vcd");
$dumpvars(0,tb_t_ff);
end
endmodule
