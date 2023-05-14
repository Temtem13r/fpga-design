`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2022 14:48:54
// Design Name: 
// Module Name: m
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


module mult(
    input [3:0] X,
    input [1:0] S,
    input EN,
    output Y
    );
    
     reg Y;
       
     always @*
     if(EN)
     begin
        Y = 0;
        Y = X[S];
     end      
endmodule



