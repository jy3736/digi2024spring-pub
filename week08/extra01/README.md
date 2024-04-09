## Dual Edge D Flip-Flop with Asynchronous Reset

Design a Verilog module for a dual-edge D flip-flop that captures the first input (`d0`) on the positive edge and the second input (`d1`) on the negative edge of the clock (`clk`). It should also include an asynchronous reset signal (`rst`) that resets both outputs when high (`rst=1`). The flip-flop operations for `d0` and `d1` are synchronized with their respective clock edges, while the reset functionality is independent of the clock.

**Verilog Module Declaration:**
```verilog
module dual_edge_dff_ar(
    input wire clk,   // Clock input
    input wire rst,   // Asynchronous reset input
    input wire d0,    // First data input (positive edge)
    input wire d1,    // Second data input (negative edge)
    output reg q,    // Output for d
);
```