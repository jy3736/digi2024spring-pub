### Design a 3-input AND Gate Using 2-to-1 MUX

Implement a circuit with three inputs (a, b, c) that produces a single output (y), where the output is the logical AND of the three inputs. This implementation should exclusively use 2-to-1 multiplexers (MUX) and constants 0 and 1, without employing any logical operators or direct AND operations.

#### Provided: 2-to-1 MUX Module
Here is the basic 2-to-1 MUX module provided for the implementation:

```verilog
module mux2(input in0, input in1, input sel, output out);
    assign out = sel ? in1 : in0;
endmodule
```

#### Design Task:
Using the given 2-to-1 MUX, design a circuit named `three_input_and` that performs the AND operation on the three inputs (a, b, c) to produce a single output (y).

```verilog
module and3(
    input a, b, c,
    output y);

// Add your code here

endmodule
```