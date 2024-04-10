`timescale 1ns / 1ps
`include "top.v"

module tb_top();
reg a, b, c;
wire x, y;

wire [2:0] abc;
assign abc = {a, b, c};

wire [1:0] st;
assign st = {x, y};

top uut(
    .a(a), 
    .b(b), 
    .c(c), 
    .x(x), 
    .y(y)
);

initial begin
    $dumpfile("top.vcd");
    $dumpvars();
    $display("Time a b c x y");
    $monitor("%8t %b %b", $time, abc, st);
end

initial begin
    {a,b,c} = 0;
    #100;

    repeat(100) begin
        {a,b,c} = $urandom_range(0, 7);
        #50;
    end
    
    #100;
    $finish;
end

endmodule
