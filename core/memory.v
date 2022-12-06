`default_nettype none
module  memory_order
 (input wire [31:0] a,
  output wire [31:0] rd,
  input wire [31:0] pro_data,
  input wire [31:0] pro_addr, 
  input wire memwrite,
  input wire clk);
  //(* ram_style = "block"*)
  reg [31:0] RAM [63:0];

  always @(posedge clk) begin
        if (memwrite) begin 
          RAM[pro_addr[7:2] - 6'd1] <= pro_data;
         end
      end
  assign rd = RAM[a[7:2]];
endmodule

module data_memory 
      (input wire clk,
      input wire we,
      input wire [31:0] a,
      input wire [31:0] wd,
      output wire [31:0] rd);
      reg [31:0] RAM [63:0];
      assign rd = RAM[a[7:2]];
      always @(posedge clk) begin
        //RAM[0] <= 32'b1;
        //RAM[2] <= 32'h10203040;
        if (we) begin 
          RAM[a[7:2]] <= wd;
         end
      end
endmodule

  /*initial begin 
    RAM[5'b0] <= 32'b000000000000_00001_010_00100_0000111;
    RAM[5'd1] <= 32'h00500113;
    RAM[5'd2] <= 32'b000000000000_00110_000_00100_0000011;
    RAM[5'd5] <= 32'h00500113;
    RAM[5'd3] <= 32'h00500113;
    RAM[5'd4] <= 32'h00500113;    
    RAM[5'b0] <= 32'h00400513;
    RAM[5'd1] <= 32'h008000EF;
    RAM[5'd2] <= 32'h00008067;
    RAM[5'd3] <= 32'h00100293;
    RAM[5'd4] <= 32'h00A2C663;
    RAM[5'd5] <= 32'h00050513;
    RAM[5'd6] <= 32'h00008067;
    RAM[5'd7] <= 32'hFF810113;
    RAM[5'd8] <= 32'h00A12023;
    RAM[5'd9] <= 32'h00112223;
    RAM[5'd10] <= 32'hFFF50513;
    RAM[5'd11] <= 32'hFE1FF0EF;
    RAM[5'd12] <= 32'h00012283;
    RAM[5'd13] <= 32'h00A12023;
    RAM[5'd14] <= 32'hFFE28513;
    RAM[5'd15] <= 32'hFD1FF0EF;
    RAM[5'd16] <= 32'h00012283;
    RAM[5'd17] <= 32'h00550533;
    RAM[5'd18] <= 32'h00412083;
    //RAM[5'd19] <= 32'b0000000_00000_000_10000_0010011;
    RAM[5'd19] <= 32'h00810113;
    RAM[5'd20] <= 32'h00008067;
  */