module dpipo_tb;
reg clk, reset;
reg  [3:0]parallel_in;
wire parallel_out_a,parallel_out_b,parallel_out_c,parallel_out_d;
dpipo d1(.clk(clk),.reset(reset),.parallel_in(parallel_in),.parallel_out_a(parallel_out_a),.parallel_out_b(parallel_out_b),.parallel_out_c(parallel_out_c),.parallel_out_d(parallel_out_d));
initial  
begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial 
begin
    parallel_in =4'b1110; reset=1'b1;
    #10 parallel_in =4'b0110; reset=1'b0;
 #10 parallel_in =4'b1010; reset=1'b0;
 #10 parallel_in =4'b0010; reset=1'b0;
 #10 parallel_in =4'b0100; reset=1'b0;
 #10 parallel_in =4'b1100; reset=1'b0;
 #100 $finish;
end
initial 
begin
    $dumpfile("dpipo.vcd");
    $dumpvars(1,dpipo_tb);
end
endmodule…
