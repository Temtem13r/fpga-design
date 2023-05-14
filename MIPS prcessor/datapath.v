`include "adder.v"
`include "mux2.v"
`include "register_file.v"
`include "program_counter.v"
`include "alu.v"
/***********************************************
*DATA PATH
*
*responsible for:
*	- calculating the next cmd for executing
* 	- reading the data from register file
* 	- providing the data to ALU
*
* **********************************************/

module datapath(
	input 	wire 			clk reset,
	input 	wire [31:0]		instr, memdataout
	//data from the controller module
	input 	wire			werf, rfwasrc, memToRf, 
	input 	wire			j, PCSrc,
	input 	wire			aluSrc,
	input	wire [3:0]		aluControl,
	input 	wire			zero, overflow,
	
	output 	wire [31:0]		pc,
	output 	wire [31:0]		aluout,
	output 	wire 			writeData,
);

wire [4:0] 	waddr;
wire [31:0] pcnext, pcplus4, pcjump, pcbranch;
wire [31:0] srca, srcb;
wire [31:0] memaluout;
wire [31:0] signimm;

//calculatig pc next
pc 		pcreg(clk, reset, pcnext, pc); //update current cmd on posedge clk
adder 	pcadd1(pc, 32'd4, pcplus4);
adder 	pcadd2({signimm[29:0], 2'b00}}, pcplus4, pcbranch);
mux2 	pcbrmux(PCSrc, pcbranch, pcplus4, pcbrnext);
mux2 	pcjmux(j, {pcplus4[31:28], instr[25:0], 2'b00}, pcbrnext, pcnext);

//rf logic
signext	se(inst[15:0], signimm);
mux2	memalutoreg(memToRf, memdataout, aluout, memaluout);
mux2	wrtaddr(rfwasrc, instr[15:11], inst[20:16], waddr);
register_file rf(clk, instr[25:21], instr[20:16], waddr, werf, memaluout srcA, writeData);

//alu logic
mux2 	srcbmux(aluSrc, signimm, writeData, srcb);
alu		alu(srca, srcb, aluControl, aluout, zero, overflow);
endmodule