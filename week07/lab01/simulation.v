// Testbench for 1-bit Full Adder (fadd)
`timescale 1ns / 1ps
`include "top.v"

module fadd_tb;

reg a, b, cin;
wire s, cout;

// Instantiate the Unit Under Test (UUT)
fadd uut (
    .a(a), 
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin
    
    repeat (100) begin
        #50; 
        a = $random % 2;
        b = $random % 2; 
        cin = $random % 2; 
    end
    
    #50;
    $finish; 
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b  %b %b", $time, a, b, cin, cout, s);
end

endmodule
