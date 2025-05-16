module decoder_3_to_8(input [2:0] y, output reg [7:0] D );
always @(y) begin
    case(y)
        3'b000: D = 8'b00000001; // D0 = 1
        3'b001: D = 8'b00000010; // D1 = 1
        3'b010: D = 8'b00000100; // D2 = 1
        3'b011: D = 8'b00001000; // D3 = 1
        3'b100: D = 8'b00010000; // D4 = 1
        3'b101: D = 8'b00100000; // D5 = 1
        3'b110: D = 8'b01000000; // D6 = 1
        3'b111: D = 8'b10000000; // D7 = 1
        default: D = 8'b00000000; // Default case
    endcase
end

endmodule
