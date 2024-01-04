`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 04:57:13 PM
// Design Name: 
// Module Name: code_Half_Adder
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


module code_Half_Adder(
    input A,
    input B,
    output S,
    output Co
    );
    
    assign S = A ^ B;
    assign Co = A & B;
endmodule
