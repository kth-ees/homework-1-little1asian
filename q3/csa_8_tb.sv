module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum,
  logic carry;

  // complete
  logic [3:0] sum_low, sum_high0, sum_high1;
  logic c_low, c_high0, c_high1;

  // Lower 4 bits adder
  adder_4 low_adder (
    .A(A[3:0]),
    .B(B[3:0]),
    .sum(sum_low),
    .carry(c_low)
  );

  // Upper 4 bits adder assuming carry_in = 0
  adder_4 high_adder0 (
    .A(A[7:4]),
    .B(B[7:4]),
    .sum(sum_high0),
    .carry(c_high0)
  );

  // Upper 4 bits adder assuming carry_in = 1
  adder_4 high_adder1 (
    .A(A[7:4]),
    .B(B[7:4]),
    .sum(sum_high1),
    .carry(c_high1)
  );

  // Select the correct sum and carry based on lower adder carry
  assign sum[3:0] = sum_low;
  assign sum[7:4] = c_low ? sum_high1 : sum_high0;
  assign carry = c_low ? c_high1 : c_high0;
  
endmodule
