`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:27:46 02/07/2022
// Design Name:   AND_Sens
// Module Name:   C:/Youssef/Projects/Verilog Projects/Test/ANd_Sens_tb.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AND_Sens
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ANd_Sens_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	AND_Sens uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
	$monitor ("a=%d  |  b=%d  |   result=%d", a, b, c);
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10
		a= 0;
		b=1;
		
		#10
		a= 1;
		b=0;
		
		#10
		a= 1;
		b=1;
        

	end
      
endmodule

