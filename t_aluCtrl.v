module t_aluCtrl();
reg clk;
wire [3:0]result;
reg [5:0]func;
reg [2:0]aluOp;


initial
begin
  clk = 0;
  end

aluController test(result,func,aluOp,clk);

always
  #5 clk = !clk;

initial
fork
  #5 aluOp =3'b110;
  #15 func=6'b101010;
  #15 aluOp = 3'b010;

join

initial
begin
  $monitor("aluOp%b  func:%b  result:%b",aluOp,func,result);
end
endmodule
