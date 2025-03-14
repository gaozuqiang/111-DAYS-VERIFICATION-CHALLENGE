module fulladder_tb;
reg a,b,cin;
wire cout,sum;
integer i;

fulladder u0 (.a(a),.b(b),.cin(cin),.cout(cout),.sum(sum));

initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,fulladder_tb);
    {a,b,cin}=0;
    $monitor("T=%0t a=%0b b=%0b cin=%0b cout=%0b sum=%0b", 
    $time,a,b,cin,cout,sum);
    #10 a=0;b=0;cin=0;
    #10 a=0;b=1;cin=0;
    #10 a=0;b=1;cin=1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=1;cin=0;
    #10 a=1;b=1;cin=1;
    
end
endmodule