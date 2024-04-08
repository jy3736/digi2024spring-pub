`timescale 1ns / 1ps
`include "top.v"

module rfadd5_tb;

reg [4:0] a, b;
reg cin;
wire [4:0] s;
wire cout;

rfadd5 uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
    repeat (100) begin
        #50;
        a = $random % 32;
        b = $random % 32;
        cin = $random % 2;
    end

    #50 $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b  %b %b", $time, a, b, cin, cout, s);
end

endmodule
