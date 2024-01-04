`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 09:39:34 PM
// Design Name: 
// Module Name: code_Product_3bit
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

module code_Product_3bit(
    input [2:0] A,
    input [2:0] B,
    output [5:0] S
    );
    
    assign S[0] = A[0]&B[0];
    wire c1, c2, c3, c4, c5, c6, c7;
    HA H0 ( .A(A[0]&B[1]), .B(A[1]&B[0]), .S(S[1]), .Co(c1) );
    FA F0 ( .A(A[1]&B[1]), .B(A[0]&B[2]), .Ci(A[2]&B[0]), .S(c4), .Co(c7) );
    HA H1 ( .A(c4), .B(c1), .S(S[2]), .Co(c2) );
    FA F1 ( .A(A[2]&B[1]), .B(A[1]&B[2]), .Ci(c7), .S(c5), .Co(c6) );
    HA H2 ( .A(c5), .B(c2), .S(S[3]), .Co(c3) );
    FA F2 ( .A(A[2]&B[2]), .B(c5), .Ci(c3), .S(S[4]), .Co(S[5]) );
endmodule