module logicgate_tb();
reg a;
reg b;
wire y1;
wire y2;
wire y3;
wire y4;
wire y5;
wire y6;
wire y7;
wire y8;

logicgate uut(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7),.y8(y8));

initial begin
    $dumpfile("logicgate.vcd");
    $dumpvars(0,logicgate_tb);
    a=0;b=0;#10;
    $display ("a=%b, b=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b, y8=%b",a,b,y1,y2,y3,y4,y5,y6,y7,y8);
    a=0;b=1;#10;
    $display ("a=%b, b=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b, y8=%b",a,b,y1,y2,y3,y4,y5,y6,y7,y8);
    a=1;b=0;#10;
    $display ("a=%b, b=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b, y8=%b",a,b,y1,y2,y3,y4,y5,y6,y7,y8);
    a=1;b=1;#10;
    $display ("a=%b, b=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b, y8=%b",a,b,y1,y2,y3,y4,y5,y6,y7,y8);
end
endmodule
