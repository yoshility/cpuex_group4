//`default_nettype none
module program_init (
        input wire clk,
        input wire rstn,
        input wire rxd,
        input wire controll,
        output logic program_fin,
        output  logic  [31:0] program_data,
        output logic [31:0] program_addr,
        output logic program_ready);
        wire [31:0] data_tmp;
        logic [7:0] rdata;
        logic status;
        logic [7:0] size_of_program;
        logic input_ready;
        logic data_ready;
        logic rdata_ready;
        logic ferr;
        logic input_start;
        uart_input_sub u1(rxd,data_tmp,1'b1,data_ready,clk,rstn,input_start);
        uart_rx u2 (rdata,rdata_ready,ferr,rxd,clk,rstn);
        always @(posedge clk) begin
                if (~rstn) begin
                  program_addr <= 32'b0;
                  program_data <= 32'b0;
                  status <= 1'b0;
                  size_of_program <= 0;
                  program_fin <= 1'b0;
                  input_start <= 1'b0;
                  program_ready <= 1'b0;
                end
                if (controll) begin
                  if(rdata_ready && status == 1'b0) begin
                    size_of_program <= rdata;
                    status <= 1'b1;
                    input_start <= 1'b1;
                  end
                  if (data_ready && status == 1'b1) begin
                    if (size_of_program > 0) begin
                      program_data <= data_tmp;
                      program_ready <= 1'b1;
                      program_addr <= program_addr + 25'd4;
                      size_of_program <= size_of_program - 7'd1;
                    end
                    else begin
                      program_fin <= 1'b1;
                    end
                  end
                  if (~data_ready) begin
                    program_ready <= 1'b0;
                  end
                end
                if (~controll && status) begin
                  status <= 1'b0;
                end
        end
endmodule

module uart_input_sub #(CLK_PER_HALF_BIT = 260) (
  input wire rxd,
  output logic [31:0] input_data_32,
  input wire input_ready,
  output logic data_ready,
  input wire clk,
  input wire rstn,
  input wire input_start);
  logic [7:0] rdata;
  logic [1:0] status;
  logic [31:0] data_buf;
  wire rx_ready;
  wire ferr;
  logic state;
  logic data_valid;
  uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);//rdataはoutput
  always @ (posedge clk) begin
    if (~rstn) begin
      status <= 2'b00;
      state <= 1'b0;
      data_buf <= 32'b0;
      data_ready <= 1'b0;
      data_valid <= 1'b0;
    end 
    else if (input_start) begin
      state <= 1'b1;
    end
    if (state == 1'b1) begin
      if (rx_ready) begin
        if (status == 2'b00) begin
          data_buf <= (data_buf << 32) + (rdata << 24);
          status <= 2'b01;
        end if (status == 2'b01) begin
          data_buf <= data_buf + (rdata << 16) ;
          status <= 2'b10;
        end if (status == 2'b10) begin
          data_buf <= data_buf + (rdata << 8);
          status <= 2'b11;
        end if (status == 2'b11) begin
          data_buf <= data_buf + rdata;
          status <= 2'b00;
          data_valid <= 1'b1;
        end
      end
      if (input_ready) begin
        if (data_valid) begin
          input_data_32 <= data_buf;
          data_ready <= 1'b1;
          data_valid <= 1'b0;
        end
        else begin 
          data_ready <= 1'b0;
        end
      end
    end
  end
endmodule 

module uart_input #(CLK_PER_HALF_BIT = 260) (
  input wire rxd,
  output logic [31:0] input_data_32,
  input wire input_ready,
  output logic data_ready,
  input wire clk,
  input wire rstn,
  input wire input_start);
  logic [7:0] rdata;
  logic [1:0] status;
  wire rx_ready;
  wire ferr;
  logic state;
  logic [4:0] data_count;
  logic [32*15-1:0] data_buf;
  logic [5:0] position_count;
  uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);//rdataはoutput
  always @ (posedge clk) begin
    if (~rstn) begin
      status <= 2'b00;
      data_buf <= 1023'b0;
      data_count <= 5'b0;
      data_ready <= 1'b0;
      position_count <= 6'b0;
    end 
    else if (input_start) begin
      state <= 1'b1;
    end
    if (state == 1'b1) begin
      if (rx_ready) begin
        if (status == 2'b00) begin
          data_buf <= data_buf + (rdata << (data_count * 32 + 24));
          status <= 2'b01;
        end if (status == 2'b01) begin
          data_buf <= data_buf + (rdata << (data_count * 32 + 16)) ;
          status <= 2'b10;
        end if (status == 2'b10) begin
          data_buf <= data_buf + (rdata << (data_count * 32 + 8));
          status <= 2'b11;
        end if (status == 2'b11) begin
          data_buf <= data_buf + (rdata << (data_count * 32));
          status <= 2'b00;
          data_count <= data_count + 1;
        end
      end
      if (input_ready ) begin
        if (data_count > position_count && data_count) begin
          input_data_32 <= (data_buf >> (position_count * 32));
          position_count <= position_count + 1;
          data_ready <= 1;
        end
        else begin 
          data_ready <= 1'b0;
        end
      end
    end
  end
endmodule 

module uart_output #(CLK_PER_HALF_BIT = 260 ) (
             output logic txd,
             input wire [31:0] core_data,
             input wire core_data_ready,
             input wire  clk,
             input wire  rstn,
             output logic [5:0] data_count);
   logic [7:0]  data;
   //logic [5:0] data_count;
   logic [5:0] position_count;
   logic               data_valid;
   //wire [7:0]            rdata;
   logic               tx_start;
   //wire              rx_ready;
   wire              tx_busy;
   logic tx_ready;
   //wire              ferr;
   logic [31*32-1:0] data_buf;
   logic [1:0] position; 
   uart_tx #(CLK_PER_HALF_BIT) u1(data, tx_start, tx_busy, txd, clk, rstn);//data is input
   logic data_come;
   always @(posedge clk) begin
      if (~rstn) begin
        data <= 8'b0;
        data_valid <= 1'b0;
        tx_start <= 1'b0;
        data_count <= 6'b0;
        position_count <= 6'b0;
        position <= 2'b00;
        data_buf <= 0;
        data_come <= 1'b0;
      end 
      else begin
        //data is ready
        if (core_data_ready) begin
            data_buf <= data_buf + (core_data << (32 * data_count));
            data_come <= 1'b1;
        end
        if (data_come) begin
            data_count <= data_count + 6'd1;
            data_come <= 1'b0;
        end if ( ~tx_busy && ~tx_start && position_count < data_count) begin
            data_valid <= 1'b1;
            if (position == 2'b00) begin
              data <= data_buf >> (position_count*32);
            end
            if (position == 2'b01) begin
              data <= data_buf >> (position_count*32 + 8);
            end
            if (position == 2'b10) begin
              data <= data_buf >> (position_count*32 + 16);//position_count*32 + 16];
            end
            if (position == 2'b11) begin
              data <= data_buf >> (position_count*32 + 24);//position_count*32 + 24];
            end
        end if (~tx_busy && data_valid) begin
            tx_start <= 1'b1;
        end if (tx_start) begin
            data_valid <= 1'b0;
            if (position == 2'b11) begin
              position_count <= position_count + 5'd1;
              position <= 2'b00;
            end else begin
              position <= position + 1;
            end
            tx_start <= 1'b0;
        end
      end
   end
endmodule
//`default_nettype wire