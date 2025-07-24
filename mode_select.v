`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 21:29:43
// Design Name: 
// Module Name: modeselect
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


module modeselect(
    input clk,
    input rst,
    input mode,
    input validvotecasted,
    input [7:0] cand_vote1,
    input [7:0] cand_vote2,
    input [7:0] cand_vote3,
    input [7:0] cand_vote4,
    input candbuttpress1,
    input candbuttpress2,
    input candbuttpress3,
    input candbuttpress4,
    output reg [7:0] leds
    );
    
    reg [7:0] counter;
    
    always @(posedge clk) begin
       if(rst)
          counter<=0;
       else if(validvotecasted)
          counter=counter+1;
       else if(counter!=0 & counter<=100000000)
          counter=counter+1;
    end
    always @(posedge clk) begin
       if(rst)
         leds<=0;
       else 
         begin
            if(mode==0 & counter>0)
              leds<=8'hFF;
            else if(mode==0)
               leds<=8'h00;
            else
               begin
                 if(candbuttpress1)
                   leds<=cand_vote1;
                 else if(candbuttpress2)
                   leds<=cand_vote2; 
                 else if(candbuttpress3)
                   leds<=cand_vote3; 
                 else if(candbuttpress4)
                   leds<=cand_vote4; 
                end
          end
       end  
    
    
    
         endmodule
