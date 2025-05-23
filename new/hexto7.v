`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 09:52:03 PM
// Design Name: 
// Module Name: hexto7
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


module hexto7(
    input [3:0] x,
    output reg[6:0] CA
    );
    always @(x)
    begin
        case(x)
            0: CA = 7'b0000001;
            1: CA = 7'b1001111;
            2: CA = 7'b0010010;
            3: CA = 7'b0000110;
            4: CA = 7'b1001100;
            5: CA = 7'b0100100;
            6: CA = 7'b0100000;
            7: CA = 7'b0001111;
            8: CA = 7'b0000000;
            9: CA = 7'b0000100;
            10: CA = 7'b0001000;
            11: CA = 7'b1100000;
            12: CA = 7'b0110001;
            13: CA = 7'b1000010;
            14: CA = 7'b0110000;
            15: CA = 7'b0111000;
        endcase
    end
endmodule
