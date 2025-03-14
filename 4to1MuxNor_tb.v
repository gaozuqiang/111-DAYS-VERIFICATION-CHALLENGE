module muxNor_tb();
reg s0;
reg s1;
reg a;
reg b;
reg c;
reg d;
wire y;

muxNor uut(.s0(s0),.s1(s1),.a(a),.b(b),.c(c),.d(d),.y(y));

initial begin
    $dumpfile("muxNor.vcd");
    $dumpvars(0,muxNor_tb);
    $monitor("time=%t |a=%b | b=%b | c=%b |d=%b|y=%b",$time, a,b,c,d,y);
    a=1;b=0;c=0;d=0;s0=0;s1=0;
    #10;
    a=0;b=1;c=0;d=0;s0=0;s1=1;
    #10;
    a=0;b=0;c=1;d=0;s0=1;s1=0;
    #10;
    a=0;b=0;c=0;d=1;s0=1;s1=1;
    #10;
end
endmodule