module Yreg(input [7:0]Yin,input clk,rst,ldy,output  logic [7:0]y);
always@(posedge clk,posedge rst) begin
if(rst) y <=8'b0; else 
if (ldy) y <=Yin;
end
endmodule
