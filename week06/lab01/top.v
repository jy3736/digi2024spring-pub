module comb01(
    input a,
    input b,
    output reg not_a,
    output reg not_b,
    output reg and_ab,
    output reg or_ab,
    output reg xor_ab,
    output reg nand_ab,
    output reg nor_ab,
    output reg xnor_ab
);

// Implementing the logic operations
always @(*) begin
    not_a = ~a;               // Logical NOT of a
    not_b = ~b;               // Logical NOT of b
    and_ab = a & b;           // Logical AND of a and b
    or_ab = a | b;            // Logical OR of a and b
    xor_ab = a ^ b;           // Logical XOR of a and b
    nand_ab = ~(a & b);       // Logical NAND of a and b
    nor_ab = ~(a | b);        // Logical NOR of a and b
    xnor_ab = ~(a ^ b);       // Logical XNOR of a and b
end

endmodule
