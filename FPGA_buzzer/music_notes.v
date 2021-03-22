module music_notes(
	input clk,
	input [9:0] note_in,
	output reg note_out
	);

reg [26:0] clkdivider = 50_000_000/440/2; //sets the frequency of the note, we use half of this period for signal on and half off
reg [26:0] counter = 0; //counter to create pwm wave
reg [1:0] spk = 0;


parameter note_B0 	= 16'd31;
parameter note_C1 	= 16'd33;
parameter note_CS1 	= 16'd35;
parameter note_D1 	= 16'd37;
parameter note_DS1 	= 16'd39;
parameter note_E1 	= 16'd41;
parameter note_F1 	= 16'd44;
parameter note_FS1 	= 16'd46;
parameter note_G1 	= 16'd49;
parameter note_GS1 	= 16'd52;
parameter note_A1 	= 16'd55;
parameter note_AS1 	= 16'd58;
parameter note_B1 	= 16'd62;
parameter note_C2 	= 16'd65;
parameter note_CS2 	= 16'd69;
parameter note_D2 	= 16'd73;
parameter note_DS2 	= 16'd78;
parameter note_E2 	= 16'd82;
parameter note_F2 	= 16'd87;
parameter note_FS2 	= 16'd93;
parameter note_G2 	= 16'd98;
parameter note_GS2 	= 16'd104;
parameter note_A2 	= 16'd110;
parameter note_AS2 	= 16'd117;
parameter note_B2 	= 16'd123;
parameter note_C3 	= 16'd131;
parameter note_CS3 	= 16'd139;
parameter note_D3 	= 16'd147;
parameter note_DS3 	= 16'd156;
parameter note_E3 	= 16'd165;
parameter note_F3 	= 16'd175;
parameter note_FS3 	= 16'd185;
parameter note_G3 	= 16'd196;
parameter note_GS3 	= 16'd208;
parameter note_A3 	= 16'd220;
parameter note_AS3 	= 16'd233;
parameter note_B3 	= 16'd247;
parameter note_C4 	= 16'd262;
parameter note_CS4 	= 16'd277;
parameter note_D4 	= 16'd294;
parameter note_DS4 	= 16'd311;
parameter note_E4 	= 16'd330;
parameter note_F4 	= 16'd349;
parameter note_FS4 	= 16'd370;
parameter note_G4 	= 16'd392;
parameter note_GS4 	= 16'd415;
parameter note_A4 	= 16'd440;
parameter note_AS4 	= 16'd466;
parameter note_B4 	= 16'd494;
parameter note_C5 	= 16'd523;
parameter note_CS5 	= 16'd554;
parameter note_D5 	= 16'd587;
parameter note_DS5 	= 16'd622;
parameter note_E5 	= 16'd659;
parameter note_F5 	= 16'd698;
parameter note_FS5 	= 16'd740;
parameter note_G5 	= 16'd784;
parameter note_GS5 	= 16'd831;
parameter note_A5 	= 16'd880;
parameter note_AS5 	= 16'd932;
parameter note_B5 	= 16'd988;
parameter note_C6 	= 16'd1047;
parameter note_CS6 	= 16'd1109;
parameter note_D6 	= 16'd1175;
parameter note_DS6 	= 16'd1245;
parameter note_E6 	= 16'd1319;
parameter note_F6 	= 16'd1397;
parameter note_FS6 	= 16'd1480;
parameter note_G6 	= 16'd1568;
parameter note_GS6 	= 16'd1661;
parameter note_A6 	= 16'd1760;
parameter note_AS6 	= 16'd1865;
parameter note_B6  	= 16'd1976;
parameter note_C7 	= 16'd2093;
parameter note_CS7 	= 16'd2217;
parameter note_D7 	= 16'd2349;
parameter note_DS7 	= 16'd2489;
parameter note_E7 	= 16'd2637;
parameter note_F7 	= 16'd2794;
parameter note_FS7 	= 16'd2960;
parameter note_G7 	= 16'd3136;
parameter note_GS7 	= 16'd3322;
parameter note_A7 	= 16'd3520;
parameter note_AS7 	= 16'd3729;
parameter note_B7 	= 16'd3951;
parameter note_C8 	= 16'd4186;
parameter note_CS8 	= 16'd4435;
parameter note_D8 	= 16'd4699;
parameter note_DS8 	= 16'd4978;

