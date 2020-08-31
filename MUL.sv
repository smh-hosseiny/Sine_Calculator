module MUL(input [15:0]M1,M2,output [15:0]Mresult);
wire [32:0]M;
assign M=M1*M2;
assign Mresult[15:0]=M[23:8];
endmodule
