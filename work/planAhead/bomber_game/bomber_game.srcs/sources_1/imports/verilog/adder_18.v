/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_18 (
    input [1:0] alufn,
    input [7:0] a_adder,
    input [7:0] b_adder,
    output reg z_adder,
    output reg v_adder,
    output reg n_adder,
    output reg [7:0] adder_out
  );
  
  
  
  reg [7:0] out;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        out = a_adder + b_adder;
      end
      2'h2: begin
        out = a_adder * b_adder;
      end
      2'h1: begin
        out = a_adder - b_adder;
      end
      2'h3: begin
        if (b_adder == 8'h00) begin
          out = a_adder;
        end else begin
          out = a_adder - (a_adder / b_adder) * b_adder;
        end
      end
      default: begin
        out = a_adder + b_adder;
      end
    endcase
    z_adder = (~|out);
    v_adder = (a_adder[7+0-:1] & (alufn[0+0-:1] ^ b_adder[7+0-:1]) & ~out[7+0-:1]) | (~a_adder[7+0-:1] & (alufn[0+0-:1] ^ ~b_adder[7+0-:1]) & out[7+0-:1]);
    n_adder = out[7+0-:1];
    adder_out = out;
  end
endmodule