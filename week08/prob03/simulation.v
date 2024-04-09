`timescale 1ns / 1ps
`include "top.v"

module tb_shift_register;

    // Inputs
    reg clk;
    reg rst;
    reg L;
    reg r0;
    reg r1;
    reg r2;

    // Outputs
    wire Q0;
    wire Q1;
    wire Q2;

    // Instantiate the Unit Under Test (UUT)
    shift_register uut (
        .clk(clk), 
        .rst(rst), 
        .L(L), 
        .r0(r0), 
        .r1(r1), 
        .r2(r2), 
        .Q0(Q0), 
        .Q1(Q1), 
        .Q2(Q2)
    );

    // Clock process
    initial begin
        clk = 0;
        forever #50 clk = ~clk; 
    end

    initial begin
        rst = 1;
        L = 0;
        r0 = 0;
        r1 = 0;
        r2 = 0;

        #100;
        rst = 0;

        repeat(100) begin
            @(negedge clk);
            L = $random % 2;
            r0 = $random % 2;
            r1 = $random % 2;
            r2 = $random % 2;
            @(posedge clk);
        end
        
        $finish;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars();
        $monitor("%8t %b %b %b %b %b %b %b %b %b", $time, clk, rst, L, r0, r1, r2, Q0, Q1, Q2);
    end
      
endmodule
