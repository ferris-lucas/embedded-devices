//this module debounces the pushbuttons, to assure that, due to their mechanical characteristic, they create glitches
//when a pb is pressed, it takes some time for the input active level signal stays stable
//if we connect the pb signal to 1 D_FF, the value will be stored accordingly to the input clock that feeds the FF
//if we use a clk frequency close lower than the fpga clock, we can capture the pb signal avoiding the micro flicks
//if we use another D_FF, we create a delay of 1 clock cycle
//if we AND the output of D_FF1 and D_FF2, we get a stable pulse that represents the pb pressing


module debounce(
	input pb,     //pushbutton 
	input clk_in, //input clock, needs to be slowed down
	output pb_out    //pb output
	);
wire clk_out;
wire Q0, Q1, Q2, Q2_bar;

Slow_Clock_4Hz u1 (.clk_in(clk_in), .clk_out(clk_out)); //instantiate the module that reduces the input clk freq

D_FF d0 (.clk(clk_out), .clr(1'b0), .D(pb), .Q(Q0));
D_FF d1 (.clk(clk_out), .clr(1'b0), .D(Q0), .Q(Q1)); //feeds both FF with reduced freq clock
D_FF d2 (.clk(clk_out), .clr(1'b0), .D(Q1), .Q(Q2)); //feeds both FF with reduced freq clock

assign Q2_bar = ~Q2;
assign pb_out = Q1 & Q2_bar;

endmodule