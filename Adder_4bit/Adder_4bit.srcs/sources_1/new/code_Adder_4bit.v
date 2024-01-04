`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 05:54:08 PM
// Design Name: 
// Module Name: code_Adder_4bit
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

module HA(
    input A,
    input B,
    output S,
    output Co
    );
    
    assign S = A ^ B;
    assign Co = A&B;
endmodule

module FA(
    input A,
    input B,
    input Ci,
    output S,
    output Co
    );
    
    assign S = A^B^Ci;
    assign Co = (A&B)|(B&Ci)|(Ci&A);
endmodule

module code_Adder_4bit(
    input [3:0] A,
    input [3:0] B,
    output [4:0] S
    );
    
    wire c1, c2, c3;
    HA U0 ( .A(A[0]), .B(B[0]), .S(S[0]), .Co(c1) );
    FA U1 ( .A(A[1]), .B(B[1]), .Ci(c1), .S(S[1]), .Co(c2) );
    FA U2 ( .A(A[2]), .B(B[2]), .Ci(c2), .S(S[2]), .Co(c3) );
    FA U3 ( .A(A[3]), .B(B[3]), .Ci(c3), .S(S[3]), .Co(S[4]) );
endmodule