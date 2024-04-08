`timescale 1ns / 1ps
`include "top.v"

module and3_tb;
reg a;
reg b;
reg c;
wire y;

and3 uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .y(y)
);

initial begin
    a = 0;
    b = 0;
    c = 0;
    repeat (100) begin
        #50;
        a = $random % 2;
        b = $random % 2;
        c = $random % 2;
    end
    #50 $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b  %b", $time, a, b, c, y);
end

endmodule
