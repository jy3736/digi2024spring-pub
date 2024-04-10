`timescale 1ns / 1ps
`include "top.v"

module tb_shift_register;

    reg clk;
    reg rst;
    reg L;
    reg r0;
    reg r1;
    reg r2;

    wire Q0;
    wire Q1;
    wire Q2;

    shift_register uut (.clk(clk), .rst(rst), .L(L), 
                        .r0(r0), .r1(r1), .r2(r2), 
                        .Q0(Q0), .Q1(Q1), .Q2(Q2));

    initial begin
        clk = 0;
        forever #50 clk = ~clk; 
    end

    initial begin
        rst = 1;
        {L, r0, r1, r2} = 0;
        #100;
        rst = 0;
        @(posedge clk);

        repeat(100) begin
            @(negedge clk);
            {L, r0, r1, r2} = {$random};
            @(posedge clk);
        end
        
        #50;
        $finish;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars();
        $display("Time clk rst L r0 r1 r2 Q0 Q1 Q2");
        $monitor("%8t %b %b %b %b%b%b %b%b%b", $time, clk, rst, L, r0, r1, r2, Q0, Q1, Q2);
    end
      
endmodule
