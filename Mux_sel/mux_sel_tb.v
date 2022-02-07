`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:40:20 02/07/2022
// Design Name:   mux_sel
// Module Name:   C:/Youssef/Projects/Verilog Projects/Test/mux_sel_tb.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_sel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_sel_tb;
	// Inputs
	reg [3:0] in1;
	reg [3:0] in2;
	reg [3:0] in3;
	reg [3:0] in4;
	reg [1:0] sel;
	// Outputs
	wire [3:0] out;
	// Instantiate the Unit Under Test (UUT)
	mux_sel uut (.in1(in1), .in2(in2), .in3(in3), .in4(in4), .sel(sel),.out(out));
	initial begin
	$monitor(" sel = %d, out = %d",sel,out);
		// Initialize Inputs
		in1 = 1;
		in2 = 2;
		in3 = 3;
		in4 = 4;
		sel = 0;
		#10;
       sel = 1;
		 #10
		 sel = 3;
		 #10
		 sel = 2;
		 #10 
		 sel = 4;
		 #10
		 sel = 0;
	end      
endmodule

