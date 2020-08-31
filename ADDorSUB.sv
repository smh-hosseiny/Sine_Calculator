module ADDorSUB(input [15:0]S,input[15:0]T,input AorS,output [15:0]Sreg);
assign Sreg =(AorS) ? S-T : S+T ;
endmodule
