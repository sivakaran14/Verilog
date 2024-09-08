module tb_masterslave;
reg j_in,k_in;
reg clk_in,rst;
wire q_out,qb_out;
masterslave g1(.j(j_in),.k(k_in),.rst(rst),.clk(clk_in),.q(q_out),.qb(qb_out));
initial
begin
    clk_in=1'b0;
   forever #5 clk_in=~clk_in;
end 
initial 
begin
         j_in=1'b0; k_in=1'b0; rst=1'b1;
     #10 j_in=1'b0; k_in=1'b1;rst=1'b0;
     #10 j_in=1'b1; k_in=1'b0;rst=1'b0;
     #10 j_in=1'b1; k_in=1'b1;rst=1'b0;
     #100;
     #10 j_in=1'b0; k_in=1'b0;rst=1'b0;
     #10 j_in=1'b0; k_in=1'b1;rst=1'b1;
     #10 j_in=1'b1; k_in=1'b0;rst=1'b1;
     #10 j_in=1'b1; k_in=1'b1;rst=1'b1;
     #200;$finish;
end
initial
begin
$dumpfile("tb_masterslave.vcd");
$dumpvars(0,tb_masterslave);
end
endmodule
