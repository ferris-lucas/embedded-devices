module SimplePWM(
	input clk_in,
	input [7:0] x_in,
	output reg PWM_out
	);
	
reg [7:0] counter = 0;

always @(posedge clk_in)
begin
	if(counter < x_in)
		PWM_out <= 1;
	else
		PWM_out <= 0;
	counter <= counter + 1;
end
endmodule