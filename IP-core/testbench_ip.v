`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2022 16:17:58
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();
    
    reg [2:0] S;
    reg EN_0;
    reg [7:0] DATA_IN;
    wire DATA_OUT;
    reg GND;

    design_1 uut(.DATA_IN(DATA_IN), .S(S), .EN_0(EN_0), .GND(GND), .DATA_OUT(DATA_OUT));
    initial begin
        GND = 0;
        EN_0 = 1;
        S = 0;
        DATA_IN= 1;
        #200;
        
        S = 0;
        DATA_IN= 2;
        #200;
        
         S = 0;
         DATA_IN= 3;
         #200;
        $stop;
    end
endmodule


