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

// add your code here

endmodule
