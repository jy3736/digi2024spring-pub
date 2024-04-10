`timescale 1ns / 1ps
`include "top.v"

module and3_tb;
reg a;
reg b;
reg c;
wire y;

wire [2:0] din;
assign din = {a, b, c};

and3 uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .y(y)
);

initial begin
    {a,b,c} = 0;
    repeat (100) begin
        #50;
        {a,b,c} = {$random};
    end
    
    #50;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time a b c y");
    $monitor("%8t %b %b", $time, din, y);
end

endmodule
