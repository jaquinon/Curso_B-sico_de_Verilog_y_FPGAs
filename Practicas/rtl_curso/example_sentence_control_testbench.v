module example_sentence_control_testbench;

reg [7:0] a, b;
wire [7:0] out;

example_sentence_control dut(.a(a), .b(b), .out(out));

initial begin
   
    
    a = 8'b00000001;
    b = 8'b00000010;
    
    #10;
    
    a = 8'b00000100;
    b = 8'b00001000;
    
    #10;
    
    $finish;
end

endmodule
