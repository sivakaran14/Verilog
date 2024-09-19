module tb_mealynon_ol;
reg clk,reset,din;
wire dout;
melaynon n1(.clk(clk),.reset(reset),.din(din),.dout(dout));
initial
begin
	clk=1'b0;
	forever #10 clk=~clk;
	end
	initial
	begin
		din=1'b0;reset=1'b1;
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
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b0;
		/*#10 din=1'b1;
		#10 din=1'b0;
		#10 din=1'b0;
		#10 din=1'b1;
		#10 din=1'b0;*/
	       #5 reset=1'b1;
	       #5 reset=1'b0;

                #10 din=1'b1;	        
		#10 din=1'b0;		
		#10 din=1'b0;
                #10 din=1'b1;
		#300;$finish;
	end
	initial
	begin
		$dumpfile("tb_mealynon_ol.vcd");
		$dumpvars(0,tb_mealynon_ol);
	end
	endmodule



