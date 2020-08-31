`timescale 1ns/1ns
module counter(input clk,rst,initc,Cen,output cout,output[2:0]Cnt);
always @(posedge clk,posedge rst) begin
  if(rst) Cnt <=3'b000; else begin
    if(initc) Cnt <=3'b000; else
      if(Cen) Cnt <= Cnt + 1 	;
      end
   end
   assign cout=&Cnt;
 endmodule
 