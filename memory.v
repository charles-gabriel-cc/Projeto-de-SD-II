module memory(selector, func, value);

	input wire [4:0] selector;
	output reg [4:0] func, value;
	
	parameter
	A = 5,
	B = 3,
	
    // Comandos
	CLEARLD = 4'b0000,
	ADDLD = 4'b0001,
	ADD = 4'b0010,
	SHTR = 4'b0011,
	DISP = 4'b0100;
	
	always begin
		case(selector)
			CLEARLD: begin
				func <= 0;
				value <= A;
			end
			ADDLD: begin
				func <= 1;
				value <= B;
			end
			ADD: begin
				func <= 2;
				value <= 0;
			end
			SHTR: begin
				func <= 3;
				value <= 0;
			end
			DISP: begin
				func <= 4;
				value <= 0;
			end
		endcase
	end

endmodule