`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 11:12:54 PM
// Design Name: 
// Module Name: code_Sosanh
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


module code_Sosanh(
    input A,
    input B,
    input G,
    output L,
    output E
    );
    
    assign L = G&(A&(~B));
    assign E = G&(~(A^B));
endmodule
