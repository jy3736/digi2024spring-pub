## Implement a Circuit Based on a Given Truth Table

Design a Verilog module in a file named `top.v` that implements a circuit described by a specific truth table. The circuit should have three inputs (`a`, `b`, `c`) and two outputs (`x`, `y`). Use an `always` block to define the logic for outputs `x` and `y` based on the given truth table.

### Specifications:
- **Module Interface:**
```verilog
module top(
    input a,
    input b,
    input c,
    output reg x,
    output reg y
);
```

### Requirements:
- **Inputs:** Single-bit inputs `a`, `b`, and `c`.
- **Outputs:** Single-bit outputs `x` and `y`.
- The behavior of the outputs `x` and `y` is defined by the following truth table:

| a | b | c | x | y |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 1 | 1 |
| 1 | 1 | 1 | 0 | 0 |

### Implementation:
- Develop the module logic within an `always @(*)` block, accounting for all combinations of inputs as specified in the truth table.
- Ensure all code is contained within `top.v`.
