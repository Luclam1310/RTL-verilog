`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 07:33:58 PM
// Design Name: 
// Module Name: code_Led7doan
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


module code_Led7doan(
    input [3:0] Q,
    output [0:6] HEX
    );
    
    assign HEX = (Q == 4'b0000) ? 7'b0000001 : //0
                 (Q == 4'b0001) ? 7'b1001111 : //1
                 (Q == 4'b0010) ? 7'b0010010 : //2
                 (Q == 4'b0011) ? 7'b0000110 : //3
                 (Q == 4'b0100) ? 7'b1001100 : //4
                 (Q == 4'b0101) ? 7'b0100100 : //5
                 (Q == 4'b0110) ? 7'b0100000 : //6
                 (Q == 4'b0111) ? 7'b0001111 : //7
                 (Q == 4'b1000) ? 7'b0000000 : //8
                 (Q == 4'b1001) ? 7'b0000100 : 7'b1111111; //9
endmodule
