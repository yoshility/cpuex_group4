`default_nettype none
 
module uart_loopback #(CLK_PER_HALF_BIT = 5208) (
		     input wire  rxd,
		     output wire txd,
			 input wire [1:0] sig_core,//コアからのシグナル
			 output wire [7:0] send_data,//コアへ送るデータ
		     input wire  clk,
		     input wire  rstn);

   reg [7:0] 			 data;
   reg 				 data_valid;
   wire [7:0] 			 rdata;
   reg 				 tx_start;
   wire 			 rx_ready;
   wire 			 tx_busy;
   wire 			 ferr;
   uart_tx #(CLK_PER_HALF_BIT) u1(data, tx_start, tx_busy, txd, clk, rstn);//data is input
   uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);//rdataはoutput
   always @(posedge clk) begin
      if (~rstn) begin
	 data <= 8'b0;
	 data_valid <= 1'b0;
	 tx_start <= 1'b0;
      end else begin
	 if (rx_ready) begin
		if (core_sig[1]) begin //init_complete
			data <= 8'b010101001;//0x99
		end
		else if (core_sig[0]) begin
			data <= 8'b01100110;
		end 
		data_valid <= 1'b1;
	 end
	else if (~tx_busy && data_valid) begin
	    tx_start <= 1'b1;
	end
	if (tx_start) begin
	    data_valid <= 1'b0;
	    tx_start <= 1'b0;
	 end
      end
   end
endmodule

`default_nettype wire
