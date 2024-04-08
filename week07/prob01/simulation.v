`timescale 1ns / 1ps
`include "top.v"

module hadd_tb;

reg a;
reg b;
wire sum;
wire co;

hadd uut (
    .a(a), 
    .b(b), 
    .sum(sum), 
    .co(co)
);

initial begin
    {a,b} = 0;
    repeat (100) begin
        #50 
        a = $random % 2;
        b = $random % 2;
    end

    #50 $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b   %b %b", $time, a, b, co, sum);
end

endmodule
