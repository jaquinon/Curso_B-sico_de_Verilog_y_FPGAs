module example_sentence_control(input wire clk, input wire rst, input wire [7:0] data_in, output reg [7:0] data_out);

reg [7:0] reg_data;

always @(posedge clk or posedge rst) begin
    if (rst)
        reg_data <= 8'b00000000;
    else
        reg_data <= data_in;
end

initial begin
    reg_data = 8'b00000000;
end

endmodule
