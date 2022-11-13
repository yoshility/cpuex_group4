`default_nettype none
module  memory_order
 (input wire [31:0] a,
  output wire [31:0] rd);
  reg [31:0] RAM[63:0];
  initial begin 
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
    RAM[5'd19] <= 32'h00810113;
    RAM[5'd20] <= 32'h00008067;
  end
   //$readmemh("a.mem",RAM,32'b00000000000000000000000000000000,32'b00000000000000000000000000010101);
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
        if (we) begin 
          RAM[a[7:2]] <= wd;
         end
      end
endmodule

