module top_supermario(
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
	if(counter1 == 4_500_000) 
		begin
			counter1 <= 0;
			counter2 <= counter2 + 1;
		end
		if(counter2 == 130)
			counter2 <= 1;
		
	case(counter2)
		1 : spk <= E5;
		2 : spk <= 0;
		3 : spk <= E5;
		4 : spk <= 0;
		5 : spk <= 0;
		6 : spk <= E5;
		7 : spk <= 0;
		8 : spk <= 0;
		9 : spk <= C5;
		10 : spk <= 0;
		11 : spk <= E5;
		12 : spk <= 0;
		13 : spk <= 0;
		14 : spk <= G5;
		15 : spk <= 0;
		16 : spk <= 0;
		17 : spk <= 0;
		18 : spk <= 0;
		19 : spk <= 0;
		20 : spk <= 0;
		21 : spk <= G4;
		22 : spk <= 0;
		23 : spk <= 0;
		24 : spk <= 0;
		25 : spk <= 0;
		26 : spk <= 0;
		27 : spk <= 0;
		28 : spk <= C5;
		29 : spk <= 0;
		30 : spk <= 0;
		31 : spk <= 0;
		32 : spk <= 0;
		33 : spk <= G4;
		34 : spk <= 0;
		35 : spk <= 0;
		36 : spk <= 0;
		37 : spk <= E4;
		38 : spk <= 0;
		39 : spk <= 0;
		40 : spk <= 0;
		41 : spk <= A4;
		42 : spk <= 0;
		43 : spk <= 0;
		44 : spk <= B4;
		45 : spk <= 0;
		46 : spk <= 0;
		47 : spk <= AS4;
		48 : spk <= 0;
		49 : spk <= A4;
		50 : spk <= 0;
		51 : spk <= 0;
		52 : spk <= G4;
		53 : spk <= 0;
		54 : spk <= E5;
		55 : spk <= 0;
		56 : spk <= G5;	
		57 : spk <= 0;
		58 : spk <= A5;
		59 : spk <= 0;
		60 : spk <= 0;
		61 : spk <= F5;
		62 : spk <= 0;
		63 : spk <= G5;
		64 : spk <= 0;
		65 : spk <= 0;
		66 : spk <= E5;
		67 : spk <= 0;
		68 : spk <= 0;
		69 : spk <= C5;
		70 : spk <= 0;
		71 : spk <= D5;
		72 : spk <= 0;
		73 : spk <= B4;
		74 : spk <= 0;
		75 : spk <= 0;
		76 : spk <= 0;
		77 : spk <= 0;
		78 : spk <= C5;
		79 : spk <= 0;
		80 : spk <= 0;
		81 : spk <= 0;
		82 : spk <= 0;
		83 : spk <= G4;
		84 : spk <= 0;
		85 : spk <= 0;
		86 : spk <= 0;
		87 : spk <= 0;
		88 : spk <= E4;
		89 : spk <= 0;
		90 : spk <= 0;
		91 : spk <= 0;
		92 : spk <= 0;
		93 : spk <= A4;
		94 : spk <= 0;
		95 : spk <= 0;
		96 : spk <= B4;
		97 : spk <= 0;		
		98 : spk <= 0;
		99 : spk <= AS4;
		100 : spk <= 0;
		101 : spk <= A4;
		102 : spk <= 0;
		103 : spk <= 0;
		104 : spk <= G4;
		105 : spk <= 0;
		106 : spk <= E5;
		107 : spk <= 0;
		108 : spk <= G5;
		109 : spk <= 0;
		110 : spk <= A5;
		111 : spk <= 0;
		112 : spk <= 0;
		113 : spk <= F5;
		114 : spk <= 0;
		115 : spk <= G5;
		116 : spk <= 0;
		117 : spk <= 0;
		118 : spk <= E5;
		119 : spk <= 0;
		120 : spk <= 0;
		121 : spk <= C5;
		122 : spk <= 0;
		123 : spk <= D5;
		124 : spk <= 0;
		125 : spk <= B4;
		126 : spk <= 0;
		127 : spk <= 0;
		128 : spk <= 0;
		129 : spk <= 0;
		130 : spk <= 0;

	endcase
end

assign speaker = spk;

endmodule