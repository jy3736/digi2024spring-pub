`include "top.v"

`timescale 1ns / 1ps
module filter_logic_tb;

reg a, b, c, d, e, f;
wire x, y, z;

// Instantiate the Unit Under Test (UUT)
filter_logic uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d),
    .e(e),
    .f(f),
    .x(x), 
    .y(y),
    .z(z)
);

initial begin
    // Initialize Inputs
    a = 0; b = 0; c = 0; d = 0; e = 0; f = 0;

    // Setup the waveform dump
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b %b %b %b  %b %b %b", $time, a, b, c, d, e, f, x, y, z);

    // Generate 100 random test cases
    repeat (100) begin
        #50; 
        a = $random % 2;
        b = $random % 2;
        c = $random % 2;
        d = $random % 2;
        e = $random % 2;
        f = $random % 2;
        #50; 
    end
    
    #10; // Wait for the last test case to be evaluated
    $finish; // End simulation
end

endmodule
