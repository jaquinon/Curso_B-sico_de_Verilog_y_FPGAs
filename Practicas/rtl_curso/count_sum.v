

module count_sum(input wire a, input wire b, output reg y);
    reg [7:0] count;
    integer sum;

    always @(posedge a or posedge b) begin
        count <= count + 1;
    end

    initial begin
        sum = 10 + 20;
    end
endmodule
