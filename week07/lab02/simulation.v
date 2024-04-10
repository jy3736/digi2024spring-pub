`timescale 1ns / 1ps
`include "top.v"

module fadd_tb;

reg a, b, cin;
wire s, cout;

wire [2:0] din;
assign din = {a, b, cin};

wire [1:0] st;
assign st = {cout, s};

fadd uut (
    .a(a), 
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time a b cin  cout s");
    $monitor("%8t %b %b", $time, din, st);
end

initial begin
    {a, b, cin} = 3'b0;
    #100;

    repeat (100) begin
       {a,b,cin} = {$random};
        #50; 
    end
    
    #50;
    $finish; 
end

endmodule
