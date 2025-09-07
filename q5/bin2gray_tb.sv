module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

  bin2gray uut (
    .binary(binary),
    .gray(gray)
  );

  initial begin
    for (int i = 0; i < 16; i++) begin
      binary = i;
      #5; 
    end

    $finish;
  end
endmodule
