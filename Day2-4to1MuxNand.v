module muxNand(
    input s0,
    input s1,
    input a,
    input b,
    input c,
    input d,
    output y
);

wire y1, y2, y3, y4;
wire not_s0,not_s1;

assign not_s0=~(s0&s0);
assign not_s1=~(s1&s1);

assign y1 = ~(a & not_s0 & not_s1); // Select a when s1=0, s0=0
assign y2 = ~(b & not_s0 & s1);  // Select b when s1=0, s0=1
assign y3 = ~(c & s0 & not_s1);  // Select c when s1=1, s0=0
assign y4 = ~(d & s0 & s1);    // Select d when s1=1, s0=1

assign y = ~(y1 & y2 & y3 & y4); // Combine intermediate signals using NAND logic

endmodule
