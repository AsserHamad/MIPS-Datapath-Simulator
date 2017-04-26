module test_1();
reg clk;

wire [31:0] read;
reg [31:0] address;
reg write;
reg memRead;
reg memWrite;

initial
begin
  clk = 0;
  end

mem test(read,clk,memWrite,memRead,address,write);

always
  #5 clk = !clk;

initial
fork
  #5 memWrite = 0;
  #5 memRead = 1;
  #5 write = 0;
  #5 address = 5;
  #10 memWrite = 1;
  #10 memRead = 0;
  #10 write = 7;
  #10 address = 5;
  #15 memWrite = 0;
  #15 memRead = 1;
  #15 write = 0;
  #15 address = 5;
join

initial
begin
  $monitor("memWrite:%d  memRead:%d  write:%d  address:%d  read:%d",memWrite,memRead,write,address,read);
end
endmodule
