module D_FF(
	input clk,
	input clr,
	input D,
	output reg Q,
	output reg Qbar
	);

always @(posedge clk)
	if (clr == 1'b0)
		begin
			Q <= 0;
			Qbar <= 1;
		end
	else
		begin
			Q <= D;
			Qbar <= -D;
		end
endmodule