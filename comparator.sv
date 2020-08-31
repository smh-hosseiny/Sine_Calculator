module comparator(input [15:0]term,input [7:0]y,output compared);

assign compared=term < {8'b0,y};

endmodule
