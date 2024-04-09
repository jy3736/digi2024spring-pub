`timescale 1ns / 1ps
`include "top.v"


module dff_pe_sr_tb;

reg clk, rst, d;
wire q;

dff_pe_sr DUT (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    rst = 0;
    d = 0;

    #100; 
    rst = 1;
    #100; 
    rst = 0;

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
    $monitor("%8t %b %b %b %b", $time, clk, rst, d, q);
end

always #50 clk = ~clk;

endmodule
