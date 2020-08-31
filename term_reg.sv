module term_reg(input clk,rst,ldterm,initT,input[15:0]indata,Xbus,output logic[15:0]outdata);
always@(posedge clk,posedge rst) begin
if (rst) outdata<=16'b0; else begin
if(initT) outdata <=Xbus; else
if (ldterm) outdata<=indata;
end
end
endmodule
