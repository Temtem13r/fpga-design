`include "controller.v"
`include "datapath.v"

module mips(
	input 	wire 		clk, reset,
	input 	wire [31:0]	instr, memdataout,

	output	wire 		wemem,
	output	wire [31:0] pc, aluout, writeData, 
);
	wire 		werf;
	wire 		rfwasrc, memToRf;
	wire 		j, PCSrc;
	wire 		aluSrc;
	wire [3:0]	aluControl;
	wire 		zero, overflow;
	controller c(instr[31:26], instr[5:0], wemem, werf, rfwasrc, memToRf, j, PCSrc, aluSrc, aluControl, zero, overflow);
	datapath d(clk, reset, instr, memdataout, werf, rfwasrc, memToRf, j, PCSrc, aluSrc, aluControl, zero, overflow, pc, aluout, writeData);
endmodule