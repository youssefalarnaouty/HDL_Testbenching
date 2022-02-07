`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:25:27 02/07/2022 
// Design Name: 
// Module Name:    AND_Sens 
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
module AND_Sens(
    input a,
    input b,
    output reg c
    );
always @ (a,b)
 c<=a&b;

endmodule
