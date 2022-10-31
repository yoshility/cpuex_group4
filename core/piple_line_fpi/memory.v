`default_nettype none
module  memory_order
 (input wire [31:0] a,
  output wire [31:0] rd);
  reg [31:0] RAM[63:0];
  initial
   $readmemh("a.mem",RAM,32'b00000000000000000000000000000000,32'b00000000000000000000000000010101);  
  assign rd = RAM[a[7:2]];
endmodule

module data_memory 
      (input wire clk,
      input wire we,
      input wire [31:0] a,
      input wire [31:0] wd,
      output wire [31:0] rd);
      reg [31:0] RAM[63:0];
      assign rd = RAM[a[7:2]];
      always @(posedge clk) begin
        if (we) begin 
          RAM[a[7:2]] <= wd;
         end
      end
endmodule

