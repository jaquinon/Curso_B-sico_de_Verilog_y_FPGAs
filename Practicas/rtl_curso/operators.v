

module operators (input wire a, input wire b, output wire y);
    assign y = (a & b) | (~a);
endmodule
