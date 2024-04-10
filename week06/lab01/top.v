module comb01(
    input a,
    input b,
    output reg not_a,
    output reg not_b,
    output reg and_ab,
    output reg or_ab,
    output reg xor_ab,
    output reg nand_ab,
    output reg nor_ab,
    output reg xnor_ab
);


always @(*) begin
    not_a = ~a;               
    not_b = ~b;               
    and_ab = a & b;           
    or_ab = a | b;            
    xor_ab = a ^ b;           
    nand_ab = ~(a & b);       
    nor_ab = ~(a | b);        
    xnor_ab = ~(a ^ b);       
end

endmodule
