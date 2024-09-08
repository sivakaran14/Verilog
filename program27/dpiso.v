module d_ff(input clk,reset,d,
       output reg q);
always@(posedge clk or posedge reset) begin
if(reset)
      q <= 1'b0;
    else 
      q <= d;
  end
endmodule

module dpiso(reset,clk,s1,s2,s3,s4,s0);
input reset,clk;
input s1,s2,s3,s4;
output s0;
d_ff f1(.clk(clk),.reset(reset),.d(s1),.q(s0));
d_ff f2(.clk(clk),.reset(reset),.d(s2),.q(s0));
d_ff f3(.clk(clk),.reset(reset),.d(s3),.q(s0));
d_ff f4(.clk(clk),.reset(reset),.d(s4),.q(s0));
endmodule
