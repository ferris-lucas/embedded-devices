//this module reduces the input clock frequency to 4Hz
//this is used to debounce the pushbuttons that are used in this project, assuring that they work correctly

module Slow_Clock_4Hz(
	input clk_in,  //input clock, this will be 50MHz, since that's the specification of my FPGA clock
	output clk_out //output clock, with a frequency of 4Hz,enough to allow the debouncing of the pushbutton
	);

//the input clock is 50MHz -> 50_000_000 cycles per second

	
reg [26:0] count = 0; //creates a counter that goes from 0 to 12_500_000
reg aux = 1'b0; //creates an aux to generate the clock, this aux will change from 0 to 1 every time count gets 12_500_00

always @(posedge clk_in) //every positive edge of clk_in 
begin
		count <= count + 1; //increments count
		if (count == 125000)
			begin
				count <= 0; //restarts count
				aux = ~aux; //change current value of aux
			end
end
assign clk_out = aux; //constantly assign the value of aux to clk_out

endmodule