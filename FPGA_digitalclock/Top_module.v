module Top_module(
	input clk, //fpga clock
	input sw, //switch that enables clock
	input btnC, // resets the clock
	input btnU, // hour increment button
	input btnR, //min increment button
	output [6:0] seg, //seconds output, used to drive the LEDs
	output [3:0] an, //enable signal to indicate the current state of the 7-seg display
	output [7:0] led, //displays secs
	output dot //displays dot between HH.MM in 7seg display
	);

wire [3:0] s1, s2, m1, m2, h1, h2; //wires for each digit of seconds, minutes and hours
reg hrup = 1'b0;
reg minup = 1'b0;
reg k = 1'b0;
wire btnCclr, btnUclr, btnRclr;
reg btnCclr_prev = 1'b0;
reg btnU_prev = 1'b0;
reg btnRclr_prev = 1'b0;

debounce dbC(.pb(~btnC), .clk_in(clk), .pb_out(btnCclr)); //instantiate the module used for debouncig the pb used
debounce dbU(.pb(btnU), .clk_in(clk), .pb_out(btnUclr)); //instantiate the module used for debouncig the pb used
debounce dbR(.pb(~btnR), .clk_in(clk), .pb_out(btnRclr)); //instantiate the module used for debouncig the pb used

sevensegment_driver seg7(.clk(clk), .clr(btnCclr), .in1(h2), .in2(h1), .in3(m2), .in4(m1), .seg(seg), .an(an));

digital_clock clock(.clk(clk), .en(sw), .rst(btnCclr), .hrup(hrup), .minup(minup), .s1(s1), .s2(s2), .m1(m1), .m2(m2), .h1(h1), .h2(h2));

always @(posedge clk)
	begin
		btnU_prev <= btnUclr; //stores previous value of button pressed
		//btnRclr_prev <= btnRclr;
		//if (btnUclr_prev == 1'b0 & btnUclr == 1'b1) //increments hour if only hour up is pressed
		//	hrup <= 1'b1;
		//else
		//	hrup <= 1'b0;
		
		if (btnU == 1'b0 & btnU_prev == 1'b1)
			hrup <= 1'b1;
		else
			hrup <= 1'b0;
			
		if (btnRclr_prev == 1'b0 & btnRclr == 1'b1) //increments minute if only minute up is pressed
			minup <= 1'b1;
		else
			minup <= 1'b0;
		case (an) //checks if the current active display is H2, adds a dot to it H1H2.M1M2
		4'b0111 : k <= 1'b1;
		4'b1011 : k <= 1'b0;
		4'b1101 : k <= 1'b1;
		4'b1110 : k <= 1'b1; 
		endcase
	end


assign led [7:0] = {~s1[3:0], s2[3:0]};
assign dot = k; //activates dot whenever display H2 is acctive

endmodule