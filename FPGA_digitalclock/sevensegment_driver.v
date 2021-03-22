module sevensegment_driver(
	input clk,
	input clr,
	input [3:0] in1,
	input [3:0] in2,
	input [3:0] in3,
	input [3:0] in4,
	output reg [6:0] seg,
	output reg [3:0] an
	);
	
wire [6:0] seg1, seg2, seg3, seg4;
reg [24:0] segclk = 0; //for turning each display on and off in a frequency we can not notice, counts from 0 to 8191

localparam LEFT = 2'b00, MIDLEFT = 2'b01, MIDRIGHT = 2'b10, RIGHT = 2'b11; //these represents the 7-seg displays
reg [1:0] state = LEFT; //first state runing, default

always @(posedge clk)
begin
	segclk <= segclk + 1; //counter goes up by 1
	if (segclk == 8191)
		segclk <= 0;
end
		
always @(posedge segclk[12] or posedge clr)
begin
	if (clr == 1) // case clear, we zero all segs
	begin
		seg <= 7'b0000001;
		an <= 4'b1111;
		state <= LEFT;
	end
	else
	begin
		case (state) //check the state, and sets its current value
			LEFT: 
					begin
						seg <= seg1;
						an <= 4'b0111; //enable LEFT digit
						state <= MIDLEFT;
					end
			MIDLEFT: 
					begin
						seg <= seg2;
						an <= 4'b1011; //enable MIDLEFT digit
						state <= MIDRIGHT;
					end
			MIDRIGHT: 
					begin
						seg <= seg3;
						an <= 4'b1101; //enable MIDRIGHT digit
						state <= RIGHT;
					end
			RIGHT: 
					begin
						seg <= seg4;
						an <= 4'b1110; //enable RIGHT digit
						state <= LEFT;
					end
		endcase
	end
end

Decoder_7_segment disp1 (.in(in1), .seg(seg1));
Decoder_7_segment disp2 (.in(in2), .seg(seg2));
Decoder_7_segment disp3 (.in(in3), .seg(seg3));
Decoder_7_segment disp4 (.in(in4), .seg(seg4));

endmodule