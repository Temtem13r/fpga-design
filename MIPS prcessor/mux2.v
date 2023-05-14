module mux2(
	input wire selector
	input wire [31:0] input1,
	input wire [31:0] input0,
	output wire [31:0] out
)
	assign out = selector ? input1:input0;
endmodule