`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:38 02/10/2023
// Design Name:   rs_ff
// Module Name:   C:/Users/DELL/Documents/newbie/rs_ff/rs_ff_tb.v
// Project Name:  rs_ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rs_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rs_ff_tb;

	// Inputs
	reg  s;
	reg clk;
	reg r;

	// Outputs
	wire q;
	wire qbar;
	
	initial begin
	 clk = 0;
	 forever #2 clk = ~clk;
	end
      

	// Instantiate the Unit Under Test (UUT)
	rs_ff uut (
		.q(q), 
		.qbar(qbar), 
		.s(s), 
		.r(r),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		r = 0;
				// Wait 100 ns for global reset to finish
		#100;
		s = 0;
		r = 1;
		#100;
		s = 1;
		r = 0;
		#100;
		s = 1;
		r =1;
		#100;
        
		// Add stimulus here

	end
	
	
endmodule

