`timescale 1ns/1ns
module CU(input clk,rst,compared,start,output logic initTerm,initS,ldx,ldterm,ldy,ldS,sel_Mul,AorS,ready,output logic[2:0] cnt);

logic cout,cen,initc;

typedef enum{Idle,Init,Load,M1,M2,M3,compare,AddorSub} states;
states  p_state,n_state; 

always @(start,p_state,cout) begin

n_state = Idle;
{initTerm,initS,ldx,ldterm,ldy,ldS,sel_Mul,AorS,ready}=9'b0;


case(p_state)

 Idle : begin
 n_state=(start) ? Init : Idle;  ready=1;
 end
 
 
 Init : begin
 n_state=(start) ? Init : Load;  initc=1;initS=1;initTerm=1;
 end
 
 
 Load : begin
 n_state=M1;            ldx=1;ldy=1; 
 end
 
 M1 :  begin 
 n_state=M2;          ldterm=1;sel_Mul=1;cen=1;
 end
 
	
 M2 : begin           ldterm=1;sel_Mul=1;
 n_state=M3;
end


M3 : begin           ldterm=1;sel_Mul=0;
n_state=compare;
end


compare : begin
n_state=(compared) ? Idle : AddorSub;
end


AddorSub : begin
n_state=(cout) ? Idle : M1 ;   ldS=1;AorS=cnt[0];
end
endcase
end


 always@(posedge clk,posedge rst) begin
 if(rst) p_state <=Idle; else 
 p_state <= n_state;
 end 
 
  
always @(posedge clk,posedge rst) begin
  if(rst) cnt <=3'b000; else begin
    if(initc) cnt <=3'b000; else
      if(cen) cnt <= cnt + 1 	;
      end
   end
   assign cout=&cnt;
 
 
 endmodule
 