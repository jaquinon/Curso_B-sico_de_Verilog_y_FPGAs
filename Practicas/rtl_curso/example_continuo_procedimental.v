module example_continuo_procedimental(input wire a, input wire b, output reg y);
    // Asignación continua
   // assign y = a & b;

    // Asignación procedimental
    always @(*) begin
        if (a | b)
            y <= 1'b1;
        else
            y <= 1'b0;
    end
endmodule

