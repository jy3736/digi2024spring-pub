// 1-bit Half Adder (hadd), DO NOT MODIFY hadd module
// ---------------------------------------------------
module hadd(
    input a,
    input b,
    output s,
    output c
);

assign s = a ^ b;
assign c = a & b;

endmodule
// ---------------------------------------------------


// 1-bit Full Adder using 1-bit Half Adders (fadd)
module fadd(
    input a,
    input b,
    input cin,
    output s,
    output cout
);

wire s1, c1, c2;

// First half adder to add a and b
hadd ha1(
    .a(a),
    .b(b),
    .s(s1),
    .c(c1)
);

// Second half adder to add sum of first adder and carry in
hadd ha2(
    .a(s1),
    .b(cin),
    .s(s),
    .c(c2)
);

// Carry out is OR of both carries
assign cout = c1 | c2;

endmodule
