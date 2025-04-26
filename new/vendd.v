`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 02:52:50 PM
// Design Name: 
// Module Name: vendd
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


module vendd(
    input [3:0] switches,
    input [2:0] btn,
    input clk,
    input clr,
    output reg [3:0] led,
    output [3:0] an,
    output [6:0] ca
    );
    reg[7:0] price;
    reg[7:0] curr_amount;
    reg [3:0]state=0;
    reg [3:0]next_state;
    reg[3:0] p_state;
    reg charged=0;
    wire clk_1Hz;
    clock_e hehe(.clk(clk),.clr(clr),.c_e(clk_1Hz));
    parameter zero = 0, five =1, ten = 2, fifteen = 3, twenty = 4, twentyfive =5, thirty =6, thirtyfive = 7;
    always @(btn[0] or btn[1] or btn[2] or state) begin
        case(state)
            zero: begin
                    if (btn[0]) next_state = five;
                    else if (btn[1]) next_state = ten;
                    else if (btn[2]) next_state = twentyfive;
                    else next_state = zero;
                  end
            five: begin
                    if (btn[0]) next_state = ten;
                    else if (btn[1]) next_state = fifteen;
                    else if (btn[2]) next_state = thirty;
                    else next_state = five;
                  end
            ten: begin
                    if (btn[0]) next_state = fifteen;
                    else if (btn[1]) next_state = twenty;
                    else if (btn[2]) next_state = thirtyfive;
                    else next_state = ten;
                  end
            fifteen: begin
                    if (btn[0]) next_state = twenty;
                    else if (btn[1]) next_state = twentyfive;
                    else if (btn[2]) next_state = thirtyfive;
                    else next_state = fifteen;
                  end
            twenty: begin
                    if (btn[0]) next_state = twentyfive;
                    else if (btn[1]) next_state = thirty;
                    else if (btn[2]) next_state = thirtyfive;
                    else next_state = twenty;
                  end
            twentyfive: begin
                    if (btn[0]) next_state = thirty;
                    else if (btn[1]) next_state = thirtyfive;
                    else if (btn[2]) next_state = thirtyfive;
                    else next_state = twentyfive;
                  end
            thirty: begin
                    if (btn[0]) next_state = thirtyfive;
                    else if (btn[1]) next_state = thirtyfive;
                    else if (btn[2]) next_state = thirtyfive;
                    else next_state = thirty;
                  end
            thirtyfive: begin
                    next_state = thirtyfive;
                  end
             
        endcase
        if (charged)begin 
        next_state =zero;
        charged =0;
        end
        if (switches[0]) begin
            p_state =fifteen;
        end else if (switches[1]) begin
            p_state =twenty;
        end else if (switches[2]) begin
            p_state =twentyfive;
        end else if (switches[3]) begin
            p_state =thirty;
        end
        if(state>=p_state) begin
            next_state = state -p_state;
            charged = 1;
        end
    end
    always @(posedge clk_1Hz or posedge clr) begin
        if(clr) begin
            state = zero;
            curr_amount = 0;
        end else begin
            state = next_state;
            if (charged==1) begin
                
                case(p_state) 
                    3: led = 4'b0001;
                    4: led = 4'b0010;
                    5: led = 4'b0100;
                    6: led = 4'b1000;
                endcase
            end
        end
    end
    always @(*) begin
        case(state)
            zero: curr_amount = 0;
            five: curr_amount =5;
            ten: curr_amount =10;
            fifteen: curr_amount =15;
            twenty: curr_amount =20;
            twentyfive: curr_amount =25;
            thirty: curr_amount =30;
            thirtyfive: curr_amount =35;
             
        endcase
        case (p_state) 
            fifteen: price = 15;
            twenty: price =20;
            twentyfive: price = 25;
            thirty: price =30;
        endcase
        
    end
    digController dig (.clk(clk),.clr(clr),.d1(curr_amount[3:0]),.d2(curr_amount[7:4]),.d3(price[3:0]),.d4(price[7:4]),.an(an),.ag(ca));
endmodule
