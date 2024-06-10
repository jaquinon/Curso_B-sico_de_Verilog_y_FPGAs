//Multiplexor 2 to 1
module example_combinational_multiplexor(input wire sel, input wire [7:0] a, input wire [7:0] b, output reg [7:0] y);
    always @* begin
        if (sel)
            y = a;
        else
            y = b;
    end
endmodule