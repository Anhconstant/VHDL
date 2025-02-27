module decoder(addr,row_sel,nen);
input [2:0] addr ;
input nen;
output reg [7:0] row_sel ;
always @(*) begin
case (nen)
	1 : row_sel = 8'hFF;
	0 :begin 
	case(addr)
		3'b000 : row_sel = ~8'b00000001;
		3'b001 : row_sel = ~8'b00000010;
		3'b010 : row_sel = ~8'b00000100;
		3'b011 : row_sel = ~8'b00001000;
		3'b100 : row_sel = ~8'b00010000;
		3'b101 : row_sel = ~8'b00100000;
		3'b110 : row_sel = ~8'b01000000;
		3'b111 : row_sel = ~8'b10000000;
		default : row_sel = 8'b00000000;
	endcase
	end
endcase
end
endmodule
