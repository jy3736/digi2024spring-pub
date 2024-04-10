`timescale 1ns / 1ps
`include "top.v"

module tb_dual_edge_dff_ar;

reg clk;
reg rst;
reg d0;
reg d1;
wire q;

dual_edge_dff_ar uut(.clk(clk), .rst(rst), .d0(d0), .d1(d1), .q(q));

initial begin
    {clk, rst, d0, d1} = 0;
    #100;
        
    repeat(100) begin
        @(posedge clk);
        #5;
        {d0, d1} = $random;
        @(negedge clk);
        #5;
        {d0, d1} = $random;
    end
    
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time clk rst d0 d1 q");
    $monitor("%8t %b %b %b %b %b", $time, clk, rst, d0, d1, q);
end

always #50 clk = ~clk;

endmodule
