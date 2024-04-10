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

endmodule

module fsm_circuit(
    input wire clk,
    input wire reset,
    input wire x,
    output wire z
);

// ======================
// = add your code here =
// ======================

endmodule
