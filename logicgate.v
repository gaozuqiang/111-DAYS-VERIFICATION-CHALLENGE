module logicgate(
input a,
input b,
output y1,
output y2,
output y3,
output y4,
output y5,
output y6,
output y7,
output y8
);

assign y1= ~(~(a|b)| ~(a|b)); //or gate using nor
assign y2 = ~(~(a|a)| ~(b|b)); //and gate using nor
wire temp;
assign temp = ~(a|b);
assign y3=~(~(a|temp)|~(b|temp)); //xor gate using nor
assign y4=~(a|a); //not gate using nor

assign y5 = ~(~(a&a)&~(b&b)); //or gate using nand 
assign y6 = ~(~(a&b)&~(a&b)); // and gate using nand
wire temp1;
assign temp1 = ~(a&b);
assign y7=~(~(a&temp1)&~(b&temp1)); // xor gate using nand
assign y8= ~(a&a); // not gate using nand



endmodule
