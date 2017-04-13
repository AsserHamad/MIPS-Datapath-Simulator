module mem(read,clk,memWrite,memRead,address,write);

output reg [31:0] read;

input [31:0] address;
input write;
input clk;
input memWrite;
input memRead;

reg [31:0] regs;

always@(posedge clk)
begin
  if(memWrite)
    regs[address]<=write;
  if(memRead)
    read<=regs[address];
end
endmodule
