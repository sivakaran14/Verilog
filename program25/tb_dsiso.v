module tb_dsiso;
reg clk,rst,s1;
wire s0,s2,s3,s4;
dsiso d1(.clk(clk),.reset(rst),.s1(s1),.s0(s0),.s2(s2),.s3(s3),.s4(s4));
initial
	begin
		clk=1'b0;
		forever #5 clk=~clk;
	end
		initial
		begin
			s1=1'b1;rst=1'b1;
			#10 s1=1'b1;rst=1'b0;
			#10 s1=1'b1;rst=1'b0;
			#10 s1=1'b1;rst=1'b0;
			#100;$finish;
		end
		initial
		begin
			$dumpfile("tb_dsiso.vcd");
			$dumpvars(0,tb_dsiso);
		end
		endmodule
		
