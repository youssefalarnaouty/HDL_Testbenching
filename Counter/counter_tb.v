`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:21 02/06/2022
// Design Name:   mycounter
// Module Name:   C:/Youssef/Projects/Verilog Projects/Test/counter_tb.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mycounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;
	// Inputs
	reg clk;
	// Outputs
	wire [3:0] qd;
	// Instantiate the Unit Under Test (UUT)
	mycounter uut ( .clk(clk), .qd(qd));
	initial 
	begin 
		// Generating clock cycles (square wave)
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
			$monitor(clk,qd );
	end    
endmodule

