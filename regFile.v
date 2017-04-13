module regFile(readData1,readData2,readRegister1,
               readRegister2,writeRegister,writeData,
               clk,regWrite);

output reg [31:0] readData1;
output reg [31:0] readData2;

input [5:0] readRegister1;
input [5:0] readRegister2;
input [4:0] writeRegister;
input [31:0] writeData;
input clk;
input regWrite;

reg [31:0] registers[0:31];

always@(posedge clk)
begin
  readData1 <= registers[readRegister1];
  readData2 <= registers[readRegister2];
  if(regWrite)
    registers[writeRegister] <= writeData;
end
endmodule
