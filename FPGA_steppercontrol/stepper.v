module stepper(
	input clk,
	output [3:0] IN
	);

reg [26:0] cnt = 0;
reg [3:0] led = 4'b0000;

always @(posedge clk)
begin
	cnt <= cnt + 1;
	case (cnt)
	160_000 : led <= 4'b0011;
	320_000 : led <= 4'b0110;
	480_000 : led <= 4'b1100;
	640_000 : begin
					 led <= 4'b1001;
					 cnt <= 0;
				 end
	endcase
end

assign IN = led;

endmodule
