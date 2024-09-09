module syn(clk,rst,count);
input clk,rst;
output reg[3:0]count=7;
always@(posedge clk or posedge rst)
begin
	if(rst)
		count=1;
	else
		count=count+1;
end
endmodule

