`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 20:47:24
// Design Name: 
// Module Name: votingmachine
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


module votingmachine(
    input rst,
    input clk,
    input mode,
    input button1,
    input button2,
    input button3,
    input button4,
    output [7:0] led
    );
    
    wire validvote1;
    wire validvote2;
    wire validvote3;
    wire validvote4;
    
    wire anyvalidvote;
    assign anyvalidvote=validvote1|validvote2|validvote3|validvote4;
    
    buttoncontrol bc1(
    .rst(rst),
    .clk(clk),
    .button(button1),
    .validvote(validvote1)
    ); 
    
    buttoncontrol bc2(
    .rst(rst),
    .clk(clk),
    .button(button2),
    .validvote(validvote2)
    ); 
    
    buttoncontrol bc3(
    .rst(rst),
    .clk(clk),
    .button(button3),
    .validvote(validvote3)
    ); 
    
    buttoncontrol bc4(
    .rst(rst),
    .clk(clk),
    .button(button4),
    .validvote(validvote4)
    );
    
votestorer vs(
.rst(rst),
.clk(clk),
.candvote1val(validvote1),
.candvote2val(validvote2),
.candvote3val(validvote3),
.candvote4val(validvote4),
.candvoterecd1(candvoterecd1),
.candvoterecd2(candvoterecd2),
.candvoterecd3(candvoterecd3),
.candvoterecd4(candvoterecd4)
);
 
 
 modeselect ms(
    .clk(clk),
    .rst(rst),
    .mode(mode),
    .validvotecasted(anyvalidvote),
    .cand_vote1(candvoterecd1),
    .cand_vote2(candvoterecd2),
    .cand_vote3(candvoterecd3),
    .cand_vote4(candvoterecd4),
    .candbuttpress1(validvote1),
    .candbuttpress2(validvote2),
    .candbuttpress3(validvote3),
    .candbuttpress4(validvote4),
    .leds(led)
    );   
    
endmodule
