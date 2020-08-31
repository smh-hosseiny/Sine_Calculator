module Mux1(input[15:0]Rin,Xin,input sel,output [15:0]Mout);
assign Mout=(sel) ? Xin : Rin ;
endmodule
