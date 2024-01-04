`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 07:15:31 PM
// Design Name: 
// Module Name: code_Multiplex
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


module code_Multiplex(
    input A,
    input B,
    input S0,
    output Z
    );
    
    assign Z = ~S0 ? A : B;
endmodule
