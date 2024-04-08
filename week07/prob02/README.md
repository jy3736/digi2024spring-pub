### Design a 5-Bit Ripple Carry Adder Using 1-Bit Full Adders

Implement a 5-bit ripple carry adder circuit with two 5-bit inputs (`a[4:0]`, `b[4:0]`) and a single input carry (`cin`) that produces a 5-bit sum (`s[4:0]`) and a carry out (`cout`). This implementation should exclusively use the provided 1-bit full adder (`fadd`) modules, without employing any direct logical operators or arithmetic operations outside of those encapsulated within the `fadd`.

#### Provided: 1-Bit Full Adder (`fadd`) Module
Here is the basic 1-bit full adder module provided for the implementation:

```verilog
module fadd(
    input a, b, cin,
    output sum, cout);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
```

#### Design Task:
Using the given 1-bit full adder (`fadd`), design a circuit named `rfadd5` that constructs a 5-bit ripple carry adder. The circuit should take two 5-bit numbers (`a[4:0]`, `b[4:0]`) and a carry-in (`cin`) to produce a 5-bit sum (`s[4:0]`) and a carry-out (`cout`).

```verilog
module rfadd5(
    input [4:0] a, b,
    input cin,
    output [4:0] s,
    output cout);

// Add your code here

endmodule
```

This task requires careful chaining of `fadd` modules, managing the carry-out from one stage as the carry-in to the next, to correctly implement a 5-bit addition operation.