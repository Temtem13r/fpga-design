`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2022 15:17:58
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
    
    reg [1:0] S1;
    reg [1:0] S2;
    reg [1:0] S3;
    reg EN_0;
    reg [3:0] DATA_IN1;
    reg [3:0] DATA_IN2;
    wire DATA_OUT;
    
    design_1 uut(.DATA_IN1(DATA_IN1), .DATA_IN2(DATA_IN2), .S1(S1),
    .S2(S2), .S3(S3), .EN_0(EN_0));
    initial begin
        EN_0 = 1;
        S1 = 1;
        S2 = 1;
        S3 = 1;
        DATA_IN1= 1 ;
        DATA_IN2 = 0;
        #200;
        //$stop;
    end
endmodule
