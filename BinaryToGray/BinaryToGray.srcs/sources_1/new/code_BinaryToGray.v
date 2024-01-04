`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 03:43:20 PM
// Design Name: 
// Module Name: code_BinaryToGray
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


module code_BinaryToGray(
    input [3:0] B,
    output [3:0] G
    );
    
    assign G[3] = B[3];
    assign G[2] = B[2] ^ B[3];
    assign G[1] = B[1] ^ B[2];
    assign G[0] = B[0] ^ B[1];
endmodule
