`timescale 1ns / 1ps
`include "top.v"

module quad_inverter_tb;

    // Inputs
    reg a, b, c, d;

    // Outputs
    wire ab, bb, cb, db;

    // Instantiate the Unit Under Test (UUT)
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
        // Initialize Inputs
        a = 0; b = 0; c = 0; d = 0;

        // Apply random tests
        repeat (100) begin
            #50;
            a = $random % 2;
            b = $random % 2;
            c = $random % 2;
            d = $random % 2;
         end

        // End simulation after the tests
        #50;
        $finish;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars();
        $monitor("%8t %b %b %b %b  %b %b %b %b", $time, a, b, c, d, ab, bb, cb, db);
    end

endmodule
