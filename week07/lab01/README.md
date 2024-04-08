## Construct a 1-bit Full Adder Using Half Adders

Design a 1-bit full adder, named `fadd`, utilizing two instances of a 1-bit half adder module, named `hadd`, to add two binary digits along with a carry input.

### 1-bit Half Adder Source (`hadd`):
```verilog
// 1-bit Half Adder (hadd)
module hadd(
    input a,
    input b,
    output s,
    output c
);

assign s = a ^ b; // Sum is XOR of inputs
assign c = a & b; // Carry is AND of inputs

endmodule
```

### Task:
- **Implement `fadd`**: Use two `hadd` modules and additional logic to create a 1-bit full adder that computes the sum of two bits and a carry input.

### Specifications for `fadd`:
```verilog
// 1-bit Full Adder (fadd) using Half Adders
module fadd(
    input a,
    input b,
    input cin, // Carry input
    output s,  // Sum output
    output cout // Carry output
);
```

### Implementation Details:
- Your design should properly handle the carry propagation between the two half adders.
- Ensure that the output `s` represents the correct sum and `cout` is the correct carry output based on the inputs and carry in.
