`timescale 1ns / 1ps
`include "top.v"


module neg_edge_d_ff_async_reset_tb;

reg clk, rst, d;
wire q;

dff_ne_ar DUT (
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
        @(posedge clk);
        d = $random;
        @(negedge clk);
        #10;
        // Check if q is equal to d
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
