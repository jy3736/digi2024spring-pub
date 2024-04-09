`timescale 1ns / 1ps
`include "top.v"

module tb_dual_edge_dff_ar;

reg clk;
reg rst;
reg d0;
reg d1;
wire q;

// Instantiate the Unit Under Test (UUT)
dual_edge_dff_ar uut (
    .clk(clk), 
    .rst(rst), 
    .d0(d0), 
    .d1(d1), 
    .q(q)
);

initial begin
    // Initialize Inputs
    clk = 0;
    rst = 0;
    d0 = 0;
    d1 = 0;

    // Wait 100 ns for global reset to finish
    #100;
        
    repeat(100) begin
        @(posedge clk);
        {d0, d1} = $random;
        @(negedge clk);
    end
    
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b %b %b", $time, clk, rst, d0, d1, q);
end

always #50 clk = ~clk;

endmodule
