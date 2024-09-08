module pipo(pi,clk,po);
input clk;
input[3:0]pi;
output reg [3:0]po;
always@(posedge clk)
begin
	po<=pi;
end
endmodule
