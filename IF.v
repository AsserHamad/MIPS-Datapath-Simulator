module IF (out,pc,clk);

output reg [31:0] out;
input [31:0] pc;
input clk;

reg [31:0] regs[0:31];

always@(posedge clk)
begin
  out<= regs[pc];
end
endmodule
