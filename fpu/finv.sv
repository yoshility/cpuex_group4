`default_nettype none


module finv_table (
	input		wire [ 9:0]	addr;
	input 	wire 				clk;
	input 	wire 				rstn;
	output	reg  [35:0] dout;
);
	(*ram_style = "BLOCK"*) logic [55:0] ram [1023:0];
	always @(posedge clk) begin
		dout <= ram[addr];
	end

	initial begin

	end
endmodule

`default_nettype wire