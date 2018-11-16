`timescale 1us / 1us
module clk_gen(clk);
parameter T = 16;
output reg clk;
always
	begin
		clk <= 1'b0;
		#(T/2);
		clk <= 1'b1;
		#(T/2);
	end
endmodule