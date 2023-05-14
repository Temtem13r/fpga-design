module adder(
	input wire[31:0]	input1;
	input wire[31:0]	input2;
	output wire[31:0]	out;
);
	assign out = input1 + input2;
endmodule