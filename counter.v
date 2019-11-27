module counter(clk, value);

	input wire clk;
	output reg [4:0] value;
	
	parameter
	ZERO = 4'b0000, // Começo do relogio
	MAX = 4'b1111;  // Fim do relogio
	
	initial begin
		value <= ZERO;
	end
	
	always @ (negedge clk) begin // LOOP
		if(value == MAX) begin
			value <= 4'b0000;
		end else begin
			value <= value + 4'b0001;
        end
	end

endmodule