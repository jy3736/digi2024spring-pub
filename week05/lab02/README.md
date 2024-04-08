## Decoder Module Design

### Objective:
Design a `decode` Verilog module in a file named `top.v`. This module should accept a 4-bit vector `din` and output signals `odd`, `even`, and `zero`, using an `always` block for logic.

### Specifications:
- **Module Interface:**
```verilog
module decode(
    input [3:0] din,
    output reg odd,
    output reg even,
    output reg zero
);
```

### Requirements:
- **Input (`din`):** 4-bit vector.
- **Outputs:**
  - `odd`: High if `din` has an odd number of `1`s.
  - `even`: High if `din` has an even number of `1`s, including zero.
  - `zero`: High if `din` equals `4'b0000`.

### Implementation:
- Develop the module logic within an `always` block.
- Ensure all code is in `top.v`.

### Deliverable:
Submit the `top.v` file, ensuring your implementation is well-commented to explain the logic.