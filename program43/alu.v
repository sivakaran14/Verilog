module alu(
input[3:0]A,B,
input [3:0]alu_sel,
output[3:0] alu_out,
output carry_out
);
reg[3:0] alu_result;
wire[4:0] tmp;
assign alu_out=alu_result;
assign carry_out=tmp;
assign tmp={1'b0,A}+{1'b0,B};
always@(*)
begin
	case(alu_sel)
		4'b0000:alu_result=A+B;
		4'b0001:alu_result=A-B;
		4'b0010:alu_result=A*B;
		4'b0011:alu_result=A/B;
		4'b0100:alu_result=A<<B;
		4'b0101:alu_result=A>>B;
		4'b0110:alu_result={A[2:0],B[3]};
		4'b0111:alu_result={A[0],B[3:1]};
		4'b1000:alu_result=A|B;
		4'b1001:alu_result=A&B;
		4'b1010:alu_result=~(A|B);
		4'b1011:alu_result=~(A&B);
		4'b1100:alu_result=A^B;
		4'b1101:alu_result=~(A^B);
		4'b1110:alu_result=(A==B)?4'b1:4'b0;
		4'b1111:alu_result=(A>B)?4'b1:4'b0;
		default: alu_result=A+B;
	endcase
end
endmodule
		
