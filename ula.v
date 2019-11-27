module ula(A, B, selector, out);

	input wire [4:0] A, B, selector;
	output reg [4:0] out;
	
	always begin
        out <= A + B;
    end

endmodule