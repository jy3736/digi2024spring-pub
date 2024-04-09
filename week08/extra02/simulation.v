`timescale 1ns/1ps
`include "top.v"

module fsm_circuit_tb;

reg clk;
reg reset;
reg x;
wire z;

// Instantiate the fsm_circuit
fsm_circuit uut (
    .clk(clk),
    .reset(reset),
    .x(x),
    .z(z)
);

// Clock generation
always #50 clk = ~clk; 

// Test sequence
initial begin
    // Initialize inputs
    clk = 0;
    reset = 1;
    x = 0;
    
    // Apply reset
    #100;
    reset = 0;
    @(posedge clk);
    
    repeat(100) begin
        @(negedge clk);
        x = {$random};
        @(posedge clk);
    end
    
    // End simulation
    #100;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b %b", $time, clk, reset, x, z);
end

endmodule
