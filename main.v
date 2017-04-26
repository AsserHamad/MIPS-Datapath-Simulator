module main ();

reg [31:0] fetchMem[0:31];
reg [31:0] dataMem[0:31];
wire [31:0] pcInput;

mux pcMux(pcInput,PCSrc,pcInc,pcBranch);


endmodule
