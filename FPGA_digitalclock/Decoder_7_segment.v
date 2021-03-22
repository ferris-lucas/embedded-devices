module Decoder_7_segment(
	input [3:0] in, // 4 bits going into the segment
	output reg [6:0] seg //display BCD number on a 7-seg
	);

always @(in)
	begin
		case(in)
			0 : seg = 7'b0000001; //active low logic here, displays 0
			1 : seg = 7'b1001111; //displays 1
			2 : seg = 7'b0010010; //displays 2
			3 : seg = 7'b0000110; //displays 3
			4 : seg = 7'b1001100; //displays 4
			5 : seg = 7'b0100100; //displays 5
			6 : seg = 7'b0100000; //displays 6
			7 : seg = 7'b0001111; //displays 7
			8 : seg = 7'b0000000; //displays 8
			9 : seg = 7'b0000100; //displays 9
			default : seg = 7'b1111111;
		endcase
	end
endmodule