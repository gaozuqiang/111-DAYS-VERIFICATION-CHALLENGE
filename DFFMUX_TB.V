module DFFmux_tb;
reg clk;
reg d;
wire q;
wire qnot;

DFFmux DUT(.clk(clk), .d(d), .q(q),.qnot(qnot));

initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    $dumpfile("DFFMUX.vcd");
    $dumpvars(0,DFFmux_tb);
    $monitor("time=%t | clk=%b | d=%b | q=%b | qnot=%b", $time, clk, d, q, qnot);
    
    #5
    d=1;
    #5;
    d=0;
    #5;
    $finish;
    
end
endmodule