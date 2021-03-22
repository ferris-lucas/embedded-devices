module digital_clock(
	input clk, 
	input en, 
	input rst, 
	input hrup, 
	input minup,
	output  [3:0] s1, 
	output  [3:0] s2, 
	output  [3:0] m1,
	output  [3:0] m2, 
	output  [3:0] h1, 
	output  [3:0] h2
	);

//time display h2 h1 : m2 m1
reg [6:0] hour = 0, min = 0, sec = 0; //5 bit because we get max number of 60 (five bits -> 64 numbers)
reg signed [27:0] clck = 0;

always @(posedge clk)
begin
	if (rst == 1'b1) 
	begin
			hour <= 0;
			min <= 0;
			sec <= 0;
	end
	else 
		if (minup == 1'b1)
			if (min == 6'd59)
				min <= 0;
		else
			min <= min + 1'd1;
	 
		if (hrup == 1'b1)
			if (hour == 23)
				hour <= 0;
		else
			hour <= hour +1'd1;
	 
		if (en == 1'b1)
			if (clck == 50_000_000)
			begin
				clck <= 0;
				if (sec == 6'd59)
				begin
					sec <= 0;
					if (hour == 6'd23 && min == 6'd59)
					begin
						hour <= 0;
						min <= 0;
					end
					else
					begin
						if (min == 6'd59)
						begin
							hour <= hour + 1'd1;
							min <= 0;
						end
						else
							min <= min + 1'd1;
					end
				end
				else
					sec <= sec + 1'd1;
			end
			else
			clck <= clck + 1'd1;
end

binarytoBCD secs (.binary(sec), .thos(), .huns(), .tens(s2), .ones(s1));
binarytoBCD mins (.binary(min), .thos(), .huns(), .tens(m2), .ones(m1));
binarytoBCD hours (.binary(hour), .thos(), .huns(), .tens(h2), .ones(h1));

endmodule