module clock_divider(
input clk,rst,
output div_out
);
reg[40:0] div_cnt;
always@(posedge clk)
begin
	if(rst)
		div_cnt<=40'd0;
	else
		div_cnt<=div_cnt+1;
end
assign div_out=div_cnt[1];
endmodule

