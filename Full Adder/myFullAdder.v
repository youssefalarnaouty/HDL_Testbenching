`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:20 02/06/2022 
// Design Name: 
// Module Name:    myFullAdder 
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
module myFullAdder(  input [3:0] a,  
                  input [3:0] b,  
                  input c_in,  
                  output c_out,  
                  output [3:0] sum);  
   assign {c_out, sum} = a + b + c_in;  
endmodule  