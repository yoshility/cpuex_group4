//`default_nettype none
module uart_loopback #(CLK_PER_HALF_BIT = 260 ) (
             //input wire  rxd,
             output logic txd,
             input wire [31:0] core_data,
             //output logic [7:0] send_data,
             input wire core_data_ready,
             input wire  clk,
             input wire  rstn);
   logic [7:0]             data;
   logic [5:0] data_count;
   logic [5:0] position_count;
   logic               data_valid;
   //wire [7:0]            rdata;
   logic               tx_start;
   //wire              rx_ready;
   wire              tx_busy;
   logic tx_ready;
   //wire              ferr;
   logic [31:0] data_buf [63:0];
   logic [1:0] position; 
   uart_tx #(CLK_PER_HALF_BIT) u1(data, tx_start, tx_busy, txd, clk, rstn);//data is input
   //uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);//rdataはoutput
   always @(posedge clk) begin
      if (~rstn) begin
        data <= 8'b0;
        data_valid <= 1'b0;
        tx_start <= 1'b0;
        data_count <= 6'b0;
        position_count <= 6'b0;
        position <= 2'b00;
      end 
      else begin
        if (core_data_ready) begin
            data_buf[data_count] <= core_data;
            data_count <= data_count + 6'd1;
        end if ( ~tx_busy && ~data_valid && position_count < data_count) begin
            data_valid <= 1'b1;
            if (position == 2'b00) begin
              data <= data_buf[position_count][7:0];
              position <= 2'b01;
            end 
            if (position == 2'b01) begin
              data <= data_buf[position_count][15:8];
              position <= 2'b10;
            end
            if (position == 2'b00) begin
              data <= data_buf[position_count][23:16];
              position <= 2'b11;
            end
            if (position == 2'b00) begin
              data <= data_buf[position_count][31:24];
              position <= 2'b00;
            end
        end if (~tx_busy && data_valid) begin
            tx_start <= 1'b1;
            
        end if (tx_start) begin
            data_valid <= 1'b0;
            position_count <= position_count + 6'b1;
            tx_start <= 1'b0;
        end
      end
   end

endmodule
//`default_nettype wire