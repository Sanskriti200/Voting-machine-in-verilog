`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 19:40:54
// Design Name: 
// Module Name: votestorer
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


module votestorer(
input rst,
input clk,
input mode,
input candvote1val,
input candvote2val,
input candvote3val,
input candvote4val,
output reg [7:0] candvoterecd1,
output reg [7:0] candvoterecd2,
output reg [7:0] candvoterecd3,
output reg [7:0] candvoterecd4
);
    always @(posedge clk) begin
       if(rst)
         begin
            candvoterecd1<=0;
            candvoterecd2<=0;
            candvoterecd3<=0;
            candvoterecd4<=0;
         end
       else 
         begin
            if(candvote1val & mode==0) 
                candvoterecd1<=candvoterecd1+1;
            if(candvote2val & mode==0) 
                candvoterecd2<=candvoterecd2+1;
            if(candvote3val & mode==0) 
                candvoterecd3<=candvoterecd3+1;
            if(candvote4val & mode==0) 
                candvoterecd4<=candvoterecd4+1;   
          end  
     end       
endmodule
