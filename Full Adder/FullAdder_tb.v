`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:11 02/06/2022
// Design Name:   myFullAdder
// Module Name:   C:/Youssef/Projects/Verilog Projects/Test/FullAdder_tb.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: myFullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullAdder_tb;
	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;
	// Outputs
	wire c_out;
	wire [3:0] sum;
	//Variables
	integer i;
	// Instantiate the Unit Under Test (UUT)
	myFullAdder uut (.a(a),.b(b),.c_in(c_in),.c_out(c_out), .sum(sum));
	initial begin  
      a <= 0;  
      b <= 0;  
      c_in <= 0;   
      $monitor ("a=%d  |  b=%d  |   carry_in=%d  |   sum=%d  |   carry_out=%d", a, b, c_in, sum,c_out);  
        // Use a for loop to apply random values to the input  
      for (i = 0; i < 5; i = i+1) begin  
         #10 
			a <= $random;  
         b <= $random;  
         c_in <= $random;  
      end  
   end  
endmodule

