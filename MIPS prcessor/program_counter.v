module pc(
	input wire clk,
	input wire reset,
	input wire [31:0] pc_next,
	output reg [31:0] pc
	);

	always @(posedge clk ) begin
		if(reset)	pc <= 0;
		else 		pc <= pc_next;
	end

endmodule