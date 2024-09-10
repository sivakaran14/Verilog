module ringcounter( 
    input clk,          
    input reset,         
    output reg [3:0]q   
);
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      q <= 4'b0001; 
    end else begin
      q <= {q[2:0], q[3]};
    end
  end

endmodule
