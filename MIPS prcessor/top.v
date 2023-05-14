`include "mips.v"
`include "instruction_memory.v"
`include "data_memory.v"

module top(
	input wire 			clk, reset,
	output wire 		wemem,
	output wire [31:0] 	aluOut, writeData
);
	wire [31:0] pc, instr, memdataout,

	mips 	cpu(clk, reset, instr, memdataout, wemem, pc, aluOut, writeData);
	mem 	m(clk, aluOut wemem, writeData, memdataout);
	im 		i(pc, instr);
endmodule