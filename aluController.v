module main(result,func,aluOp,clk);
output reg [3:0]result;
input [5:0]func;
input [2:0]aluOp;
input clk;

always@(posedge clk)
case (aluOp)
3'b010: begin
        case (func)
        6'b100000:result<=4'b0010;
        6'b100010:result<=4'b0011;
        6'b000000:result<=4'b0100;
        6'b000010:result<=4'b0101;
        6'b100100:result<=4'b0000;
        6'b100101:result<=4'b0001;
        6'b101010:result<=4'b0110;
           endcase
           end
3'b101:result<=4'b0010;
3'b100:result<=4'b0000;
3'b110:result<=4'b0001;
3'b001:result<=4'b0011;
3'b111:result<=4'b0011;

endcase
endmodule
