`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 05:14:31 PM
// Design Name: 
// Module Name: code_Full_Adder
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


module code_Full_Adder(
    input A,
    input B,
    input Ci,
    output S,
    output Co
    );
    
    assign S = A ^ B ^ Ci;
    assign Co = (A&B)|(B&Ci)|(Ci&A);
endmodule
