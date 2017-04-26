module mux(result,select,input1,input2);
output reg result;
input select,input1,input2;

always @ (select or input1 or input2)
begin
  if(select)
    result<=input2;

  else
    result<=input1;
end
endmodule
