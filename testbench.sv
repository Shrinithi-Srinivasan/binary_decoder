module tb_decoder_3_to_8;
reg [2:0] y;     
wire [7:0] D;    
decoder_3_to_8 uut (.y(y),.D(D));
initial begin
      $dumpfile("dumpfile.vcd");
    $dumpvars(1);
    $monitor("y = %b, D = %b", y, D);
    // Test case for y = 000
    y = 3'b000; #10;   
    // Test case for y = 001
    y = 3'b001; #10;    
    // Test case for y = 010
    y = 3'b010; #10;    
    // Test case for y = 011
    y = 3'b011; #10;   
    // Test case for y = 100
    y = 3'b100; #10;    
    // Test case for y = 101
    y = 3'b101; #10;    
    // Test case for y = 110
    y = 3'b110; #10;    
    // Test case for y = 111
    y = 3'b111; #10;
    $finish;
end
endmodule
