`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2023 03:38:38 PM
// Design Name: 
// Module Name: FA_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA_TB( );
reg  a;
reg  b;
reg cin;
wire s;
wire cout;

FA DUT(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
initial 
begin
#30 a=1'b0;b=1'b0;cin=1'b1;

#30 a=1'b1;b=1'b1;cin=1'b1;

#30 a=1'b0; b=1'b1;cin=1'b0;
#100 $finish;
end
endmodule
