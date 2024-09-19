module tb_mealyol;
reg clk,reset,din;
wire dout;
mealyol n1(.clk(clk),.rst(reset),.din(din),.dout(dout));
initial
begin
	clk=1'b0;
	forever #5 clk=~clk;
	end
	initial
	begin
		/*din=1'b0;reset=1'b1;
		#10 din=1'b1;reset=1'b0;
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b1;
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b1;
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b1;
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b1;
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b1;
		#10 din=1'b0;
		#10 din=1'b0;
	#5 reset=1'b1;	#10 din=1'b1;
		#10 din=1'b0;*/
	       reset=1'b1; din=1'b0;
	       #10 reset=1'b0;

                	        
		#10 din=1'b1;		
		#10 din=1'b1;
                #10 din=1'b0;
		 #10 din=1'b1;
		 din=1'b1;

		#100;$finish;
	end
	initial
	begin
		$dumpfile("tb_mealyol.vcd");
		$dumpvars(0,tb_mealyol);
	end
	endmodule

