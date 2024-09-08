module d_ff(input clk,reset,d,
       output reg q);
always@(posedge clk or posedge reset) begin
if(reset)
      q <= 1'b0;
    else 
      q <= d;
  end
endmodule

module dsiso(input clk,reset,
 input s1,
output s0,s2,s3,s4
);
d_ff f1(.clk(clk),.reset(reset),.d(s1),.q(s0));
d_ff f2(.clk(clk),.reset(reset),.d(s0),.q(s2));
d_ff f3(.clk(clk),.reset(reset),.d(s2),.q(s3));
d_ff f4(.clk(clk),.reset(reset),.d(s3),.q(s4));
endmodule
