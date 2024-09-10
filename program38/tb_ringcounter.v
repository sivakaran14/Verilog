module tb_ringcounter;
reg clk;
reg reset;
wire [3:0] q;
ringcounter u1(.clk(clk),.reset(reset),.q(q));
initial begin
        clk = 0;
   forever #5 clk = ~clk;
end
initial
begin
	 reset = 1;
    #10 reset = 0;
    #100 $finish;
  end
initial begin
    $dumpfile("tb_ring_counter.vcd");
    $dumpvars(0,tb_ringcounter);
  end
endmodule
