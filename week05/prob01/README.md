## Design of a 4-Input Combinational Logic Module

### Objective:
Design a `comb_logic` Verilog module stored in a file named `top.v`. This module should accept four input bits `a`, `b`, `c`, and `d`, and produce two outputs `x` and `y` based on specified logic derived from a truth table.

### Specifications:
- **Module Interface:**
```verilog
module comb_logic(
    input a,
    input b,
    input c,
    input d,
    output reg x,
    output reg y
);
```

### Requirements:
- **Inputs:** Four single-bit inputs `a`, `b`, `c`, and `d`.
- **Outputs:** Two single-bit outputs `x` and `y`.

### Logic Specification (Truth Table):

| a | b | c | d |   x   |   y   |
|---|---|---|---|-------|-------|
| 0 | 0 | 0 | 0 |   0   |   0   |
| 0 | 0 | 0 | 1 |   0   |   1   |
| 0 | 0 | 1 | 0 |   1   |   0   |
| 0 | 0 | 1 | 1 |   1   |   1   |
| 0 | 1 | 0 | 0 |   0   |   1   |
| 0 | 1 | 0 | 1 |   1   |   0   |
| 0 | 1 | 1 | 0 |   1   |   1   |
| 0 | 1 | 1 | 1 |   0   |   0   |
| 1 | 0 | 0 | 0 |   1   |   1   |
| 1 | 0 | 0 | 1 |   0   |   0   |
| 1 | 0 | 1 | 0 |   0   |   1   |
| 1 | 0 | 1 | 1 |   1   |   0   |
| 1 | 1 | 0 | 0 |   1   |   0   |
| 1 | 1 | 0 | 1 |   0   |   1   |
| 1 | 1 | 1 | 0 |   0   |   0   |
| 1 | 1 | 1 | 1 |   1   |   1   |

### Implementation:
- Develop the module logic by analyzing the truth table.
- Use conditional statements or a case statement within an `always` block to implement the logic.
- Ensure all code is in `top.v`.

### Deliverable:
Submit the `top.v` file, ensuring your implementation correctly reflects the logic defined in the truth table and is well-commented to explain the reasoning.