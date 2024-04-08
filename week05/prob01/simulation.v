`include "top.v"

`timescale 1ns / 1ps
module comb_logic_tb;

reg a, b, c, d;
wire x, y;

// Instantiate the Unit Under Test (UUT)
comb_logic uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .x(x), 
    .y(y)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();    
    $monitor("%8t %b %b %b %b  %b %b", $time, a, b, c, d, x, y);    
    // Initialize Inputs
    a = 0; b = 0; c = 0; d = 0;

    // Generate 100 random test cases
    repeat (100) begin
        #50;
        a = $random % 2;
        b = $random % 2;
        c = $random % 2;
        d = $random % 2;
    end
    
    #50; // Wait for last test case to be evaluated
    $finish; // End simulation
end

endmodule
