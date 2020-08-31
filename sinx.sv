module sinx(input [15:0]Sreg,Xbus,input clk,rst,ldS,initS,output logic[15:0]Result);
always@(posedge clk,posedge rst) begin
if(rst) Result <=16'b0; else begin
if(initS) Result<=Xbus;
else if (ldS) Result <=Sreg;
end
end
endmodule
