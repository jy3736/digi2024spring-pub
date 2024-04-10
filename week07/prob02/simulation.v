`timescale 1ns / 1ps
`include "top.v"

module rfadd5_tb;

reg [4:0] a, b;
reg cin;
wire [4:0] s;
wire cout;

rfadd5 uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
    {a,b,cin} = 0;
    #100;

    repeat (100) begin
        {a,b,cin} = {$random};
        #50;
    end

    #50;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time a[4:0] b[4:0] cin cout s[4:0]");
    $monitor("%8t %b %b %b  %b %b", $time, a, b, cin, cout, s);
end

endmodule
