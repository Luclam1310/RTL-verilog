`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 11:24:57 PM
// Design Name: 
// Module Name: code_Sosanh_4bit
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

module SS(
    input A,
    input B,
    input G,
    output L,
    output E
    );
    
    assign L = G&(A&(~B));
    assign E = G&(~(A^B));
endmodule

module code_Sosanh_4bit(
    input [3:0] A,
    input [3:0] B,
    input G,
    output L,
    output E
    );
   
    wire c1, c2, c3, d0, d1, d2, d3;
    SS S3 ( .A(A[3]), .B(B[3]), .G(G), .L(d3), .E(c3) );
    SS S2 ( .A(A[2]), .B(B[2]), .G(c3), .L(d2), .E(c2) );
    SS S1 ( .A(A[1]), .B(B[1]), .G(c2), .L(d1), .E(c1) );
    SS S0 ( .A(A[0]), .B(B[0]), .G(c1), .L(d0), .E(E) );
    
    assign L = d3|d2|d1|d0;
endmodule