always @(posedge clk)
	case(note_in)
		note_B0	 : clkdivider <= 50_000_000/31/2;
		note_C1	 : clkdivider <= 50_000_000/33/2;
		note_CS1	 : clkdivider <= 50_000_000/35/2;
		note_D1	 : clkdivider <= 50_000_000/37/2;
		note_DS1	 : clkdivider <= 50_000_000/39/2;
		note_E1	 : clkdivider <= 50_000_000/41/2;
		note_F1	 : clkdivider <= 50_000_000/44/2;
		note_FS1	 : clkdivider <= 50_000_000/46/2;
		note_G1	 : clkdivider <= 50_000_000/49/2;
		note_GS1	 : clkdivider <= 50_000_000/52/2;
		note_A1	 : clkdivider <= 50_000_000/55/2;
		note_AS1	 : clkdivider <= 50_000_000/58/2;
		note_B1	 : clkdivider <= 50_000_000/62/2;
		note_C2	 : clkdivider <= 50_000_000/65/2;
		note_CS2	 : clkdivider <= 50_000_000/69/2;
		note_D2	 : clkdivider <= 50_000_000/73/2;
		note_DS2	 : clkdivider <= 50_000_000/78/2;
		note_E2	 : clkdivider <= 50_000_000/82/2;
		note_F2	 : clkdivider <= 50_000_000/87/2;
		note_FS2	 : clkdivider <= 50_000_000/93/2;
		note_G2	 : clkdivider <= 50_000_000/98/2;
		note_GS2	 : clkdivider <= 50_000_000/104/2;
		note_A2	 : clkdivider <= 50_000_000/110/2;
		note_AS2	 : clkdivider <= 50_000_000/117/2;
		note_B2	 : clkdivider <= 50_000_000/123/2;
		note_C3	 : clkdivider <= 50_000_000/131/2;
		note_CS3	 : clkdivider <= 50_000_000/139/2;
		note_D3	 : clkdivider <= 50_000_000/147/2;
		note_DS3	 : clkdivider <= 50_000_000/156/2;
		note_E3	 : clkdivider <= 50_000_000/165/2;
		note_F3	 : clkdivider <= 50_000_000/175/2;
		note_FS3	 : clkdivider <= 50_000_000/185/2;
		note_G3	 : clkdivider <= 50_000_000/196/2;
		note_GS3	 : clkdivider <= 50_000_000/208/2;
		note_A3	 : clkdivider <= 50_000_000/220/2;
		note_AS3	 : clkdivider <= 50_000_000/233/2;
		note_B3	 : clkdivider <= 50_000_000/247/2;
		note_C4	 : clkdivider <= 50_000_000/262/2;
		note_CS4	 : clkdivider <= 50_000_000/277/2;
		note_D4	 : clkdivider <= 50_000_000/294/2;
		note_DS4	 : clkdivider <= 50_000_000/311/2;
		note_E4	 : clkdivider <= 50_000_000/330/2;
		note_F4	 : clkdivider <= 50_000_000/349/2;
		note_FS4	 : clkdivider <= 50_000_000/370/2;
		note_G4	 : clkdivider <= 50_000_000/392/2;
		note_GS4	 : clkdivider <= 50_000_000/415/2;
		note_A4	 : clkdivider <= 50_000_000/440/2;
		note_AS4	 : clkdivider <= 50_000_000/466/2;
		note_B4	 : clkdivider <= 50_000_000/494/2;
		note_C5	 : clkdivider <= 50_000_000/523/2;
		note_CS5	 : clkdivider <= 50_000_000/554/2;
		note_D5	 : clkdivider <= 50_000_000/587/2;
		note_DS5	 : clkdivider <= 50_000_000/622/2;
		note_E5	 : clkdivider <= 50_000_000/659/2;
		note_F5	 : clkdivider <= 50_000_000/698/2;
		note_FS5	 : clkdivider <= 50_000_000/740/2;
		note_G5	 : clkdivider <= 50_000_000/784/2;
		note_GS5	 : clkdivider <= 50_000_000/831/2;
		note_A5	 : clkdivider <= 50_000_000/880/2;
		note_AS5	 : clkdivider <= 50_000_000/932/2;
		note_B5	 : clkdivider <= 50_000_000/988/2;
		note_C6	 : clkdivider <= 50_000_000/1047/2;
		note_CS6	 : clkdivider <= 50_000_000/1109/2;
		note_D6	 : clkdivider <= 50_000_000/1175/2;
		note_DS6	 : clkdivider <= 50_000_000/1245/2;
		note_E6	 : clkdivider <= 50_000_000/1319/2;
		note_F6	 : clkdivider <= 50_000_000/1397/2;
		note_FS6	 : clkdivider <= 50_000_000/1480/2;
		note_G6	 : clkdivider <= 50_000_000/1568/2;
		note_GS6	 : clkdivider <= 50_000_000/1661/2;
		note_A6	 : clkdivider <= 50_000_000/1760/2;
		note_AS6	 : clkdivider <= 50_000_000/1865/2;
		note_B6	 : clkdivider <= 50_000_000/1976/2;
		note_C7	 : clkdivider <= 50_000_000/2093/2;
		note_CS7	 : clkdivider <= 50_000_000/2217/2;
		note_D7	 : clkdivider <= 50_000_000/2349/2;
		note_DS7	 : clkdivider <= 50_000_000/2489/2;
		note_E7	 : clkdivider <= 50_000_000/2637/2;
		note_F7	 : clkdivider <= 50_000_000/2794/2;
		note_FS7	 : clkdivider <= 50_000_000/2960/2;
		note_G7	 : clkdivider <= 50_000_000/3136/2;
		note_GS7	 : clkdivider <= 50_000_000/3322/2;
		note_A7	 : clkdivider <= 50_000_000/3520/2;
		note_AS7	 : clkdivider <= 50_000_000/3729/2;
		note_B7	 : clkdivider <= 50_000_000/3951/2;
		note_C8	 : clkdivider <= 50_000_000/4186/2;
		note_CS8	 : clkdivider <= 50_000_000/4435/2;
		note_D8	 : clkdivider <= 50_000_000/4699/2;
		note_DS8	 : clkdivider <= 50_000_000/4978/2;

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
			note_out <= ~spk;
		end
endmodule