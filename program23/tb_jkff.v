module tb_jkff;
reg j_in,k_in,clk_in,rst;
wire q_out,qb_out;
jkff g1(.j(j_in),.k(k_in),.rst(rst),.clk(clk_in),.q(q_out),.qb(qb_out));
initial
begin
    clk_in=1'b1;
   forever #5 clk_in=~clk_in;
end 
initial 
begin
         j_in=1'b0; k_in=1'b0; rst=1'b0;
     #10 j_in=1'b0; k_in=1'b1;rst=1'b0;
     #10 j_in=1'b1; k_in=1'b0;rst=1'b0;
     #10 j_in=1'b1; k_in=1'b1;rst=1'b0;
     #10 j_in=1'b0; k_in=1'b0;rst=1'b1;
     #10 j_in=1'b0; k_in=1'b1;rst=1'b1;
     #10 j_in=1'b1; k_in=1'b0;rst=1'b1;
     #10 j_in=1'b1; k_in=1'b1;rst=1'b1;
     #100;$finish;
end
initial
begin
$dumpfile("tb_jkff.vcd");
$dumpvars(0,tb_jkff);
end
endmodule
