module music(
	 input clk, 
	 input [9:0] note,
	 output reg speaker
	 );

reg [26:0] clkdivider = 50_000_000/440/2; //set the frequency of the tone -> 440Hz -> 50_000_000/440/2 -> A4
reg [26:0] counter = 0; //counter to create pwm wave
reg [1:0] spk = 0;

always @(posedge clk)
	case(note)
			10'd220 : clkdivider <= 50_000_000/220/2;  //A3
			10'd297 : clkdivider <= 50_000_000/297/2;  //B3
			10'd131 : clkdivider <= 50_000_000/131/2;  //C3
			10'd147 : clkdivider <= 50_000_000/147/2;  //D3
			10'd165 : clkdivider <= 50_000_000/165/2;  //E3
			10'd175 : clkdivider <= 50_000_000/175/2;  //F3
			10'd196 : clkdivider <= 50_000_000/196/2;  //G3
			10'd440 : clkdivider <= 50_000_000/440/2;  //A4
			10'd494 : clkdivider <= 50_000_000/494/2;  //B4
			10'd262 : clkdivider <= 50_000_000/262/2;  //C4
			10'd294 : clkdivider <= 50_000_000/294/2;  //D4
			10'd330 : clkdivider <= 50_000_000/330/2;  //E4
			10'd350 : clkdivider <= 50_000_000/350/2;  //F4
			10'd392 : clkdivider <= 50_000_000/392/2;  //G4
			10'd880 : clkdivider <= 50_000_000/880/2;  //A5
			10'd988 : clkdivider <= 50_000_000/988/2;  //B5
			10'd523 : clkdivider <= 50_000_000/523/2;  //C5
			10'd587 : clkdivider <= 50_000_000/587/2;  //D5
			10'd660 : clkdivider <= 50_000_000/660/2;  //E5
			10'd700 : clkdivider <= 50_000_000/700/2;  //F5
			10'd784 : clkdivider <= 50_000_000/784/2;  //G5
			10'd1660 : clkdivider <= 50_000_000/1660/2;  //A6
			10'd1976 : clkdivider <= 50_000_000/1976/2;  //B6
			10'd1047 : clkdivider <= 50_000_000/1047/2;  //C6
			10'd1175 : clkdivider <= 50_000_000/1175/2;  //D6
			10'd1320 : clkdivider <= 50_000_000/1320/2;  //E6
			10'd1400 : clkdivider <= 50_000_000/1400/2;  //F6
			10'd1568 : clkdivider <= 50_000_000/1568/2;  //G6
			10'd3520 : clkdivider <= 50_000_000/3520/2;  //A7
			10'd3951 : clkdivider <= 50_000_000/3951/2;  //B7
			10'd2093 : clkdivider <= 50_000_000/2093/2;  //C7
			10'd2349 : clkdivider <= 50_000_000/2349/2;  //D7
			10'd2637 : clkdivider <= 50_000_000/2637/2;  //E7
			10'd2800 : clkdivider <= 50_000_000/2800/2;  //F7
			10'd3135 : clkdivider <= 50_000_000/3135/2;  //G7
			10'd1865 : clkdivider <= 50_000_000/1865/2;  //AS6
			endcase


always @(posedge clk) 
	if(counter == clkdivider) 
		counter <= 0; 
	else 
		counter <= counter+1;

always @(posedge clk) 
	if(counter == clkdivider)
		begin
			spk <= ~spk;
			speaker <= ~spk;
		end
endmodule