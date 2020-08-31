module xreg(input clk,rst,ldx,input [15:0]Xbus,output logic [15:0]data);
always@(posedge clk,posedge rst) begin
if (rst) data <=16'b0;
else if(ldx)  data <=Xbus;
end
endmodule
