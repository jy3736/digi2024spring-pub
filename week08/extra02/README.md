# FSM Implementation

Construct the Finite State Machine as depicted in the provided diagram.

<img src="fsm.png" alt="Shift Register" width="400">
<p>Source: <a href="https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q4">HDLBits</a></p>

**DFF Module**
```verilog
module DFF(
    input clk,
    input reset,
    input d,
    output reg q,
    output q_bar
);

assign q_bar = ~q;

always @(posedge clk) begin
    if (reset) begin
        q <= 1'b0;
    end else begin
        q <= d;
    end
end
```

**fsm_circuit Declaration**
```verilog
module fsm_circuit(
    input wire clk,    // Clock input
    input wire reset,  // Asynchronous reset input
    input wire x,      // Input 'x'
    output wire z      // Output 'z'
);

// Internal logic and DFF instances will be defined here.

endmodule
```

