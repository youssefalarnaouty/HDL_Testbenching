`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:37 02/06/2022 
// Design Name: 
// Module Name:    mycounter 
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
module mycounter(
    input clk,
    output [3:0] qd
    );
// reg to hold the counting value intialized to zero
reg [3:0] cnt = 0;
assign qd = cnt;
always@(posedge clk)
	begin
			cnt <= (cnt +1);
	end
endmodule
