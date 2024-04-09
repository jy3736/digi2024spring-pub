## Problem: Design of a 6-Input Filter Module

### Objective:
Design a `filter_logic` Verilog module stored in a file named `top.v`. This module should accept six input bits `a`, `b`, `c`, `d`, `e`, and `f`, and produce three outputs `x`, `y`, and `z` based on three sets of specified random logic rules.

### Specifications:
- **Module Interface:**
```verilog
module filter_logic(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    output reg x,
    output reg y,
    output reg z
);
```

### Requirements:
- **Inputs:** Six single-bit inputs `a`, `b`, `c`, `d`, `e`, and `f`.
- **Outputs:** Three single-bit outputs `x`, `y`, and `z`.

### Logic Rules:

1. **Rule for Output `x`:** Output `x` should be high if the majority of inputs `a`, `b`, and `c` are high.
2. **Rule for Output `y`:** Output `y` should be high if there is an even number of `1`s among inputs `d`, `e`, and `f`.
3. **Rule for Output `z`:** Output `z` should be high if inputs `a` and `b` are different, or if both `e` and `f` are high.

### Implementation Guidance:
- Implement the logic rules within an `always` block, triggered by any change in the inputs.
- Consider using conditional (`if-else`) statements or `case` statements to simplify the logic implementation.
- Ensure all code is in `top.v`.

### Deliverable:
Submit the `top.v` file, ensuring your implementation correctly reflects the specified logic rules and is well-commented to explain the logic behind each rule.
