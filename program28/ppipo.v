module d_ff(input clk,reset,d,
       output reg q);
always@(posedge clk or posedge reset) begin
if(reset)
      q <= 1'b0;
    else 
      q <= d;
  end
endmodule


module dpipo(input clk, reset,
            input [3:0]parallel_in,
            output parallel_out_a,parallel_out_b,parallel_out_c,parallel_out_d
    );  
  d_ff ff1(.clk(clk),.reset(reset),.d(parallel_in[0]),.q(parallel_out_a));
  d_ff ff2(.clk(clk),.reset(reset),.d(parallel_in[1]),.q(parallel_out_b));
  d_ff ff3(.clk(clk),.reset(reset),.d(parallel_in[2]),.q(parallel_out_c));
  d_ff ff4(.clk(clk),.reset(reset),.d(parallel_in[3]),.q(parallel_out_d));
  endmodule

