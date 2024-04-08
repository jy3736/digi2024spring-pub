module fadd(
    input a, b, cin,
    output sum, cout);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

module rfadd5(input [4:0] a, b, input cin, output [4:0] s, output cout);

// add your code here

endmodule
