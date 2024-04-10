`timescale 1ns / 1ps
`include "top.v"


module dff_pe_sr_tb;

reg clk, rst, d;
wire q;

dff_pe_sr DUT (.clk(clk), .rst(rst), .d(d), .q(q));

initial begin
    {clk, rst, d} = 3'b0;
    #100; 
    rst = 1;
    @(negedge clk);
    rst = 0;
    @(posedge clk);

    repeat(100) begin
        @(negedge clk);
        d = $random;
        @(posedge clk);
    end

    #50
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time clk rst d q");
    $monitor("%8t %b %b %b %b", $time, clk, rst, d, q);
end

always #50 clk = ~clk;

endmodule
