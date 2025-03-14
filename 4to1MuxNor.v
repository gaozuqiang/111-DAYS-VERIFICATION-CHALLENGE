module muxNor(
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

assign not_s0 = ~(s0|s0);
assign not_s1 = ~(s1|s1);

assign y1 = ~(~(a|a)|~(not_s0|not_s1));
assign y2 = ~(~(b|b)|~(not_s0|s1));
assign y3 = ~(~(c|c)|~(s0|not_s1));
assign y4 = ~(~(d|d)|~(s0|s1));

assign y =~(~(y1|y2)|~(y3|y4));
endmodule