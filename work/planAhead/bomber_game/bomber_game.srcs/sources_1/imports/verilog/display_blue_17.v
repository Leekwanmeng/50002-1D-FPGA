/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module display_blue_17 (
    input clk,
    input rst,
    input [63:0] blue,
    output reg [7:0] r_blue,
    output reg [7:0] c_blue
  );
  
  
  
  localparam FLIP = 5'h10;
  
  wire [3-1:0] M_counter_r_value;
  counter_27 counter_r (
    .clk(clk),
    .rst(rst),
    .value(M_counter_r_value)
  );
  
  reg [4:0] whichrow;
  
  integer i;
  
  always @* begin
    r_blue = 8'hff;
    c_blue = 8'hff;
    whichrow = M_counter_r_value;
    r_blue[(whichrow)*1+0-:1] = 1'h0;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      c_blue[(i)*1+0-:1] = blue[(whichrow)*8+(i)*1+0-:1];
    end
  end
endmodule