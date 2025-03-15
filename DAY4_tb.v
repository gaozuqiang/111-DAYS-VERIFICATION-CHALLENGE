module day4_tb();
reg clk;
reg reset;
wire [3:0] q;
wire [3:0] q1;
wire [2:0] q2out;
wire [3:0] q3;

ringcounter ring(.clk(clk),.reset(reset),.q(q));
johnsoncounter johnson(.clk(clk),.reset(reset),.q1(q1));
ripplecounter ripple(.clk(clk),.reset(reset),.q2out(q2out));
decadecounter decade(.clk(clk),.reset(reset),.q3(q3));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    $dumpfile("DAY4.vcd");
    $dumpvars(0,day4_tb);
    $monitor("time=%t | clk=%b| q=%b| q1=%b| q2out=%b| q3=%b", $time,clk,q,q1,q2out,q3);
    reset=1;#10;
    reset=0;
    #200;
    $finish;
end
endmodule