### Design of Quad Inverter Using 2-to-1 Multiplexers

Implement a circuit with four inputs (a, b, c, d) that produces four outputs (ab, bb, cb, db), where each output is the logical NOT of the corresponding input. This implementation should exclusively use 2-to-1 multiplexers (MUX) and constants 0 and 1, without employing any logical operators or direct inversion operations.

#### Provided: 2-to-1 MUX Module
A basic 2-to-1 MUX module is provided for the implementation:

```verilog
module mux2(
    input in0, input in1, input sel, 
    output out);

    assign out = sel ? in1 : in0;
endmodule
```

#### Design Task:
Utilizing the given 2-to-1 MUX, design a circuit named `quad_inverter` that inverts each of the four inputs (a, b, c, d) to produce four outputs (ab, bb, cb, db) respectively, where ab is the inverted a, bb is the inverted b, cb is the inverted c, and db is the inverted d.

```verilog
module quad_inverter(
    input a, b, c, d,
    output ab, bb, cb, db);

// add your code here

endmodule
```