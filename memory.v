module memory(read,memWrite,memRead,address,write);

output reg [31:0] read;

input [31:0] address;
input write;
input memRead;
input memWrite;

reg [31:0] regs;

always(@posedge clk)
begin
  if(memWrite)
    regs[address]<=write;
  if(memRead)
    read<=regs[address];
end
endmodule
