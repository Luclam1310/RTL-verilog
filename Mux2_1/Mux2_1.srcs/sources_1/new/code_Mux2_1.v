`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 10:28:11 PM
// Design Name: 
// Module Name: code_Mux2_1
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


module code_Mux2_1(
    input A,
    input B,
    input Select,
    output reg Y
    );
    
    always @ (Select, A, B)
    begin
        if (Select) Y = B;
        else Y = A;
    end
endmodule
