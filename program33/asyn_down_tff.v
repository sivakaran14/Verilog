module tff(
input clk,rst,t,
output reg q
);
always@(posedge clk or posedge rst)
begin
	if(rst)
	begin
		q<=0;
	end
	else
	begin
		q<=~q;
	end
end
endmodule

module asyn_down_tff(
input clk,rst,
output[2:0]count
);
tff f1(.clk(clk),.rst(rst),.t(1'b1),.q(count[0]));
tff f2(.clk(count[0]),.rst(rst),.t(1'b1),.q(count[1]));
tff f3(.clk(count[1]),.rst(rst),.t(1'b1),.q(count[2]));
endmodule


