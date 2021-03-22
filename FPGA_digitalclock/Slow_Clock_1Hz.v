module Slow_Clock_1Hz(
	input clk_in,
	output clk_out
	);

reg [27:0] count = 0;
reg aux = 1'b0;

always @(posedge clk_in)
begin
		count <= count + 1;
		if (count == 100000)
			begin
				count <= 0;
				aux = ~aux;
			end
end
assign clk_out = aux;

endmodule