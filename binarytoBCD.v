module binarytoBCD(
	input signed [6:0] binary, //6 bit binary input
	output reg unsigned [6:0] thos, //outputs thousands
	output reg unsigned [6:0] huns, //outputs hundreds
	output reg unsigned [6:0] tens, //outputs tens
	output reg unsigned [6:0] ones //outputs ones
	);

reg signed [6:0] bcd_data = 0;

always @(binary) //2456
begin
		bcd_data = binary; //2456
		thos = bcd_data/1000; //gets 2
		bcd_data = bcd_data % 1000; //bcd_data gets 456
		huns = bcd_data/100; //gets 4
		bcd_data = bcd_data % 100; //bcd_data gets 56
		tens = bcd_data / 10; // gets 5
		ones = bcd_data % 10; // gets 6
end
endmodule