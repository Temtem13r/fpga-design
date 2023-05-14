`include "main_decoder.v"
`include "alu_decoder.v"

module controller(
	input wire [5:0] 	opcode,
	input wire [5:0] 	funct,
	output wire 		wemem,
	output wire 		werf,
	output wire 		rfwasrc,
	output wire 		memToRf,
	output wire 		j,
	output wire 		PCSrc,
	output wire 		aluSrc,
	output wire [3:0] 	aluControl
	output wire 		zero,
	output wire 		overflow,
);
	wire[1:0] aluop;
	wire branch;
	main_decoder md(.opcode(opcode), .wemem(wemem), .werf(werf), .branch(branch), .rfwasrc(rfwasrc), .memToRf(memToRf), .aluSrc(aluSrc), .aluop(aluop), .j(j));
	alu_decoder ad(.funct(funct), .aluop(aluop), .aluControl(aluControl));
	assign PCSrc = zero & branch;
endmodule