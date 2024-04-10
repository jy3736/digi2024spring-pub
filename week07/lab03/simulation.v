`timescale 1ns / 1ps
`include "top.v"

module quad_inverter_tb;

reg a, b, c, d;
wire ab, bb, cb, db;

wire [3:0] abcd, st;

assign abcd = {a, b, c, d};
assign st = {ab, bb, cb, db};

quad_inverter uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .ab(ab), 
    .bb(bb), 
    .cb(cb), 
    .db(db)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time a b c d ab bb cb db");
    $monitor("%8t %b %b", $time, abcd, st);
end
initial begin
    {a, b, c, d} = 4'b0000;
    #100;

    repeat (100) begin
        {a, b, c, d} = {$random};
        #50;
    end

    #50;
    $finish;
end


endmodule
