module DFFnand (
    input clk,
    input d,
    output q,
    output qnot
);
wire w1;
wire w2;

assign w1=~(d&clk);
assign w2=~(!d&clk);
assign q= ~(qnot&w1);
assign qnot=~(q&w2);    
endmodule