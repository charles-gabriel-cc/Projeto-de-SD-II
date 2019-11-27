module register(A, selector, clk, out);

	input wire [4:0] A, selector;
	input wire clk;
	output reg [4:0] out;

	parameter
	HOLD = 4'b0000,
	LOAD = 4'b0001,
	SHIFTR = 4'b0010,
	SHIFTL = 4'b0011,
	CLEAR = 4'b0100;
	
	always @ (negedge clk) begin
		case (selector)
			LOAD: out <= A;            // Carrega o valor
			SHIFTR: out <= out >> 1;   // Divide o valor por 2
			SHIFTL: out <= out << 1;   // Multiplica por 2
			CLEAR: out <= 4'b0000;     // Zera o valor
		endcase
	end
	
endmodule