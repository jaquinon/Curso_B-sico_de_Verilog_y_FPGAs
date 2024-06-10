module example_case(input wire [1:0] sel, input wire [7:0] a, input wire [7:0] b, output reg [7:0] out);

always @* begin
    case (sel)
        2'b00: out = a + b;
        2'b01: out = a - b;
        2'b10: out = a * b;
        2'b11: out = a / b;
        default: out = 8'b00000000;
    endcase
end
endmodule
