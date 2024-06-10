


module ripple_carry_adder(input wire [3:0] A, input wire [3:0] B, output reg [3:0] Sum, output reg Cout);
    wire [3:0] carry;
    
    full_adder FA0(A[0], B[0], 1'b0, Sum[0], carry[0]);
    full_adder FA1(A[1], B[1], carry[0], Sum[1], carry[1]);
    full_adder FA2(A[2], B[2], carry[1], Sum[2], carry[2]);
    full_adder FA3(A[3], B[3], carry[2], Sum[3], Cout);
endmodule
