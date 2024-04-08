`include "top.v"

module comb01_tb;

  // Inputs for the comb01 module
  reg a;
  reg b;

  // Outputs from the comb01 module
  wire not_a;
  wire not_b;
  wire and_ab;
  wire or_ab;
  wire xor_ab;
  wire nand_ab;
  wire nor_ab;
  wire xnor_ab;

  // Instantiate the Unit Under Test (UUT)
  comb01 uut (
    .a(a), 
    .b(b), 
    .not_a(not_a),
    .not_b(not_b),
    .and_ab(and_ab),
    .or_ab(or_ab),
    .xor_ab(xor_ab),
    .nand_ab(nand_ab),
    .nor_ab(nor_ab),
    .xnor_ab(xnor_ab)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, comb01_tb);    
    $monitor("%8t, %b, %b, %b, %b, %b, %b, %b, %b, %b, %b", $time, a, b, not_a, not_b, and_ab, or_ab, xor_ab, nand_ab, nor_ab, xnor_ab);
    // Initial values
    a = 0; b = 0;
    #100;

    // Generate 100 random tests
    repeat(100) begin
        a = $random % 2; // Generates a random value 0 or 1
        b = $random % 2; // Generates a random value 0 or 1
        #100; // Delay to observe the changes
    end
    $finish; 
  end

endmodule
