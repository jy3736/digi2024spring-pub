## Implement a 1-bit Full Adder Using Half Adders

Implement a 1-bit full adder (`fadd`) in Verilog by utilizing two instances of a 1-bit half adder (`hadd`). The full adder should handle three inputs (two significant bits and one input carry) and produce a sum and an output carry. You are provided with the half adder source code and the declaration for the full adder module. Integrate additional logic as necessary to ensure correct functionality.

#### Half Adder Source (`hadd`):
```verilog
module hadd(
    input a,
    input b,
    output s,
    output c
);

assign s = a ^ b;
assign c = a & b;

endmodule
```

#### Full Adder Module Declaration (`fadd`):
```verilog
module fadd(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
// Implement the full adder using two hadd instances and additional logic
endmodule
```

**Deliverables**: Implement the `fadd` module in Verilog, ensuring it meets the functionality of a 1-bit full adder as described.