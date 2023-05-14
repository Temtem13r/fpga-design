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



/*module testbench;
    reg [1:0] S;
    reg EN;
    reg [3:0] X;

    mult m(X,S,EN,Y);
    
    initial
    begin
        EN = 1;
        S = 0;
        X = 1;
        #50;
        S = 1;
        X = 2;
        #50;
        S = 2;
        X = 4;
        #50;
        S = 2;
        X = 8;  
        #50;
    end
endmodule    */