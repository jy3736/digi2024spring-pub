### Design a Half Adder Using 2-to-1 MUX

Implement a half adder circuit that takes two binary inputs (a and b) to produce a sum (S) and a carry (C) output. This implementation should exclusively use 2-to-1 multiplexers (MUX) and constants 0 and 1, without employing any direct logical operators or arithmetic operations.

#### Provided: 2-to-1 MUX Module
Here is the basic 2-to-1 MUX module provided for the implementation:

```verilog
module mux2(input in0, input in1, input sel, output out);
    assign out = sel ? in1 : in0;
endmodule
```

#### Design Task:
Using the given 2-to-1 MUX, design a circuit named `hadd` that calculates the sum (S) and carry (C) based on the inputs (a and b).

```verilog
module hadd(
    input a, b,
    output S, C);

// Add your code here

endmodule
```