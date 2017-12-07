/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_21 (
    input [7:0] a,
    input [7:0] b,
    input [3:0] alufn,
    output reg [7:0] boolean
  );
  
  
  
  always @* begin
    boolean = a;
    if (alufn[3+0-:1] == 1'h1 & alufn[2+0-:1] == 1'h0 & alufn[1+0-:1] == 1'h0 & alufn[0+0-:1] == 1'h0) begin
      boolean = a & b;
    end
    if (alufn[3+0-:1] == 1'h1 & alufn[2+0-:1] == 1'h1 & alufn[1+0-:1] == 1'h1 & alufn[0+0-:1] == 1'h0) begin
      boolean = a | b;
    end
    if (alufn[3+0-:1] == 1'h0 & alufn[2+0-:1] == 1'h1 & alufn[1+0-:1] == 1'h1 & alufn[0+0-:1] == 1'h0) begin
      boolean = a ^ b;
    end
    if (alufn[3+0-:1] == 1'h0 & alufn[2+0-:1] == 1'h1 & alufn[1+0-:1] == 1'h1 & alufn[0+0-:1] == 1'h1) begin
      boolean = ~(a & b);
    end
    if (alufn[3+0-:1] == 1'h0 & alufn[2+0-:1] == 1'h0 & alufn[1+0-:1] == 1'h0 & alufn[0+0-:1] == 1'h1) begin
      boolean = ~(a | b);
    end
    if (alufn[3+0-:1] == 1'h1 & alufn[2+0-:1] == 1'h0 & alufn[1+0-:1] == 1'h0 & alufn[0+0-:1] == 1'h1) begin
      boolean = ~(a ^ b);
    end
    if (alufn[3+0-:1] == 1'h1 & alufn[2+0-:1] == 1'h0 & alufn[1+0-:1] == 1'h1 & alufn[0+0-:1] == 1'h0) begin
      boolean = a;
    end
    if (alufn[3+0-:1] == 1'h0 & alufn[2+0-:1] == 1'h1 & alufn[1+0-:1] == 1'h0 & alufn[0+0-:1] == 1'h1) begin
      boolean = ~a;
    end
    if (alufn[3+0-:1] == 1'h0 & alufn[2+0-:1] == 1'h0 & alufn[1+0-:1] == 1'h1 & alufn[0+0-:1] == 1'h1) begin
      boolean = ~b;
    end
  end
endmodule