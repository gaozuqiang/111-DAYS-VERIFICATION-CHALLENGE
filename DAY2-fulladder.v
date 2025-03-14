module fulladder(
    input a,b,cin,
    output cout,sum
);
wire half_sum;
wire half_cout;
assign half_cout=a&b;
assign half_sum=a^b;
assign sum=cin^half_sum;
assign cout=((half_sum&cin) | half_cout);
endmodule
