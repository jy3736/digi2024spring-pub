module mux2(
    input in0, input in1, input sel, 
    output out);

    assign out = sel ? in1 : in0;
endmodule

module quad_inverter(
    input a, b, c, d,
    output ab, bb, cb, db);

// ======================
// = add your code here =
// ======================
        
endmodule
