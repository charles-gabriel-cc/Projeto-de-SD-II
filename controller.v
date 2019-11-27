module controller(selector, clk, tx, ty, tz, tula);

	input wire [4:0] selector;
	input wire clk;
	output reg [4:0] tx, ty, tz, tula;
	
	parameter
    // Comandos
	mCLEARLD = 4'b0000,
	mADDLD = 4'b0001,
	mADD = 4'b0010,
	mSHTR = 4'b0011,
	mDISP = 4'b0100,
	
    // Comandos do registrador
	rHOLD = 4'b0000,
	rLOAD = 4'b0001,
	rSHIFTR = 4'b0010,
	rSHIFTL = 4'b0011,
	rCLEAR = 4'b0100,
	
    // Comandos da ULA
	uADD = 4'b0000;
	
	always begin
		case(selector)
			mCLEARLD: begin
				tx <= rLOAD;
				ty <= rCLEAR;
				tz <= rCLEAR;
				tula <= uADD;
			end
			mADDLD: begin
				tx <= rLOAD;
				ty <= rLOAD;
				tz <= rHOLD;
				tula <= uADD;
			end
			mADD: begin
				tx <= rHOLD;
				ty <= rLOAD;
				tz <= rHOLD;
				tula <= uADD;
			end
			mSHTR: begin
				tx <= rHOLD;
				ty <= rSHIFTR;
				tz <= rHOLD;
				tula <= uADD;
			end
			mDISP: begin
				tx <= rHOLD;
				ty <= rHOLD;
				tz <= rLOAD;
				tula <= uADD;
			end
		endcase
	end

endmodule