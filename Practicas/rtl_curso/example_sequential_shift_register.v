module example_sequential_shift_register(input wire clk, input wire reset, input wire [7:0] data_in, output reg [7:0] data_out);

always @(posedge clk or posedge reset) begin
    if (reset)
        data_out <= 8'b00000000;
    else
        data_out <= {data_out[6:0], data_in[0]};
end

endmodule
