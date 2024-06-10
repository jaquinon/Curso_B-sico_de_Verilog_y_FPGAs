module example_sequential_flipflop_jk(input wire clk, input wire reset, input wire j, input wire k, output reg q);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 1'b0;
    else if (j & ~k)
        q <= 1'b1;
    else if (~j & k)
        q <= 1'b0;
    else if (j & k)
        q <= ~q;
end

endmodule
