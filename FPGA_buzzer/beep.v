module	beep(clk, enable,beep);						
input	clk;
input enable;							
output beep;											
reg beep_r;								
reg[27:0]count;

assign beep = beep_r&enable;				

always@(posedge clk)
begin
	count <= count + 1'b1;
end

always @(count[9])
begin
	beep_r = !(count[13]&count[24]&count[27]);
end

endmodule