`timescale 1ns / 1ps
`include "top.v"

module hadd_tb;

reg a,b;
wire co, sum;

wire [1:0] din, st;
assign din = {a,b};
assign st = {co,sum};

hadd uut (
    .a(a), 
    .b(b), 
    .sum(sum), 
    .co(co)
);

initial begin
    {a,b} = 0;
    repeat (100) begin
        {a,b}={$random};
        #50;
    end

    #50;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time a b co sum");
    $monitor("%8t %b %b", $time, din, st);
end

endmodule
