## Positive Edge D Flip-Flop with Synchronous Reset

Design a Verilog module for a positive edge-triggered D flip-flop with a synchronous reset signal (`rst`). The reset is active high (`rst=1`). The D input (`d`) should be sampled on the positive edge of the clock (`clk`). Both the flip-flop's sampling behavior and reset functionality are synchronized with the clock signal.

**Verilog Module Declaration:**
```verilog
module dff_pe_sr(
    input wire clk,   // Clock input
    input wire rst,   // Synchronous reset input
    input wire d,     // Data input
    output reg q      // Output
);
```