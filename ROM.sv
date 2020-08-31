module ROM(input[2:0]cnt,output logic[15:0]S);
always@(cnt) begin
 case(cnt) 

3'b000 : S<={8'b00000000,8'b00101010};// 1/6
3'b001 : S<={8'b00000000,8'b00001100};// 1/20
3'b010 : S<={8'b00000000,8'b00000110}; // 1/42
3'b011 : S<={8'b00000000,8'b00000011};// 1/72
3'b100 : S<={8'b00000000,8'b00000010};// 1/110
3'b101 : S<=16'b0000000000000000; //0
3'b110 : S<=16'b0000000000000000; //0
3'b111 : S<=16'b0000000000000000; //0
default : S<=16'b0000000100000000; //1
endcase
end
endmodule
