`include "defines.v"

module regfile(
	input	wire			clk,
	input	wire			rst,
	input	wire[`BYTE]		srcA,
	input	wire[`BYTE]		srcB,
	output	reg[`WORD]		valA,
	output	reg[`WORD]		valB
);

reg[`WORD]	regs[0:`REGNUM-1];

	initial regs[0] <= 32'H01234567;
	initial regs[1] <= 32'H23456789;
	initial regs[2] <= 32'H3456789A;
	initial regs[3] <= 32'H456789AB;
	initial regs[4] <= 32'H56789ABC;
	initial regs[5] <= 32'H6789ABCD;
	initial regs[6] <= 32'H789ABCDE;
	initial regs[7] <= 32'H89ABCDEF;

	always @ (*) begin
		if(srcA != `NOREG) begin
			valA <= regs[srcA];
		end
	end

	always @ (*) begin
		if(srcB != `NOREG) begin
			valB <= regs[srcB];
		end
	end

endmodule