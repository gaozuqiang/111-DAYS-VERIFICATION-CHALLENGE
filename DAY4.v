module ringcounter(
    input clk,
    input reset,
    output reg [3:0]q
);

always @( posedge clk or posedge reset) begin
    if (reset) begin
        q<=4'b1000;
    end
    else begin
        q<={q[0],q[3:1]};
    end
end
endmodule

module johnsoncounter(
    input clk,
    input reset,
    output reg [3:0]q1
);

always @( posedge clk or posedge reset) begin
    if (reset) begin
        q1<=4'b0000;
    end
    else begin
        q1<={~q1[0],q1[3:1]};
    end
end
endmodule

module dffripplecounter(
    input clk,
    input reset,
    input d,
    output reg q2,
    output reg q2n
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        q2<=0;
        q2n<=1;
    end
    else begin
        q2<=d;
        q2n<=~d;
    end
end 

endmodule

module ripplecounter(
    input clk,
    input reset,
    output [2:0] q2out
);
wire y0;
wire yn0;
wire y1;
wire yn1;
wire y2;
wire yn2;

dffripplecounter dff0(.clk(clk), .reset(reset), .d(~y0), .q2(y0), .q2n(yn0));
dffripplecounter dff1(.clk(~y0), .reset(reset), .d(~y1), .q2(y1), .q2n(yn1));
dffripplecounter dff2(.clk(~y1), .reset(reset), .d(~y2), .q2(y2), .q2n(yn2));

assign q2out ={y2,y1,y0};
endmodule


module decadecounter(
    input clk,
    input reset,
    output reg [3:0] q3
);
always @(posedge clk or posedge reset) begin
    if(reset | q3==4'b1001) begin
        q3<=4'b0000;
    end
    else begin
        q3<=q3+1'b1;
    end
end

endmodule