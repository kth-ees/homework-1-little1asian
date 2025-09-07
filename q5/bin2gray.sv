module bin2gray (
  input logic [3:0] binary,
  output logic [3:0] gray
);
  always_comb begin
    case (binary)
      4'b0000: gray = 4'b0000;
      4'b0001: gray = 4'b0001;
      4'b0010: gray = 4'b0011;
      4'b0011: gray = 4'b0010;
      4'b0100: gray = 4'b0110;
      4'b0101: gray = 4'b0111;
      4'b0110: gray = 4'b0101;
      4'b0111: gray = 4'b0100;
      4'b1000: gray = 4'b1100;
      4'b1001: gray = 4'b1101;
      4'b1010: gray = 4'b1111;
      4'b1011: gray = 4'b1110;
      4'b1100: gray = 4'b1010;
      4'b1101: gray = 4'b1011;
      4'b1110: gray = 4'b1001;
      4'b1111: gray = 4'b1000;
      default: gray = 4'b0000;
    endcase
  end
endmodule
