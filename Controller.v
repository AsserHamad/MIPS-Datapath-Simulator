module Controller(regDst,branch,memRead,memtoReg,
aluOp,memWrite,aluSrc,regWrite,instruction,clk);
output reg regDst,branch,memRead,memtoReg,
aluSrc,memWrite,regWrite;
  output reg [2:0]aluOp;
input[5:0] instruction ;
  input clk;
always@(posedge clk)
begin
 case(instruction)
  6'b000000: begin regDst <=1; //R-Format
             branch <= 0;
             memRead <=0;
             memtoReg <=0;
             memWrite <=0;
             aluSrc <=0;
             regWrite <=1;
             aluOp<=3'b010;
  end
 6'b000100:  begin branch<=1; //BEQ
              memRead<=0;
              memWrite<=0;
              aluSrc<=0;
              regWrite<=0; aluOp<=3'b001;end
6'b000101: begin branch<=1; //BNE
            memRead<=0;
            memWrite<=0;
            aluSrc<=0;
            regWrite<=0; aluOp<=3'b111;end
6'b001000: begin regDst<=0; //ADDI
            branch<=0;
            memRead<=0;
            memtoReg<=0;
            memWrite<=0;
            aluSrc<=1;
            regWrite<=1; aluOp<=3'b101;end
6'b001100: begin regDst<=0; //ANDI
            branch<=0;
            memRead<=0;
            memtoReg<=0;
            memWrite<=0;
            aluSrc<=1;
            regWrite<=1; aluOp<=3'b100;end
6'b100011: begin regDst<=0; //ORI
            branch<=0;
            memRead<=0;
            memtoReg<=0;
            memWrite<=0;
            aluSrc<=1;
            regWrite<=1;
             aluOp<=3'b110; end
6'b001101: begin regDst<=0; //LW
            branch<=0;
            memRead<=1;
            memtoReg<=1;
            memWrite<=0;
            aluSrc<=1;
            regWrite<=1;
 			aluOp<=3'b000;
			end
6'b101011: begin branch<=0; //SW
            memRead<=0;
            memWrite<=1;
            aluSrc<=1;
            regWrite<=0;
            aluOp<=3'b000; end

 endcase
end
endmodule
