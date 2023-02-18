`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:56 09/15/2022 
// Design Name: 
// Module Name:    rs_ff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rs_ff(q, qbar, s,r ,clk);
input s,r;
input  clk;
output reg q, qbar;
  
always@(posedge clk)
begin
if(s==1)
begin
q<=1;
end
else if (r==1)
begin
q<=0;
end
else if (s==0 & r==0)
begin
q<=q;
end

qbar=~q;
end
endmodule
