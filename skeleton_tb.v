`timescale 1 ns / 1 ns
module skeleton_tb;
	reg clk;
	reg rst;
	wire pc_clk, imem_clk, dmem_clk, regfile_clk;
	wire[4:0] r1, r2;
	wire[31:0] d1, d2, insn, w, di,doo;
	wire[11:0] iadd, am;
	skeleton test(clk, rst, imem_clk, dmem_clk, pc_clk, regfile_clk, iadd,insn, r1, d1, r2, d2,am,di,doo,w);
	integer i;
	always #10 clk = ~clk;
	initial begin
		
		clk <= 0;
		rst <= 0;
		for (i = 0; i < 240; i = i + 1) begin
			$display("pc: %d, insn: %b\nr1: %d, v1: %d\nr2: %d, v2: %d\nam: %d,  di: %d, doo: %d,  w: %d\n",iadd,insn, r1, d1, r2, d2,am, di,doo,w);
			#20;
		end
		$finish;
	end
endmodule