module DFFmux(
    input clk,
    input d,
    output q,
    output qnot
);

assign q = clk ? d:q;
assign qnot = !q;

endmodule 
