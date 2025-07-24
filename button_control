`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 18:49:38
// Design Name: 
// Module Name: buutoncontrol
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


module buttoncontrol(
    input rst,
    input clk,
    input button,
    output reg validvote
    );
    reg [31:0] counter;
  always @(posedge clk) begin
      if (rst)
         counter<=0;
      else begin
          if(button & counter<=100000001)
             counter<=counter+1;
          else if(!button)
             counter<=0;
      end
   end           
  always @(posedge clk) begin 
     if(rst)
        validvote<=1'b0;
     else 
       begin
         if(counter==100000000)  
            validvote<=1'b1;
         else
            validvote<=1'b0;
       end
    end           
endmodule
