module top(
	input clk,
	output speaker
	);

reg [27:0] counter1 = 0;
reg [27:0] counter2 = 1;
reg [1:0] spk = 0;

music_notes note_B0(.clk(clk), .note_in(16'd31), .note_out(B0));
music_notes note_C1(.clk(clk), .note_in(16'd33), .note_out(C1));
music_notes note_CS1(.clk(clk), .note_in(16'd35), .note_out(CS1));
music_notes note_D1(.clk(clk), .note_in(16'd37), .note_out(D1));
music_notes note_DS1(.clk(clk), .note_in(16'd39), .note_out(DS1));
music_notes note_E1(.clk(clk), .note_in(16'd41), .note_out(E1));
music_notes note_F1(.clk(clk), .note_in(16'd44), .note_out(F1));
music_notes note_FS1(.clk(clk), .note_in(16'd46), .note_out(FS1));
music_notes note_G1(.clk(clk), .note_in(16'd49), .note_out(G1));
music_notes note_GS1(.clk(clk), .note_in(16'd52), .note_out(GS1));
music_notes note_A1(.clk(clk), .note_in(16'd55), .note_out(A1));
music_notes note_AS1(.clk(clk), .note_in(16'd58), .note_out(AS1));
music_notes note_B1(.clk(clk), .note_in(16'd62), .note_out(B1));
music_notes note_C2(.clk(clk), .note_in(16'd65), .note_out(C2));
music_notes note_CS2(.clk(clk), .note_in(16'd69), .note_out(CS2));
music_notes note_D2(.clk(clk), .note_in(16'd73), .note_out(D2));
music_notes note_DS2(.clk(clk), .note_in(16'd78), .note_out(DS2));
music_notes note_E2(.clk(clk), .note_in(16'd82), .note_out(E2));
music_notes note_F2(.clk(clk), .note_in(16'd87), .note_out(F2));
music_notes note_FS2(.clk(clk), .note_in(16'd93), .note_out(FS2));
music_notes note_G2(.clk(clk), .note_in(16'd98), .note_out(G2));
music_notes note_GS2(.clk(clk), .note_in(16'd104), .note_out(GS2));
music_notes note_A2(.clk(clk), .note_in(16'd110), .note_out(A2));
music_notes note_AS2(.clk(clk), .note_in(16'd117), .note_out(AS2));
music_notes note_B2(.clk(clk), .note_in(16'd123), .note_out(B2));
music_notes note_C3(.clk(clk), .note_in(16'd131), .note_out(C3));
music_notes note_CS3(.clk(clk), .note_in(16'd139), .note_out(CS3));
music_notes note_D3(.clk(clk), .note_in(16'd147), .note_out(D3));
music_notes note_DS3(.clk(clk), .note_in(16'd156), .note_out(DS3));
music_notes note_E3(.clk(clk), .note_in(16'd165), .note_out(E3));
music_notes note_F3(.clk(clk), .note_in(16'd175), .note_out(F3));
music_notes note_FS3(.clk(clk), .note_in(16'd185), .note_out(FS3));
music_notes note_G3(.clk(clk), .note_in(16'd196), .note_out(G3));
music_notes note_GS3(.clk(clk), .note_in(16'd208), .note_out(GS3));
music_notes note_A3(.clk(clk), .note_in(16'd220), .note_out(A3));
music_notes note_AS3(.clk(clk), .note_in(16'd233), .note_out(AS3));
music_notes note_B3(.clk(clk), .note_in(16'd247), .note_out(B3));
music_notes note_C4(.clk(clk), .note_in(16'd262), .note_out(C4));
music_notes note_CS4(.clk(clk), .note_in(16'd277), .note_out(CS4));
music_notes note_D4(.clk(clk), .note_in(16'd294), .note_out(D4));
music_notes note_DS4(.clk(clk), .note_in(16'd311), .note_out(DS4));
music_notes note_E4(.clk(clk), .note_in(16'd330), .note_out(E4));
music_notes note_F4(.clk(clk), .note_in(16'd349), .note_out(F4));
music_notes note_FS4(.clk(clk), .note_in(16'd370), .note_out(FS4));
music_notes note_G4(.clk(clk), .note_in(16'd392), .note_out(G4));
music_notes note_GS4(.clk(clk), .note_in(16'd415), .note_out(GS4));
music_notes note_A4(.clk(clk), .note_in(16'd440), .note_out(A4));
music_notes note_AS4(.clk(clk), .note_in(16'd466), .note_out(AS4));
music_notes note_B4(.clk(clk), .note_in(16'd494), .note_out(B4));
music_notes note_C5(.clk(clk), .note_in(16'd523), .note_out(C5));
music_notes note_CS5(.clk(clk), .note_in(16'd554), .note_out(CS5));
music_notes note_D5(.clk(clk), .note_in(16'd587), .note_out(D5));
music_notes note_DS5(.clk(clk), .note_in(16'd622), .note_out(DS5));
music_notes note_E5(.clk(clk), .note_in(16'd659), .note_out(E5));
music_notes note_F5(.clk(clk), .note_in(16'd698), .note_out(F5));
music_notes note_FS5(.clk(clk), .note_in(16'd740), .note_out(FS5));
music_notes note_G5(.clk(clk), .note_in(16'd784), .note_out(G5));
music_notes note_GS5(.clk(clk), .note_in(16'd831), .note_out(GS5));
music_notes note_A5(.clk(clk), .note_in(16'd880), .note_out(A5));
music_notes note_AS5(.clk(clk), .note_in(16'd932), .note_out(AS5));
music_notes note_B5(.clk(clk), .note_in(16'd988), .note_out(B5));
music_notes note_C6(.clk(clk), .note_in(16'd1047), .note_out(C6));
music_notes note_CS6(.clk(clk), .note_in(16'd1109), .note_out(CS6));
music_notes note_D6(.clk(clk), .note_in(16'd1175), .note_out(D6));
music_notes note_DS6(.clk(clk), .note_in(16'd1245), .note_out(DS6));
music_notes note_E6(.clk(clk), .note_in(16'd1319), .note_out(E6));
music_notes note_F6(.clk(clk), .note_in(16'd1397), .note_out(F6));
music_notes note_FS6(.clk(clk), .note_in(16'd1480), .note_out(FS6));
music_notes note_G6(.clk(clk), .note_in(16'd1568), .note_out(G6));
music_notes note_GS6(.clk(clk), .note_in(16'd1661), .note_out(GS6));
music_notes note_A6(.clk(clk), .note_in(16'd1760), .note_out(A6));
music_notes note_AS6(.clk(clk), .note_in(16'd1865), .note_out(AS6));
music_notes note_B6(.clk(clk), .note_in(16'd1976), .note_out(B6));
music_notes note_C7(.clk(clk), .note_in(16'd2093), .note_out(C7));
music_notes note_CS7(.clk(clk), .note_in(16'd2217), .note_out(CS7));
music_notes note_D7(.clk(clk), .note_in(16'd2349), .note_out(D7));
music_notes note_DS7(.clk(clk), .note_in(16'd2489), .note_out(DS7));
music_notes note_E7(.clk(clk), .note_in(16'd2637), .note_out(E7));
music_notes note_F7(.clk(clk), .note_in(16'd2794), .note_out(F7));
music_notes note_FS7(.clk(clk), .note_in(16'd2960), .note_out(FS7));
music_notes note_G7(.clk(clk), .note_in(16'd3136), .note_out(G7));
music_notes note_GS7(.clk(clk), .note_in(16'd3322), .note_out(GS7));
music_notes note_A7(.clk(clk), .note_in(16'd3520), .note_out(A7));
music_notes note_AS7(.clk(clk), .note_in(16'd3729), .note_out(AS7));
music_notes note_B7(.clk(clk), .note_in(16'd3951), .note_out(B7));
music_notes note_C8(.clk(clk), .note_in(16'd4186), .note_out(C8));
music_notes note_CS8(.clk(clk), .note_in(16'd4435), .note_out(CS8));
music_notes note_D8(.clk(clk), .note_in(16'd4699), .note_out(D8));
music_notes note_DS8(.clk(clk), .note_in(16'd4978), .note_out(DS8));


always @(posedge clk)
begin
	counter1 <= counter1 + 1;
	if(counter1 == 6_500_000) //130ms time
		begin
			counter1 <= 0;
			counter2 <= counter2 + 1;
		end
		if(counter2 == 100)
			counter2 <= 1;
		
	case(counter2)
		1 : spk <= D4;
		2 : spk <= D4;
		3 : spk <= D4;
		4 : spk <= D4;
		5 : spk <= D4;
		6 : spk <= D4;
		7 : spk <= D4;
		8 : spk <= D4;
		9 : spk <= D4;
		10 : spk <= D4;
		11 : spk <= D4;
		12 : spk <= D4;
		13 : spk <= D4;
		14 : spk <= D4;
		15 : spk <= D4;
		16 : spk <= D4;
		17 : spk <= D4;
		18 : spk <= D4;
		19 : spk <= D4;
		20 : spk <= D4;
		21 : spk <= D4;
		22 : spk <= D4;
		23 : spk <= D4;
		24 : spk <= D4;
		25 : spk <= A3;
		26 : spk <= C4;
		27 : spk <= D4;
		28 : spk <= D4;
		29 : spk <= D4;
		30 : spk <= E4;
		31 : spk <= F4;
		32 : spk <= F4;
		33 : spk <= F4;
		34 : spk <= G4;
		35 : spk <= E4;
		36 : spk <= D4;
		37 : spk <= C4;
		38 : spk <= C4;
		39 : spk <= D4;
		40 : spk <= 0;
		41 : spk <= A3;
		42 : spk <= C4;
		43 : spk <= B3;
		44 : spk <= D4;
		45 : spk <= B3;
		46 : spk <= E4;
		47 : spk <= F4;
		48 : spk <= F4;
		49 : spk <= C4;
		50 : spk <= C4;
		51 : spk <= C4;
		52 : spk <= C4;
		53 : spk <= D4;
		54 : spk <= C4;
		55 : spk <= D4;
		56 : spk <= 0;
		57 : spk <= 0;
		58 : spk <= A3;
		59 : spk <= C4;
		60 : spk <= D4;
		61 : spk <= D4;
		62 : spk <= D4;
		63 : spk <= F4;
		64 : spk <= G4;
		65 : spk <= G4;
		66 : spk <= G4;
		67 : spk <= A4;
		68 : spk <= A4;
		69 : spk <= A4;
		70 : spk <= A4;
		71 : spk <= G4;
		72 : spk <= A4;
		73 : spk <= D4;
		74 : spk <= 0;
		75 : spk <= D4;
		76 : spk <= E3;
		77 : spk <= F4;
		78 : spk <= F4;
		79 : spk <= G4;
		80 : spk <= A4;
		81 : spk <= D4;
		82 : spk <= 0;
		83 : spk <= D4;
		84 : spk <= F4;
		85 : spk <= E4;
		86 : spk <= E4;
		87 : spk <= F4;
		88 : spk <= D4;
		89 : spk <= 0;
		90 : spk <= 0;
		91 : spk <= 0;
		92 : spk <= 0;
		93 : spk <= 0;
		94 : spk <= 0;
		95 : spk <= 0;
		96 : spk <= 0;
		97 : spk <= 0;
		98 : spk <= 0;
		99 : spk <= 0;
		100 : spk <= 0;

	endcase
end

assign speaker = spk;

endmodule