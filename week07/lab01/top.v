
module cl3_2(
    input a,
    input b,
    input c,
    output reg x,
    output reg y
);

always @(*) begin
    case ({a, b, c})
        3'b000: {x, y} = 2'b00;
        3'b001: {x, y} = 2'b01;
        3'b010: {x, y} = 2'b10;
        3'b011: {x, y} = 2'b11;
        3'b100: {x, y} = 2'b01;
        3'b101: {x, y} = 2'b10;
        3'b110: {x, y} = 2'b11;
        3'b111: {x, y} = 2'b00;
        default: {x, y} = 2'b00; 
    endcase
end

endmodule
