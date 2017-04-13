module ALU(zero,result,aluCtrl,input1,input2);
input [3:0]aluCtrl;
input [31:0] input1,input2;
output reg [31:0] result;
output reg zero;
always@(aluCtrl or input1 or input2)
begin
 zero <= !(input1-input2)?1:0;
 case(aluCtrl)
 4'b 0000: result<= input1 && input2;
 4'b 0001: result<= input1 || input2;
 4'b 0010: result<= input1 + input2;
 4'b 0011: result<= input1 - input2;
 4'b 0100: result<= input1 << input2;
 4'b 0101: result<= input1 >> input2;
 4'b 0110: result<= (input1<input2)?1:0;
endcase
end
endmodule
