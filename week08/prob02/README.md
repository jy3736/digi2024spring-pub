## Negative Edge D Flip-Flop with Asynchronous Reset

Create a Verilog module for a negative edge-triggered D flip-flop with an asynchronous reset signal (`rst`) that activates when `rst` is high (`rst=1`). The D input (`d`) should be sampled on the negative edge of the clock (`clk`). The flip-flop should be synchronous to the clock and asynchronous to the reset signal. 

**Verilog Module Declaration:**
```verilog
module dff_ne_ar(
    input wire clk,   // Clock input
    input wire rst,   // Asynchronous reset input
    input wire d,     // Data input
    output reg q      // Output
);
```
