module decimaltoDCBencoder (
    input [9:0] decimal,
    output reg [3:0] dcb
);
always @(*) begin
    case(decimal)
    10'b0000000001: dcb = 4'b0000;
    10'b0000000010: dcb = 4'b0001;
    10'b0000000100: dcb = 4'b0010;
    10'b0000001000: dcb = 4'b0011;
    10'b0000010000: dcb = 4'b0100;
    10'b0000100000: dcb = 4'b0101;
    10'b0001000000: dcb = 4'b0110;
    10'b0010000000: dcb = 4'b0111;
    10'b0100000000: dcb = 4'b1000;
    10'b1000000000: dcb = 4'b1001;
    endcase
    
end
endmodule

module encoder8to3 (
    input [7:0] octal,
    output [2:0] binary
);

assign binary[0]=octal[7]|octal[5]|octal[3]|octal[1];
assign binary[1]=octal[7]|octal[6]|octal[3]|octal[2];
assign binary[2]=octal[7]|octal[6]|octal[5]|octal[4];
endmodule

module decoder3to8 (
    input [2:0] binary1,
    output [7:0] octal1
);

assign octal1[7] = binary1[0]&binary1[1]&binary1[2];
assign octal1[6] = binary1[1]&binary1[2];
assign octal1[5] = binary1[0]&binary1[2];
assign octal1[4] = binary1[2];
assign octal1[3] = binary1[0]&binary1[1];
assign octal1[2] = binary1[1];
assign octal1[1] = binary1[0];
assign octal1[0] = ~binary1;
endmodule

module priority_encoder_4to2 (
    input [3:0] in,  // 4-bit input
    output reg [1:0] y // 2-bit output (declared as reg)
);

always @(*) begin
    // Priority encoding logic
    if (in[3]) begin
        y = 2'b11; // Highest priority
    end 
    else if (in[2]) begin
        y = 2'b10; // Second priority
    end 
    else if (in[1]) begin
        y = 2'b01; // Third priority
    end 
    else if (in[0]) begin
        y = 2'b00; // Lowest priority
    end 
    else begin
        y = 2'b00; // Default case (optional)
    end
end

endmodule