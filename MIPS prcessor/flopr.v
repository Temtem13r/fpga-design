module flopr(
	input 	logic 			clk, reset,
	input 	logic [31:0]	d,
	output 	logic [31:0]	d,
	always @(posedge clk, posedge reset) begin
		if(reset)	q <= 0;
		else 		q <= d;
	end
);