`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:38:15 02/07/2022 
// Design Name: 
// Module Name:    mux_sel 
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
module mux_sel(
    input [3:0] in1,
    input [3:0] in2,
    input [3:0] in3,
    input [3:0] in4,
    input [1:0] sel,
    output reg [3:0] out
    );
always @ (in1,in2,in3,in4,sel)
case (sel)
			0: out <= in1;
			1: out <= in2;
			2: out <= in3;
			3: out <= in4;
			default: out <= 4'bz;
endcase
endmodule
