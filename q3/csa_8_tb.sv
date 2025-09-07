module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum,
  logic carry;

  // complete
   CSA_8 uut (
    .A(a),
    .B(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    for (int i = 0; i < 10; i++) begin
      a = $urandom_range(0,255);
      b = $urandom_range(0,255);
      #5;
    end

    $finish;
  end
  
endmodule
