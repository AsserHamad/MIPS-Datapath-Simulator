module test();
reg clk;
reg [3:0] aluCtrl;
reg [31:0] input1,input2;
wire zero;
wire [31:0]result;

initial
begin
  clk =0;
end

ALU test(zero,result,aluCtrl,input1,input2,clk);

always
  #5 clk = !clk;

initial
fork
  #5 input1=5;
  #5 input2=50;
  #5 aluCtrl= 4'b0010;
  #10 input1=8;
  #10 input2=1;
  #10 aluCtrl= 4'b0101;
  #100 $finish;
join

initial
begin
  $monitor("input1=%d, input2=%d , aluCtrl=%b, result=%d",input1,input2,aluCtrl,result);
end
endmodule
