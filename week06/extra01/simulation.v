`include "top.v"

`timescale 1ns / 1ps
module filter_logic_tb;

reg a, b, c, d, e, f;
wire x, y, z;


filter_logic uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d),
    .e(e),
    .f(f),
    .x(x), 
    .y(y),
    .z(z)
);

initial begin
    
    a = 0; b = 0; c = 0; d = 0; e = 0; f = 0;

    
    $dumpfile("wave.vcd");
    $dumpvars();
    $monitor("%8t %b %b %b %b %b %b  %b %b %b", $time, a, b, c, d, e, f, x, y, z);

    
    repeat (100) begin
        #50; 
        a = $random % 2;
        b = $random % 2;
        c = $random % 2;
        d = $random % 2;
        e = $random % 2;
        f = $random % 2;
        #50; 
    end
    
    #10; 
    $finish; 
end

endmodule
