module cpu(regX, regY, regZ, tx, ty, tz, tula, clk, pos, func, value);

	input wire clk;
	output wire [3:0] regX, regY, regZ, tx, ty, tz, tula, tula, pos, func, value;

	wire [3:0] out;

	memory vMEMORY(pos, func, value);
	ula vULA(regY, regX, tula, out);
	controller vCONTROLLER(func, clk, tx, ty, tz, tula);
	register vREGISTERX(value, tx, clk, regX);
	register vREGISTERY(out, ty, clk, regY);
	register vREGISTERZ(regY, tz, clk, regZ);
	counter vCOUNTER(clk, pos);

endmodule