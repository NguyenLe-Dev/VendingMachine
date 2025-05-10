`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 04:20:14 PM
// Design Name: 
// Module Name: clock_e
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


module clock_e(
    input clk,
    input clr,
    output reg c_e
    );
    integer count =0;
    integer bruh=0;
    always @(posedge clk) begin
    
        if(count == 49999999) begin
        count <= 0;
        bruh <= 1;
        end else begin
        count <= count + 1;
        bruh <= 0;
        end
    end
    always @(posedge clk or posedge clr) begin
        if (clr == 1) begin
        c_e <= 0;
        end else if(bruh == 1) begin
        c_e =~c_e;
        end
    end
endmodule