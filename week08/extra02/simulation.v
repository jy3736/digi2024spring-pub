`timescale 1ns/1ps
`include "top.v"

module fsm_circuit_tb;

reg clk;
reg reset;
reg x;
wire z;

fsm_circuit uut(.clk(clk), .reset(reset), .x(x), .z(z));

always #50 clk = ~clk; 

initial begin
    clk = 0;
    reset = 1;
    x = 0;

    #100;
    reset = 0;
    @(posedge clk);

    repeat(100) begin
        @(negedge clk);
        x = {$random};
        @(posedge clk);
    end

    #100;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time clk reset x z");
    $monitor("%8t %b %b %b %b", $time, clk, reset, x, z);
end

endmodule
